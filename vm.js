const fs = require('fs');
const program = require('commander');
const Interpreter = require('./interpreter');

program
  .option('-d, --debug', 'Launch interactive debugger')
  .option('-wd, --web-debug', 'Launch interactive web debugger')
  .option('-b, --binary [string]', 'Binary to run. Defaults to challenge.bin')
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
  let buf = fs.readFileSync(program.binary || './challenge.bin');  
  for (let i = 0; i < buf.length; i += 2) {
    memory.heap[i ? i / 2 : i] = buf.readUInt16LE(i);
  }
}

const interpreter = Interpreter(memory);

function step() {
  interpreter.step();
  setImmediate(step);
}

if (program.debug) {
  const Debugger = require('./debugger/debugger');
  Debugger(memory, interpreter);
} else if (program.webDebug) {
  const SynacorDebugger = require('./webDebugger/debugger');  
  SynacorDebugger(memory, interpreter);
} else {
  step();
}