const VirtualMemoryLayer = require('./virtualMemoryLayer');
const machineInstructions = require('./instructions')(VirtualMemoryLayer);

module.exports = function(memory, settings = {}) {
  function step() {
    const instruction = 
      machineInstructions[memory.heap[memory.inPtr]];
    if (instruction) {
      let instructionIndex = memory.inPtr;
      const params = [ memory ];
      for (let i = 0; i < instruction.paramaterCount; i++) {
        params.push(memory.heap[++memory.inPtr]);
      }
      instruction.action.apply(machineInstructions, params);
      if (settings.trace) {
        let traceParams = [instructionIndex, instruction.instruction];
        traceParams = traceParams.concat(params);
        trace.apply({}, traceParams);
      }
    }
    memory.inPtr++;
  }

  return {
    step
  };
};

const fs = require('fs');

function trace(opIndex, instruction, memory, ...rest) {
  fs.appendFileSync('./log.txt', 
      `${ opIndex }: ${ instruction }${rest.length ? " " : ""}${ rest.join(' ') }\t|${ memory.registers.join("\t") }\n`
  );
}
