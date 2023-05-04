import { CompletionItem, CompletionItemKind, CompletionParams, TextDocuments } from 'vscode-languageserver';
import { TextDocument } from 'vscode-languageserver-textdocument';
import * as fortsDocumentationAPI from './data.json';

export default function onCompletion(documents : TextDocuments<TextDocument>, {textDocument, position}: CompletionParams): CompletionItem[] {

	if(!documents.get(textDocument.uri)?.getText().startsWith('--- forts script API ---')) return [];

	return Object.keys(fortsDocumentationAPI).map((k, i) => {
		return {
			label: k,
			kind: CompletionItemKind.Function,
			data: i
		};
	});
}

export function onCompletionResolve(item: CompletionItem): CompletionItem {

	// eslint-disable-next-line @typescript-eslint/ban-ts-comment
	//@ts-ignore
	const functionData = fortsDocumentationAPI[Object.keys(fortsDocumentationAPI)[item.data]];

	item.detail = functionData.description;
	item.documentation = functionData.documentation[0];

	return item;
}