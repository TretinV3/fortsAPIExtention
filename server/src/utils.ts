import { TextDocuments } from 'vscode-languageserver';
import { TextDocument } from 'vscode-languageserver-textdocument';

export function getFunctionName(documents: TextDocuments<TextDocument>, uri: string, line: any, pos: number) {
	const text = documents.get(uri)?.getText({
		start: { line: line, character: 0 },
		end: { line: line, character: 10000 }
	}) || '';

	return getWordAt(text, pos);
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