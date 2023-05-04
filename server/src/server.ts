/* --------------------------------------------------------------------------------------------
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License. See License.txt in the project root for license information.
 * ------------------------------------------------------------------------------------------ */
import {
	createConnection,
	TextDocuments,
	Diagnostic,
	DiagnosticSeverity,
	ProposedFeatures,
	InitializeParams,
	DidChangeConfigurationNotification,
	CompletionItem,
	CompletionItemKind,
	TextDocumentPositionParams,
	TextDocumentSyncKind,
	InitializeResult,
	SignatureHelp,
	MarkupContent,
	MarkupKind
} from 'vscode-languageserver/node';

import {
	TextDocument
} from 'vscode-languageserver-textdocument';

import * as fortsDocumentationAPI from './data.json';


// Create a connection for the server, using Node's IPC as a transport.
// Also include all preview / proposed LSP features.
const connection = createConnection(ProposedFeatures.all);

//console.log = connection.console.log.bind(connection.console);

// Create a simple text document manager.
const documents: TextDocuments<TextDocument> = new TextDocuments(TextDocument);

let hasConfigurationCapability = false;
let hasWorkspaceFolderCapability = false;
let hasDiagnosticRelatedInformationCapability = false;

connection.onInitialize((params: InitializeParams) => {
	const capabilities = params.capabilities;

	// Does the client support the `workspace/configuration` request?
	// If not, we fall back using global settings.
	hasConfigurationCapability = !!(
		capabilities.workspace && !!capabilities.workspace.configuration
	);
	hasWorkspaceFolderCapability = !!(
		capabilities.workspace && !!capabilities.workspace.workspaceFolders
	);
	hasDiagnosticRelatedInformationCapability = !!(
		capabilities.textDocument &&
		capabilities.textDocument.publishDiagnostics &&
		capabilities.textDocument.publishDiagnostics.relatedInformation
	);

	const result: InitializeResult = {
		capabilities: {
			textDocumentSync: TextDocumentSyncKind.Incremental,
			// Tell the client that this server supports code completion.
			completionProvider: {
				resolveProvider: true
			},
			hoverProvider: true,
			signatureHelpProvider: {
				triggerCharacters: ['(']
			}
		}
	};
	if (hasWorkspaceFolderCapability) {
		result.capabilities.workspace = {
			workspaceFolders: {
				supported: true
			}
		};
	}
	return result;
});

connection.onInitialized(() => {
	if (hasConfigurationCapability) {
		// Register for all configuration changes.
		connection.client.register(DidChangeConfigurationNotification.type, undefined);
	}
	if (hasWorkspaceFolderCapability) {
		connection.workspace.onDidChangeWorkspaceFolders(_event => {
			connection.console.log('Workspace folder change event received.');
		});
	}
});

// The example settings
interface ExampleSettings {
	maxNumberOfProblems: number;
}

// The global settings, used when the `workspace/configuration` request is not supported by the client.
// Please note that this is not the case when using this server with the client provided in this example
// but could happen with other clients.
const defaultSettings: ExampleSettings = { maxNumberOfProblems: 1000 };
let globalSettings: ExampleSettings = defaultSettings;

// Cache the settings of all open documents
const documentSettings: Map<string, Thenable<ExampleSettings>> = new Map();

connection.onDidChangeConfiguration(change => {
	if (hasConfigurationCapability) {
		// Reset all cached document settings
		documentSettings.clear();
	} else {
		globalSettings = <ExampleSettings>(
			(change.settings.languageServerExample || defaultSettings)
		);
	}

	// Revalidate all open text documents
	documents.all().forEach(validateTextDocument);
});

function getDocumentSettings(resource: string): Thenable<ExampleSettings> {
	if (!hasConfigurationCapability) {
		return Promise.resolve(globalSettings);
	}
	let result = documentSettings.get(resource);
	if (!result) {
		result = connection.workspace.getConfiguration({
			scopeUri: resource,
			section: 'languageServerExample'
		});
		documentSettings.set(resource, result);
	}
	return result;
}

// Only keep settings for open documents
documents.onDidClose(e => {
	documentSettings.delete(e.document.uri);
});

// The content of a text document has changed. This event is emitted
// when the text document first opened or when its content has changed.
documents.onDidChangeContent(change => {
	validateTextDocument(change.document);
});

