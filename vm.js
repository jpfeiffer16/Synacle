const fs = require('fs');
const program = require('commander');
const Interpreter = require('./interpreter');

program
  .option('-d, --debug', 'Launch interactive debugger')
  .parse(process.argv);

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
  let buf = fs.readFileSync('./challenge.bin');  
  for (let i = 0; i < buf.length; i += 2) {
    memory.heap[i ? i / 2 : i] = buf.readUInt16LE(i);
  }
}

const interpreter = Interpreter(memory);

function step() {
  interpreter.step();
  setImmediate(step);
}

// step();

if (program.debug) {
  const SynacorDebugger = require('./debugger/debugger');  
  SynacorDebugger(memory, interpreter);
} else {
  step();
}