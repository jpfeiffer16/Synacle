#!/usr/bin/env node

/*
  Rules
    Every contiguous set of chars separated by some whitespace can be assumed
    to be a byte.

    There will be three phases:
      1.) Parse file into an array of string symbols
      2.) A macro engine that will run and replace, and rearrange symbols as
          needed
      3.) The actual assembler wich will then iterate over that list and convert
          the symbols to the output binary.
*/

const fs = require('fs');
const path = require('path');
const stream = require('stream');
const VMem = require('../synvm/virtualMemoryLayer');
const instructions = require('../synvm/instructions')(VMem);

if (process.argv[2] === '-') {
  var text = '';
  process.stdin.on('data', data => {
    text += data;
  });
  process.stdin.on('end', () => {
    if (!text.length) {
      console.error("No data provided on stdin!");
      return;
    }
    var resultBuff = assemble(text);
    var strm = new stream.PassThrough();
    strm.pipe(process.stdout);
    strm.push(resultBuff);
  });
} else {
  const programName = path.normalize(process.argv[2]);

  const programPath = path.parse(programName);
  const outputPath = path.join(programPath.dir, `${ programPath.name }.bin`);
  
  fs.readFile(programName, 'utf8', (err, text) => {
    if (err) throw err;
    var resultBuff = assemble(text);
    // Write to output file
    fs.writeFile(outputPath, resultBuff, (err) => {
      if (err) throw err;
  
      console.log(`Assembly done. File: ${ outputPath }`);
    });
  });
}




function assemble(text) {
  let symbols = parseText(text);

  // Preprocessor

  //   Import pass
  for (let index = 0; index < symbols.length; index++) {
    symbol = symbols[index];
    if (symbol && symbol.length) {
      if (symbol[0] === '$') {
        const libCode = fs.readFileSync(
          path.join(
            programPath.dir,
            symbol.replace('$', '')
          ),
          'utf8'
        );
        const libSymbols = parseText(libCode);
        const currentSymbols = symbols;
        symbols = currentSymbols.slice(0, index).concat(libSymbols).concat(currentSymbols.slice(index + 1));
        index += libSymbols.length - 1;
      }
    }
  }

  //   Character substitution pass
  symbols.forEach((symbol, index) => {
    if (symbol && symbol.length) {
      if (symbol[0] === '&') {
        symbols[index] = symbol.charCodeAt(1);
      }
    }
  });

  //   Label pass
  const labels = {};
  symbols.forEach((symbol, index) => {
    if (symbol && symbol.length) {
      if (symbol[0] === ':') {
        labels[symbol.substr(1)] = index;
        symbols[index] = 'noop';
      }
    }
  });

  //   Label resolution pass
  symbols.forEach((symbol, index) => {
    if (symbol && symbol.length) {
      if (symbol[0] === '>') {
        const label = symbol.substr(1);
        const resolution = labels[label];
        if (resolution === undefined) {
          throw `Undefined label: ${ label }`;
        }
        symbols[index] = resolution;
      }
    }
  });

  //   Register substitution pass
  symbols.forEach((symbol, index) => {
    if (symbol && symbol.length) {
      if (~symbol.indexOf('reg')) {
        symbols[index] = parseInt(symbol.replace('reg', '')) + 32768;
      }
    }
  });

  symbols.forEach((symbol, index) => {
    const tryInstruction = Object.keys(instructions).find(i => {
      return instructions[i].instruction === symbol;
    });
    if (tryInstruction) {
      symbols[index] = tryInstruction;
    }
  });

  //Prepare output buffer
  let bytes = [];
  symbols.forEach(symbol => bytes.push(parseInt(symbol)));
  let outputBuffer = new Buffer(bytes.length * 2);
  bytes.forEach((byte, index) => outputBuffer.writeUInt16LE(byte, index * 2));
  return outputBuffer;
}



function parseText(text) {
  // Get rid of comments
  const lines = text.split('\n');

  
  for (var i = 0; i < lines.length; i++) {
    const line = lines[i];
    if (!line.length || line[0] === '#') {
      lines.splice(i, 1);
      i--;
    }
  }

  text = lines.join('\n');

  let symbols = text
    .split(/\n| /g)
    .map(symbol => symbol.trim())
    .filter(symbol => symbol.length);
  
  return symbols;
}