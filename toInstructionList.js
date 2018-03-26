const instructions = require('./instructions');

const fs = require('fs');
let buf = fs.readFileSync('./challenge.bin');
let codepage = [];

for (let i = 0; i < buf.length; i += 2) {
  codepage[i ? i / 2 : i] = buf.readUInt16LE(i);
}

for (let i = 0; i < codepage.length; i++) {
  const instruction = instructions[codepage[i]];
  if (instruction) {
    const params = [];
    for (let paramIndex = 0; paramIndex < instruction.paramaterCount; paramIndex++) {
      params.push(codepage[++i]);
    }
    if (instruction.instruction === 'out')
      params.push(String.fromCharCode(params[0]));
    console.log(`${ instruction.instruction } ${ params.join(' ') }`);
  }
}