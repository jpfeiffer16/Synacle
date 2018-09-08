#!/usr/bin/env node

const instructions = require('../synvm/instructions')(require('../synvm/virtualMemoryLayer'));

const fs = require('fs');
const path = require('path');

const programName = path.normalize(process.argv[2]);

let buf = fs.readFileSync(programName);
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
      params.push(instructionOp);
    }
    if (instruction.instruction === 'out') {
      const char = String.fromCharCode(params[0]);
      if (char != '\n')
        params.push(char);
    }
    console.log(`${ i - params.length }: ${ instruction.instruction } ${ params.join(' ') }`);
  } else {
    console.log(`${ i }: ${ codepage[i] }`);
  }
}