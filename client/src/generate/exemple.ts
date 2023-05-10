import { SnippetString, CompletionItemKind, CompletionItem, Position, TextDocument, Range } from 'vscode';
import * as fortsModFileContent from '../data/mod.json';
import { getFilePath } from '../utils';

const mapping = {
	'mod.lua': 'mod.lua',
	'devices/device_list.lua': 'device_list.lua',
	'weapons/weapon_list.lua': 'weapon_list.lua',
	'weapons/projectile_list.lua': 'projectile_list.lua',
	'materials/building_materials.lua': 'building_materials.lua'
};

export default function genExemple(document: TextDocument, position: Position): CompletionItem {

	const filePath = getFilePath(document);
	//console.log(filePath);

	if (!mapping[filePath]) return;


	const wordRange = document.getWordRangeAtPosition(position);

	// eslint-disable-next-line @typescript-eslint/no-var-requires
	const data = require(`../data/exemples/${mapping[filePath]}`).default as string || 'error';
	//console.log(data);

	const snippet = new SnippetString(data);

	return {
		label: '#exemple',
		detail: 'Generate a default exemple for your file',
		insertText: snippet,
		kind: CompletionItemKind.Snippet,
		range: new Range(wordRange.start.translate(0, -1), wordRange.end),
	};
}