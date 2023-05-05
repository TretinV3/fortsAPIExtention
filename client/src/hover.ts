import { getFunctionName, shouldActivate } from './utils';
import * as fortsDocumentationAPI from './data/functions.json';
import { Position, TextDocument, ProviderResult, Hover } from "vscode";


export default function onHover(documents: TextDocument, position: Position): ProviderResult<Hover> {

	if(!shouldActivate(documents)) return;

	const fonctionName = getFunctionName(documents, position);


	if (fonctionName && Object.keys(fortsDocumentationAPI).includes(fonctionName)) {
		// eslint-disable-next-line @typescript-eslint/ban-ts-comment
		//@ts-ignore
		const data = fortsDocumentationAPI[fonctionName];


		const doc = [
			`### ${fonctionName}`,
			data.description,
			"```lua\n" + data.documentation[1] + "\n```"
		];

		return {
			contents: doc,
		};
	}

	return null;
}