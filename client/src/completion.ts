import * as fortsDocumentationAPI from './data/functions.json';
import { TextDocument, Position, CompletionItemKind, CompletionItem, extensions, SnippetString } from 'vscode';
import { shouldActivate } from './utils';
import * as fortsModFileContent from './data/mod.json';
import genExample from './generate/example';
import genDefault from './generate';

export default function onCompletion(document: TextDocument, position: Position): CompletionItem[] {

	if (!shouldActivate(document)) return;

	const completionList: CompletionItem[] = [];

	//const snippet = new SnippetString(Object.keys(fortsModFileContent).map((k, i) => `${k} = \${${i + 1}:${fortsModFileContent[k]}}`).join('\n'));

	const defaultResult = genDefault(document, position);
	if (defaultResult) completionList.push(defaultResult);

	const exampleResult = genExample(document, position);
	if (exampleResult) completionList.push(exampleResult);



	return completionList;
}

// export function onCompletionResolve(item: CompletionItem): CompletionItem {
// 	// eslint-disable-next-line @typescript-eslint/ban-ts-comment
// 	//@ts-ignore
// 	if (item.data.startWith('fn_')) {
// 		// eslint-disable-next-line @typescript-eslint/ban-ts-comment
// 		//@ts-ignore
// 		const functionData = fortsDocumentationAPI[Object.keys(fortsDocumentationAPI)[item.data]];

// 		item.detail = functionData.description;
// 		item.documentation = functionData.documentation[0];

// 		return item;
// 	}

// }