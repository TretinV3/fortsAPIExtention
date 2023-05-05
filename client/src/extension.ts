

import * as path from 'path';
import { workspace, ExtensionContext, languages, extensions, commands } from 'vscode';

import onHover from './hover';
import onCompletion, { onCompletionResolve } from './completion';
import onSignatureHelp from './signature';

//let client: LanguageClient;

export function activate(context: ExtensionContext) {
	// // The server is implemented in node
	// const serverModule = context.asAbsolutePath(
	// 	path.join('server', 'out', 'server.js')
	// );

	// // If the extension is launched in debug mode then the debug server options are used
	// // Otherwise the run options are used
	// const serverOptions: ServerOptions = {
	// 	run: { module: serverModule, transport: TransportKind.ipc },
	// 	debug: {
	// 		module: serverModule,
	// 		transport: TransportKind.ipc,
	// 	}
	// };

	// // Options to control the language client
	// const clientOptions: LanguageClientOptions = {
	// 	// Register the server for plain text documents
	// 	documentSelector: [{ scheme: 'file', language: 'lua' }],
	// 	synchronize: {
	// 		// Notify the server about file changes to '.clientrc files contained in the workspace
	// 		fileEvents: workspace.createFileSystemWatcher('**/.clientrc')
	// 	}
	// };

	// // Create the language client and start the client.
	// client = new LanguageClient(
	// 	'fortsAPILanguage',
	// 	'Forts API langage',
	// 	serverOptions,
	// 	clientOptions
	// );

	// // Start the client. This will also launch the server
	// client.start();

	const disposable = commands.registerCommand('forts.library', () => {
		setExternalLibrary("fortsAPI", true);
		console.log('activated');
	});

	context.subscriptions.push(disposable);

	const hover = languages.registerHoverProvider(
		"lua",
		{
			provideHover: onHover
		}
	);

	const completion = languages.registerCompletionItemProvider(
		"lua",
		{
			// restrict string matching to avoid polluting fuzzy completion
			provideCompletionItems: onCompletion,
			resolveCompletionItem: onCompletionResolve,
		},
		"_",
		// idk this feels ugly but it needs to trigger globalstring completion
		"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
		"N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
	);

	const signature = languages.registerSignatureHelpProvider(
		"lua",
		{
			provideSignatureHelp: onSignatureHelp,
		}
	);

	context.subscriptions.push(completion, hover, signature);
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