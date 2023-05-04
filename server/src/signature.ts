import { SignatureHelp, MarkupContent, MarkupKind, SignatureHelpParams, TextDocuments } from 'vscode-languageserver';
import { TextDocument } from 'vscode-languageserver-textdocument';
import { getFunctionName } from './utils';
import * as fortsDocumentationAPI from './data.json';

export default function onSignatureHelp(documents: TextDocuments<TextDocument>, { textDocument, position }: SignatureHelpParams): SignatureHelp {

	if(!documents.get(textDocument.uri)?.getText().startsWith('--- forts script API ---')) return {signatures : []};


	const fonctionName = getFunctionName(documents, textDocument.uri, position.line, position.character)?.split('(')[0];
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