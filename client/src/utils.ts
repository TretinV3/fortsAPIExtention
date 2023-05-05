import { TextDocument, Position } from "vscode";


export function getFunctionName(document: TextDocument, position: Position) {
	const range = document.getWordRangeAtPosition(position);

	return document.getText(range);
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