import { TextDocument, Position } from 'vscode';
import { getFunctionName, shouldActivate } from './utils';
import * as fortsDocumentationAPI from './data/functions.json';

export default function onSignatureHelp(documents: TextDocument, position: Position) {

	if(!shouldActivate(documents)) return;

	const fonctionName = getFunctionName(documents, position);

	//console.log(fonctionName);

	if (fonctionName && Object.keys(fortsDocumentationAPI).includes(fonctionName)) {
		// eslint-disable-next-line @typescript-eslint/ban-ts-comment
		//@ts-ignore
		const data = fortsDocumentationAPI[fonctionName];

		const doc = [
			`### ${fonctionName}`,
			data.description,
			"```lua\n" + data.documentation[1] + "\n```"
		].join('\n');

		const parameters = data.documentation[0].split('(').splice(1).join('').splice(0, -1).split(', ');

		return {
			signatures: [
				{
					label: data.documentation[0],
					documentation: doc,
					parameters: parameters,
				}
			],
			activeSignature: 1,
			activeParameter: 2,
		};
	}
	return null;
}