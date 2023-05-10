import path = require('path');
import { TextDocument, Position, Uri } from "vscode";


export function getFunctionName(document: TextDocument, position: Position) {
	const range = document.getWordRangeAtPosition(position);

	return document.getText(range);
}

export function shouldActivate(document: TextDocument){
    const isInFortModFolder = document.uri.path.includes('/Steam/steamapps/common/Forts/data/mods/');

    const startWithHashbang = document.getText().startsWith('--- forts API ---');

    return isInFortModFolder || startWithHashbang;
}

export function getWordAt(string:string, char: number){
    const words = string.split(' ');

    let charIndex = 0;
    let i = 0;
    let last = '';
    while(charIndex < char){
        last = words[i] || '';
        charIndex += last.length + 1;
        i++;
    }

    return last;
}

export function getFilePath(document: TextDocument){
    const secondPart = document.uri.path.split("/Steam/steamapps/common/Forts/data/mods/")[1];

    return secondPart.split('/').slice(1).join();
}