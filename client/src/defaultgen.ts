import { SnippetString, CompletionItemKind, CompletionItem, Position, TextDocument } from 'vscode';
import * as fortsModFileContent from './data/mod.json';
import { getFilePath } from './utils';

export default function genDefault(documents: TextDocument, position: Position): CompletionItem {

	const filePath = getFilePath(documents);

	//console.log(filePath);

	if (filePath == 'mod.lua') {

		const snippet = new SnippetString(Object.keys(fortsModFileContent).map((k, i) => `\n${k} = \${${i + 1}:${fortsModFileContent[k]}}`).join('\n'));

		return {
			label: 'generate',
			kind: CompletionItemKind.Snippet,
			detail: 'Generate a default exemple for your file',
			insertText: snippet
		};

	}
}