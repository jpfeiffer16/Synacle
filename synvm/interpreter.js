const VirtualMemoryLayer = require('./virtualMemoryLayer');
const machineInstructions = require('./instructions')(VirtualMemoryLayer);

module.exports = function(memory) {
  // let { heap, registers } = memory;
  function step() {
    const instruction = 
      machineInstructions[memory.heap[memory.inPtr]];
    if (instruction) {
      const params = [ memory ];
      for (let i = 0; i < instruction.paramaterCount; i++) {
        params.push(memory.heap[++memory.inPtr]);
      }
      // let traceParams = [instruction.instruction];
      // traceParams = traceParams.concat(params);
      // trace.apply({}, traceParams);
      instruction.action.apply(machineInstructions, params);
    }
    memory.inPtr++;
  }

  return {
    step
  };
};

const fs = require('fs');

function trace(instruction, memory, ...rest) {
  fs.appendFileSync('./log.txt', 
    `${ memory.inPtr }: ${ instruction } ${ rest.join(' ') } | ${
      rest.map((param) => {
        switch(instruction) {
          case 'out':
            return String.fromCharCode(
              VirtualMemoryLayer.getValue(memory, param)
            );
          default:
            return VirtualMemoryLayer.getValue(memory, param);
        }
      })
    }\n`
  );
}

function trace(instruction, memory, ...rest) {
  fs.appendFileSync('./log.txt', 
    `${ memory.inPtr }: ${ instruction } ${ rest.join(' ') }\n`
  );
}