const fs = require('fs');
const Interpreter = require('./interpreter');

let buf = fs.readFileSync('./challenge.bin');

// process.on('message', (message) => console.log(message));
 

const memory = {
  //TODO: This length is not currently correct
  stack: [],
  registers: new Uint16Array(8),
  heap: new Uint16Array(71680),
  inPtr: 0
}

for (let i = 0; i < buf.length; i += 2) {
  // const lowByte = buf[i];
  // const highByte = buf[i + 1];
  // memory.codepage[i ? i / 2 : i] = (highByte << 16) | lowByte;
  memory.heap[i ? i / 2 : i] = buf.readUInt16LE(i);
}

const interpreter = Interpreter(memory);

// process.nextTick(() =>
//   interpreter.step()
// );


function step() {
  interpreter.step();
  // process.nextTick(() => step());
  setImmediate(step);
}

step();