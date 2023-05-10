import { SnippetString, CompletionItemKind, CompletionItem, Position, TextDocument, Range } from 'vscode';
import * as fortsModFileContent from '../data/mod.json';
import { getFilePath, getWordAt } from '../utils';

export default function genDefault(document: TextDocument, position: Position): CompletionItem {

	const filePath = getFilePath(document);

	//console.log(filePath);

	const wordRange = document.getWordRangeAtPosition(position);
	if (filePath == 'mod.lua') {

		const snippet = new SnippetString(Object.keys(fortsModFileContent).map((k, i) => `${k} = \${${i + 1}:${fortsModFileContent[k]}}`).join('\n'));

		return {
			label: '#generate',
			detail: 'Generate a default exemple for your file',
			insertText: snippet,
			kind: CompletionItemKind.Snippet,
			range: new Range(wordRange.start.translate(0, -1), wordRange.end),
		};

	}
}


