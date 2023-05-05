import * as fortsDocumentationAPI from './data/functions.json';
import { TextDocument, Position, CompletionItemKind, CompletionItem } from 'vscode';
import { shouldActivate } from './utils';

export default function onCompletion(documents : TextDocument, position: Position) {

	if(!shouldActivate(documents)) return;

	return Object.keys(fortsDocumentationAPI).map((k, i) => {
		return {
			label: k,
			kind: CompletionItemKind.Function,
			data: k
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