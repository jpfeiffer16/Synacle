const fs = require('fs');
const program = require('commander');
const moment = require('moment');
const Interpreter = require('./interpreter');

let startTime;

program
  .option('-d, --debug', 'Launch interactive debugger')
  .option('-b, --binary [string]', 'Binary to run. Defaults to challenge.bin')
  .option('-i, --information [bool]', 'Display information about the program once it exits')
  .parse(process.argv);

if (!program.binary) {
  console.error("Must provide  binary with -b. Use --help to see usage");
}

const stateExists = fs.existsSync('./.state');

const memory = stateExists
  ? JSON.parse(fs.readFileSync('./.state', 'utf8'))
  : {
    //TODO: This length is not currently correct
    stack: [],
    registers: new Uint16Array(8),
    heap: new Uint16Array(71680),
    inPtr: 0,
    stopped: false
  };

if (!stateExists) {
  let buf = fs.readFileSync(program.binary);  
  for (let i = 0; i < buf.length; i += 2) {
    memory.heap[i ? i / 2 : i] = buf.readUInt16LE(i);
  }
}

const interpreter = Interpreter(memory);

function step() {
  interpreter.step();
  if (!memory.stopped) {
    setImmediate(step);
  } else {
    if (program.information) {
      console.log(moment.duration(moment().diff(startTime)).as('milliseconds'));
    }
  }
}

if (program.debug) {
  const Debugger = require('./debugger/debugger');
  Debugger(memory, interpreter, false);
} else {
  startTime = moment();
  step();
}
