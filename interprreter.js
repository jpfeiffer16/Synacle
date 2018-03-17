const machineInstructions = {
  0: {
    instruction: 'halt',
    action: (memory) => {
      process.exit();
    }
  },
  1: {
    instruction: 'set',
    action: (memory) => {
      const a = getValueAtInPtr(memory);
      memory.inPtr++;
      const b = getValueAtInPtr(memory);
      memory.inPtr++;
      memory.registers[a] = b;
    }
  },
  6: {
    instruction: 'jmp',
    action: (memory) => {
      const a = getValueAtInPtr(memory);
      memory.inPtr++;
      const actualA = a % 32768;
      stackPtr = a - 1;
    }
  },
  7: {
    instruction: 'jt',
    action: (memory) => {
      const a = getValueAtInPtr(memory);
      memory.inPtr++;
      const actualA = a % 32768;
      const b = heap[++stackPtr];
      if (actualA !== 0) {
        stackPtr = b - 1;
      }
    }
  },
  8: {
    instruction: 'jf',
    action: (memory) => {
      const a = getValueAtInPtr(memory);
      memory.inPtr++;
      const actualA = a % 32768;
      const b = getValueAtInPtr(memory);
      memory.inPtr++;
      if (actualA === 0) {
        stackPtr = b - 1;
      }
    }
  },
  19: {
    instruction: 'out',
    action: (memory) => {
      const a = getValueAtInPtr(memory);
      const char = String.fromCharCode(a);
      process.stdout.write(char);
    }
  },
  21: {
    instruction: 'noop',
    action: function() {
      //NOOP
    }
  }
}

module.exports = function(memory) {
  let { codepage, heap, registers } = memory;
  function step() {
    memory.inPtr++;
    const instruction = 
      machineInstructions[memory.codepage[memory.inPtr]];
    if (instruction) instruction.action(memory);
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