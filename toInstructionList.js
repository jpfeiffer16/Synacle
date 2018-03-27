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
      let instructionOp = codepage[++i];
      console.log(instructionOp);
      params.push(instructionOp);
    }
    if (instruction.instruction === 'out') {
      const char = String.fromCharCode(params[0]);
      if (char != '\n')
        params.push(char);
    }
    console.log(`${ instruction.instruction } ${ params.join(' ') }`);
  }
}