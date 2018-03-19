module.exports = {
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
      memory.registers[a] = b;
    }
  },
  6: {
    paramaterCount: 1,
    instruction: 'jmp',
    action: (memory, a) => {
      memory.inPtr = getValueAtInPtr(memory) - 1;
    }
  },
  7: {
    paramaterCount: 2,
    instruction: 'jt',
    action: (memory, a, b) => {
      if (getValueAtInPtr(memory) !== 0) {
        memory.inPtr = b - 1;
      }
    }
  },
  8: {
    paramaterCount: 2,
    instruction: 'jf',
    action: (memory, a, b) => {
      if (getValueAtInPtr(memory) === 0) {
        memory.inPtr = b - 1;
      }
    }
  },
  9: {
    paramaterCount: 3,
    instruction: 'add',
    action: (memory, a, b, c) => {
      setValue(memory, a, (b + c) % 32768);
    }
  },
  10: {
    paramaterCount: 3,
    instruction: 'mult',
    action: (memory, a, b, c) => {
      setValue(memory, a, (b * c) % 32768);
    }
  },
  11: {
    paramaterCount: 3,
    instruction: 'mod',
    action: (memory, a, b, c) => {
      setValue(memory, a, (b % c) % 32768);
    }
  },
  12: {
    paramaterCount: 3,
    instruction: 'and',
    action: (memory, a, b, c) => {
      setValue(memory, a, b & c);
    }
  },
  13: {
    paramaterCount: 3,
    instruction: 'or',
    action: (memory, a, b, c) => {
      setValue(memory, a, b | c);
    }
  },
  14: {
    paramaterCount: 2,
    instruction: 'not',
    action: (memory, a, b) => {
      setValue(memory, a, ~ b);
    }
  },
  15: {
    paramaterCount: 2,
    instruction: 'rmem',
    action: (memory, a, b) => {
      setValue(memory, a, memory.heap[b]);
    }
  },
  16: {
    paramaterCount: 2,
    instruction: 'wmem',
    action: (memory, a, b) => {
      memory.heap[a] = b;
    }
  },
  17: {
    paramaterCount: 1,
    instruction: 'call',
    action: (memory, a) => {
      memory.stack.push(memory.codepage[memory.inPtr + 1]);
      memory.inPtr = a;
    }
  },
  18: {
    paramaterCount: 0,
    instruction: 'ret',
    action: (memory) => {
      if (memory.stack.length === 0) process.exit(0);
      memory.inPtr = memory.stack.pop();
    }
  },
  19: {
    paramaterCount: 1,
    instruction: 'out',
    action: (memory, a) => {
      const char = String.fromCharCode(a);
      process.stdout.write(char);
    }
  },
  20: {
    paramaterCount: 1,
    instruction: 'in',
    action: (memory, a) => {
      //Implement
    }
  },
  21: {
    paramaterCount: 0,
    instruction: 'noop',
    action: function(memory) {
      //NOOP
    }
  }
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