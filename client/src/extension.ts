

import * as path from 'path';
import { workspace, ExtensionContext, languages, extensions, commands, window } from 'vscode';

import onHover from './hover';
import onCompletion from './completion';
import onSignatureHelp from './signature';
import * as FortsFunctionAPI from "./data/functions.json";

export function activate(context: ExtensionContext) {

	const disposable = commands.registerCommand('forts.activate', () => {
		setExternalLibrary("fortsAPI", true);
		//setGlobal(Object.keys(FortsFunctionAPI));
		console.log('activated');
	});

	context.subscriptions.push(disposable);

	const genDefaultCommand = commands.registerCommand('forts.gendefault', (e) => {
		//setExternalLibrary("fortsAPI", true);
		//setGlobal(Object.keys(FortsFunctionAPI));
		console.log('gen', e);


	});

	context.subscriptions.push(genDefaultCommand);

	const hover = languages.registerHoverProvider(
		"lua",
		{
			provideHover: onHover
		}
	);

	// const signature = languages.registerSignatureHelpProvider(
	// 	"lua",
	// 	{
	// 		provideSignatureHelp: onSignatureHelp,
	// 	}
	// );

	const completion = languages.registerCompletionItemProvider(
		"lua",
		{
			provideCompletionItems: onCompletion,
			//resolveCompletionItem: onCompletionResolve,
		},
		"_",
		"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
		"N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
	);

	context.subscriptions.push(hover, completion);

	if (!extensions.getExtension('sumneko.lua')?.isActive) {
		window.showWarningMessage('Please use the Lua extention from sumneko.lua, it will be a lot better.');
	}
}


function setGlobal(globals: string[]) {
	const config = workspace.getConfiguration("Lua");
	config.update("workspace.library", globals, false);
}

export function setExternalLibrary(folder: string, enable: boolean) {
	// console.log("setExternalLibrary", folder, enable);
	const extensionId = "TretinV3.forts-api-extention";
	const extensionPath = extensions.getExtension(extensionId)!.extensionPath;
	// Use path.join to ensure the proper path seperators (\ for windows, / for anything else) are used.
	const folderPath = path.join(extensionPath, "fortsAPI");
	const config = workspace.getConfiguration("Lua");
	const library: string[] = config.get("workspace.library")!;
	// remove any older versions of our path e.g. "publisher.name-0.0.1"
	for (let i = library.length - 1; i >= 0; i--) {
		const el = library[i];
		const isSelfExtension = el.includes(extensionId);
		const isCurrentVersion = el.includes(extensionPath);
		if (isSelfExtension && !isCurrentVersion) {
			library.splice(i, 1);
		}
	}
	const index = library.indexOf(folderPath);
	if (enable) {
		if (index === -1) {
			library.push(folderPath);
		}
	}
	else {
		if (index > -1) {
			library.splice(index, 1);
		}
	}
	config.update("workspace.library", library, false);
}

export function deactivate(): Thenable<void> | undefined {
	// if (!client) {
	// 	return undefined;
	// }
	// return client.stop();
	return;
}