async function validateTextDocument(textDocument: TextDocument): Promise<void> {
	// In this simple example we get the settings for every validate run.
	const settings = await getDocumentSettings(textDocument.uri);

	// The validator creates diagnostics for all uppercase words length 2 and more
	const text = textDocument.getText();
	const pattern = /\b[A-Z]{2,}\b/g;
	let m: RegExpExecArray | null;

	let problems = 0;
	const diagnostics: Diagnostic[] = [];
	while ((m = pattern.exec(text)) && problems < settings.maxNumberOfProblems) {
		problems++;
		const diagnostic: Diagnostic = {
			severity: DiagnosticSeverity.Warning,
			range: {
				start: textDocument.positionAt(m.index),
				end: textDocument.positionAt(m.index + m[0].length)
			},
			message: `${m[0]} is all uppercase.`,
			source: 'ex'
		};
		if (hasDiagnosticRelatedInformationCapability) {
			diagnostic.relatedInformation = [
				{
					location: {
						uri: textDocument.uri,
						range: Object.assign({}, diagnostic.range)
					},
					message: 'Spelling matters'
				},
				{
					location: {
						uri: textDocument.uri,
						range: Object.assign({}, diagnostic.range)
					},
					message: 'Particularly for names'
				}
			];
		}
		diagnostics.push(diagnostic);
	}

	// Send the computed diagnostics to VSCode.
	
	// just commented if we need it in the future
	//connection.sendDiagnostics({ uri: textDocument.uri, diagnostics });
}

connection.onDidChangeWatchedFiles(_change => {
	// Monitored files have change in VSCode
	connection.console.log('We received an file change event');
});

function getFunctionName(uri: string, line: any, pos: number) {
	const text = documents.get(uri)?.getText({
		start: { line: line, character: 0 },
		end: { line: line, character: 10000 }
	}) || '';

	return getWordAt(text, pos);
}

function getWordAt(string:string, char: number){
    const words = string.split(' ');

    let charIndex = 0;
    let i = 0;
    let last = '';
    while(charIndex < char){
        last = words[i] || '';
        charIndex += last.length + 1;
        i++;
    }

    return last;
}

connection.onSignatureHelp(
	({ textDocument, position }): SignatureHelp => {

		if(!documents.get(textDocument.uri)?.getText().startsWith('--- forts script API ---')) return {signatures : []};


		const fonctionName = getFunctionName(textDocument.uri, position.line, position.character)?.split('(')[0];
		if (fonctionName && Object.keys(fortsDocumentationAPI).includes(fonctionName)) {
			// eslint-disable-next-line @typescript-eslint/ban-ts-comment
			//@ts-ignore
			const data = fortsDocumentationAPI[fonctionName];

			const doc: MarkupContent = {
				kind: MarkupKind.Markdown,
				value:
					`### ${fonctionName}` + '\n' +
					data.description + '\n' +
					"```lua\n" + data.documentation[1] + "\n```"

			};
			return {
				signatures: [
					{
						label: data.documentation[0],
						documentation: doc
					}
				]
			};
		}
		return { signatures: [] };
	}
);

// This handler provides the initial list of the completion items.
connection.onCompletion(
	({textDocument, position}): CompletionItem[] => {
		if(!documents.get(textDocument.uri)?.getText().startsWith('--- forts script API ---')) return [];

		return Object.keys(fortsDocumentationAPI).map((k, i) => {
			return {
				label: k,
				kind: CompletionItemKind.Function,
				data: i
			};
		});
	}
);

connection.onHover(({position, textDocument}) => {

	if(!documents.get(textDocument.uri)?.getText().startsWith('--- forts script API ---')) return;

	const fonctionName = getFunctionName(textDocument.uri, position.line, position.character).split('(')[0];

	if (fonctionName && Object.keys(fortsDocumentationAPI).includes(fonctionName)) {
		// eslint-disable-next-line @typescript-eslint/ban-ts-comment
		//@ts-ignore
		const data = fortsDocumentationAPI[fonctionName];


		const doc: MarkupContent = {
			kind: MarkupKind.Markdown,
			value:
				`### ${fonctionName}` + '\n' +
				data.description + '\n' +
				"```lua\n" + data.documentation[1] + "\n```"
		};

		return {
			contents: doc,
		};
	}

	return null;
});

// This handler resolves additional information for the item selected in
// the completion list.
connection.onCompletionResolve(
	(item: CompletionItem): CompletionItem => {

		// eslint-disable-next-line @typescript-eslint/ban-ts-comment
		//@ts-ignore
		const functionData = fortsDocumentationAPI[Object.keys(fortsDocumentationAPI)[item.data]];

		item.detail = functionData.description;
		item.documentation = functionData.documentation[0];

		return item;
	}
);

// Make the text document manager listen on the connection
// for open, change and close text document events
documents.listen(connection);

// Listen on the connection
connection.listen();
