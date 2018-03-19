const fs = require('fs');
const Interpreter = require('./interpreter');

let buf = fs.readFileSync('./challenge.bin');

const memory = {
  //TODO: This length is not currently correct
  codepage: new Uint16Array(buf.length),
  stack: [],
  registers: new Uint16Array(8),
  heap: new Uint16Array(4084),
  inPtr: 0
}

for (let i = 0; i < buf.length; i += 2) {
  memory.codepage[i ? i / 2 : i] = buf.readUInt16LE(i);
}

const interpreter = Interpreter(memory);

while (true) {
  interpreter.step();
}