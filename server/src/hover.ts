import { HoverParams, MarkupContent, MarkupKind, TextDocuments } from 'vscode-languageserver';
import { TextDocument } from 'vscode-languageserver-textdocument';
import { getFunctionName } from './utils';
import * as fortsDocumentationAPI from './data.json';

export default function onHover(documents: TextDocuments<TextDocument>, {position, textDocument}: HoverParams) {

	if(!documents.get(textDocument.uri)?.getText().startsWith('--- forts script API ---')) return;

	const fonctionName = getFunctionName(documents, textDocument.uri, position.line, position.character).split('(')[0];

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
}