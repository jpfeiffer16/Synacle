let typedLetters = [];
module.exports = function(VMem) {
  return {
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
        memory.registers[a - 32768] = VMem.getValue(memory, b);
      }
    },
    2: {
      paramaterCount: 1,
      instruction: 'push',
      action: (memory, a) => {
        memory.stack.push(VMem.getValue(memory, a));
      }
    },
    3: {
      paramaterCount: 1,
      instruction: 'pop',
      action: (memory, a) => {
        if (memory.stack.length === 0)
          throw 'Empty stack error';
        VMem.setValue(
          memory,
          a,
          VMem.getValue(memory, memory.stack.pop())
        );
      }
    },
    4: {
      paramaterCount: 3,
      instruction: 'eq',
      action: (memory, a, b, c) => {
        VMem.setValue(
          memory,
          a,
          VMem.getValue(memory, b) == VMem.getValue(memory, c) ? 1 : 0
        );
      }
    },
    5: {
      paramaterCount: 3,
      instruction: 'gt',
      action: (memory, a, b, c) => {
        VMem.setValue(
          memory,
          a,
          VMem.getValue(memory, b) > VMem.getValue(memory, c) ? 1 : 0
        );
      }
    },
    6: {
      paramaterCount: 1,
      instruction: 'jmp',
      action: (memory, a) => {
        memory.inPtr = VMem.getValue(memory, a) - 1;
      }
    },
    7: {
      paramaterCount: 2,
      instruction: 'jt',
      action: (memory, a, b) => {
        if (VMem.getValue(memory, a) !== 0) {
          memory.inPtr = VMem.getValue(memory, b) - 1;
        }
      }
    },
    8: {
      paramaterCount: 2,
      instruction: 'jf',
      action: (memory, a, b) => {
        if (VMem.getValue(memory, a) === 0) {
          memory.inPtr = VMem.getValue(memory, b) - 1;
        }
      }
    },
    9: {
      paramaterCount: 3,
      instruction: 'add',
      action: (memory, a, b, c) => {
        VMem.setValue(
          memory,
          a,
          (VMem.getValue(memory, b) + VMem.getValue(memory, c)) % 32768
        );
      }
    },
    10: {
      paramaterCount: 3,
      instruction: 'mult',
      action: (memory, a, b, c) => {
        VMem.setValue(
          memory,
          a,
          (VMem.getValue(memory, b) * VMem.getValue(memory, c)) % 32768
        );
      }
    },
    11: {
      paramaterCount: 3,
      instruction: 'mod',
      action: (memory, a, b, c) => {
        VMem.setValue(
          memory,
          a,
          (VMem.getValue(memory, b) % VMem.getValue(memory, c)) % 32768
        );
      }
    },
    12: {
      paramaterCount: 3,
      instruction: 'and',
      action: (memory, a, b, c) => {
        VMem.setValue(
          memory,
          a,
          VMem.getValue(memory, b) & VMem.getValue(memory, c)
        );
      }
    },
    13: {
      paramaterCount: 3,
      instruction: 'or',
      action: (memory, a, b, c) => {
        VMem.setValue(
          memory,
          a,
          VMem.getValue(memory, b) | VMem.getValue(memory, c)
        );
      }
    },
    14: {
      paramaterCount: 2,
      instruction: 'not',
      action: (memory, a, b) => {
        VMem.setValue(memory, a, ((~VMem.getValue(memory, b) >>> 0) & 0xFFFF) % 32768);
      }
    },
    15: {
      paramaterCount: 2,
      instruction: 'rmem',
      action: (memory, a, b) => {
        VMem.setValue(memory, a, memory.heap[VMem.getValue(memory, b)]);
      }
    },
    16: {
      paramaterCount: 2,
      instruction: 'wmem',
      action: (memory, a, b) => {
        VMem.setValue(memory, VMem.getValue(memory, a), b);
      }
    },
    17: {
      paramaterCount: 1,
      instruction: 'call',
      action: (memory, a) => {
        memory.stack.push(memory.inPtr + 1);
        memory.inPtr = VMem.getValue(memory, a) - 1;
      }
    },
    18: {
      paramaterCount: 0,
      instruction: 'ret',
      action: (memory) => {
        if (memory.stack.length === 0) process.exit(0);
        memory.inPtr = VMem.getValue(memory, memory.stack.pop()) - 1;
      }
    },
    19: {
      paramaterCount: 1,
      instruction: 'out',
      action: (memory, a) => {
        const char = String.fromCharCode(VMem.getValue(memory, a));
        process.stdout.write(char);
      }
    },
    20: {
      paramaterCount: 1,
      instruction: 'in',
      action: (memory, a) => {
        if (!typedLetters.length) {
          const readLineSync = require('readline-sync');
          const value = readLineSync.question('');
          if (value === 'save') {
            require('fs').writeFileSync('./.state', JSON.stringify(memory));
          }
          typedLetters = [];
          for(let i = 0; i < value.length; i++) {
            typedLetters.push(value[i]);
          }
          typedLetters.push('\n');
        }
        const char = typedLetters.shift();
        VMem.setValue(memory, a, char ? char.charCodeAt(0) : 0);      
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
};