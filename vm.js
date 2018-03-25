const fs = require('fs');
const Interpreter = require('./interpreter');
let buf = fs.readFileSync('./challenge.bin');

// process.on('message', (message) => console.log(message));

const stateExists = fs.existsSync('./.state');

const memory = stateExists
  ? JSON.parse(fs.readFileSync('./.state', 'utf8'))
  : {
    //TODO: This length is not currently correct
    stack: [],
    registers: new Uint16Array(8),
    heap: new Uint16Array(71680),
    inPtr: 0
  };

if (!stateExists) {
  for (let i = 0; i < buf.length; i += 2) {
    memory.heap[i ? i / 2 : i] = buf.readUInt16LE(i);
  }
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