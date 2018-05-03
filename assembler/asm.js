const fs = require('fs');
const path = require('path');
const VMem = require('../virtualMemoryLayer');
const instructions = require('../instructions')(VMem);

const programName = path.normalize(path.join(__dirname, process.argv[2]));

fs.readFile(programName, 'utf8', (err, text) => {
  if (err) throw err;

  const outputBytes = [];

  const lines = text.split('\n');
  lines.forEach((line, lineNumber) => {
    const tokens = line.split(' ');
    let opcode;
    const instruction = Object.keys(instructions).find(i => {
      opcode = i;
      return instructions[i].instruction === tokens[0];
    });

    if (!tokens.length || !instruction) {
      console.log(`malformed line: ${ lineNumber }`);
      return;
    }

    // const opcode = Object
    //   .keys(instructions).find(i => instructions[i] === instruction);

    

    outputBytes.push(opcode);
    for (let i = 1; i < tokens.length; i++) {
      outputBytes.push(tokens[i]);
    } 
  });

  const outputBuffer = new Buffer(outputBytes.length * 2);

  for (let i = 0; i < outputBytes.length; i++) {
    outputBuffer.writeUInt16LE(outputBytes[i], i * 2);
  }

  const programPath = path.parse(programName);
  const filePath = path.join(programPath.dir, `${ programPath.name }.bin`)
  fs.writeFile(
    filePath,
    outputBuffer,
    (err) => {
      if (err) throw err;

      console.log(`Assembly done. File: ${ filePath }`);
    }
  );
});