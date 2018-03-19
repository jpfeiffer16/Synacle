const machineInstructions = {
  0: {
    paramaterCount: 0,
    instruction: 'halt',
    action: (memory) => {
      process.exit();
    }
  },
  1: {
    paramaterCount: 2,
    instruction: 'set',
    action: (memory, a, b) => {
      // memory.inPtr++;
      // const a = getValueAtInPtr(memory);
      // memory.inPtr++;
      // const b = getValueAtInPtr(memory);
      memory.registers[a] = b;
    }
  },
  6: {
    paramaterCount: 1,
    instruction: 'jmp',
    action: (memory, a) => {
      // memory.inPtr++;
      // const a = getValueAtInPtr(memory);
      const actualA = a % 32768;
      memory.inPtr = actualA - 1;
    }
  },
  7: {
    paramaterCount: 2,
    instruction: 'jt',
    action: (memory, a, b) => {
      // memory.inPtr++;
      // const a = getValueAtInPtr(memory);
      const actualA = a % 32768;
      // memory.inPtr++;
      // const b = getValueAtInPtr(memory);
      if (actualA !== 0) {
        memory.inPtr = b - 1;
      }
    }
  },
  8: {
    paramaterCount: 2,
    instruction: 'jf',
    action: (memory, a, b) => {
      // memory.inPtr++;
      // const a = getValueAtInPtr(memory);
      const actualA = a % 32768;
      // memory.inPtr++;      
      // const b = getValueAtInPtr(memory);
      if (actualA === 0) {
        memory.inPtr = b - 1;
      }
    }
  },
  9: {
    paramaterCount: 3,
    instruction: 'add',
    action: (memory, a, b, c) => {
      // memory.inPtr++;
      // const a = getValueAtInPtr(memory);
      // memory.inPtr++;
      // const b = getValueAtInPtr(memory);
      // memory.inPtr++;
      // const c = getValueAtInPtr(memory);
      setValue(memory, a, (b + c) % 32768);
    }
  },
  10: {
    paramaterCount: 3,
    instruction: 'mult',
    action: (memory, a, b, c) => {
      // memory.inPtr++;
      // const a = getValueAtInPtr(memory);
      // memory.inPtr++;
      // const b = getValueAtInPtr(memory);
      // memory.inPtr++;
      // const c = getValueAtInPtr(memory);
      setValue(memory, a, (b * c) % 32768);
    }
  },
  11: {
    paramaterCount: 3,
    instruction: 'mod',
    action: (memory, a, b, c) => {
      // memory.inPtr++;
      // const a = getValueAtInPtr(memory);
      // memory.inPtr++;
      // const b = getValueAtInPtr(memory);
      // memory.inPtr++;
      // const c = getValueAtInPtr(memory);
      setValue(memory, a, (b % c) % 32768);
    }
  },
  19: {
    paramaterCount: 1,
    instruction: 'out',
    action: (memory, a) => {
      // memory.inPtr++;
      // const a = getValueAtInPtr(memory);
      const char = String.fromCharCode(a);
      process.stdout.write(char);
    }
  },
  21: {
    paramaterCount: 0,
    instruction: 'noop',
    action: function(memory) {
      //NOOP
    }
  }
}

module.exports = function(memory) {
  let { codepage, heap, registers } = memory;
  function step() {
    const instruction = 
      machineInstructions[memory.codepage[memory.inPtr]];
    if (instruction) {
      const params = [ memory ];
      for (let i = 0; i < instruction.paramaterCount; i++) {
        params.push(memory.codepage[++memory.inPtr]);
      }
      let traceParams = [instruction.instruction];
      traceParams = traceParams.concat(params);
      trace.apply({}, traceParams)
      instruction.action.apply(machineInstructions, params);
    }
    memory.inPtr++;
  }

  return {
    step
  };
};

function getValueAtInPtr(memory) {
  const addressInt = memory.codepage[memory.inPtr];
  if (addressInt >= 0 && addressInt <= 32767) {
    return addressInt
  }
  if (addressInt >= 32768 && addressInt <= 32775) {
    return memory.registers[addressInt - 32768];
  }
  return 0;
}

function setValue(memory, address, value) {
  if (address >= 0 && address <= 32767) {
    memory.heap[address] = value;
  }
  if (address >= 32768 && address <= 32775) {
    memory.registers[address - 32768] = value
  }
}

const fs = require('fs');

function trace(instruction, memory, ...rest) {
  fs.appendFileSync('./log.txt', 
    `${ memory.inPtr }: ${ instruction } ${ rest.join(' ') }\n`
  );
}