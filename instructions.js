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
      memory.registers[a - 32768] = getValue(memory, b);
    }
  },
  2: {
    paramaterCount: 1,
    instruction: 'push',
    action: (memory, a) => {
      memory.stack.push(getValue(memory, a));
    }
  },
  3: {
    paramaterCount: 1,
    instruction: 'pop',
    action: (memory, a) => {
      if (memory.stack.length === 0)
        throw 'Empty stack error';
      setValue(
        memory,
        a,
        getValue(memory, memory.stack.pop())
      );
    }
  },
  4: {
    paramaterCount: 3,
    instruction: 'eq',
    action: (memory, a, b, c) => {
      setValue(
        memory,
        a,
        getValue(memory, b) == getValue(memory, c) ? 1 : 0
      );
    }
  },
  5: {
    paramaterCount: 3,
    instruction: 'gt',
    action: (memory, a, b, c) => {
      setValue(
        memory,
        a,
        getValue(memory, b) > getValue(memory, c) ? 1 : 0
      );
    }
  },
  6: {
    paramaterCount: 1,
    instruction: 'jmp',
    action: (memory, a) => {
      memory.inPtr = getValue(memory, a) - 1;
    }
  },
  7: {
    paramaterCount: 2,
    instruction: 'jt',
    action: (memory, a, b) => {
      if (getValue(memory, a) !== 0) {
        memory.inPtr = getValue(memory, b) - 1;
      }
    }
  },
  8: {
    paramaterCount: 2,
    instruction: 'jf',
    action: (memory, a, b) => {
      if (getValue(memory, a) === 0) {
        memory.inPtr = getValue(memory, b) - 1;
      }
    }
  },
  9: {
    paramaterCount: 3,
    instruction: 'add',
    action: (memory, a, b, c) => {
      setValue(
        memory,
        a,
        (getValue(memory, b) + getValue(memory, c)) % 32768
      );
    }
  },
  10: {
    paramaterCount: 3,
    instruction: 'mult',
    action: (memory, a, b, c) => {
      setValue(
        memory,
        a,
        (getValue(memory, b) * getValue(memory, c)) % 32768
      );
    }
  },
  11: {
    paramaterCount: 3,
    instruction: 'mod',
    action: (memory, a, b, c) => {
      setValue(
        memory,
        a,
        (getValue(memory, b) % getValue(memory, c)) % 32768
      );
    }
  },
  12: {
    paramaterCount: 3,
    instruction: 'and',
    action: (memory, a, b, c) => {
      setValue(
        memory,
        a,
        getValue(memory, b) & getValue(memory, c)
      );
    }
  },
  13: {
    paramaterCount: 3,
    instruction: 'or',
    action: (memory, a, b, c) => {
      setValue(
        memory,
        a,
        getValue(memory, b) | getValue(memory, c)
      );
    }
  },
  14: {
    paramaterCount: 2,
    instruction: 'not',
    action: (memory, a, b) => {
      setValue(memory, a, ((~getValue(memory, b) >>> 0) & 0xFFFF) % 32768);
    }
  },
  15: {
    paramaterCount: 2,
    instruction: 'rmem',
    action: (memory, a, b) => {
      setValue(memory, a, memory.heap[getValue(memory, b)]);
    }
  },
  16: {
    paramaterCount: 2,
    instruction: 'wmem',
    action: (memory, a, b) => {
      setValue(memory, getValue(memory, a), b);
    }
  },
  17: {
    paramaterCount: 1,
    instruction: 'call',
    action: (memory, a) => {
      memory.stack.push(memory.inPtr + 1);
      memory.inPtr = getValue(memory, a) - 1;
    }
  },
  18: {
    paramaterCount: 0,
    instruction: 'ret',
    action: (memory) => {
      if (memory.stack.length === 0) process.exit(0);
      memory.inPtr = getValue(memory, memory.stack.pop()) - 1;
    }
  },
  19: {
    paramaterCount: 1,
    instruction: 'out',
    action: (memory, a) => {
      const char = String.fromCharCode(getValue(memory, a));
      process.stdout.write(char);
    }
  },
  20: {
    paramaterCount: 1,
    instruction: 'in',
    action: (memory, a) => {
      //Implement
      const readLineSync = require('readline-sync');
      const value = readLineSync.question('');
      console.log(value);
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

function getValue(memory, address) {
  if (address >= 0 && address <= 32767) {
    return address
  }
  if (address >= 32768 && address <= 32775) {
    return memory.registers[address - 32768];
  }
  return 0;
}

function setValue(memory, address, value) {
  //TODO: This first part maybe shouldn't be a thing
  if (address >= 0 && address <= 32767) {
    memory.heap[address] = getValue(memory, value);
  }
  if (address >= 32768 && address <= 32775) {
    memory.registers[address - 32768] = getValue(memory, value);
  }
}

// process.stdin.resume();
// // const value = process.stdin.read();
// // if (value)
// //   process.stdout.write(value);

// process.stdin.on('data', function (chunk) {
//   // process.stdout.write('data: ' + chunk);
//   console.log(chunk);
// });

// var stdin = process.openStdin(); 
// require('tty').setRawMode(true);

// stdin.on('keypress', function (chunk, key) {
//   process.stdout.write('Get Chunk: ' + chunk + '\n');
//   if (key && key.ctrl && key.name == 'c') process.exit();
// });

// var stdin = process.stdin;

// // without this, we would only get streams once enter is pressed
// stdin.setRawMode( true );

// // resume stdin in the parent process (node app won't quit all by itself
// // unless an error or process.exit() happens)
// stdin.resume();

// // i don't want binary, do you?
// stdin.setEncoding( 'utf8' );

// // on any data into stdin
// stdin.on( 'keypress', function( key ){
//   // ctrl-c ( end of text )
//   if ( key === '\u0003' ) {
//     process.exit();
//   }
//   // write the key to stdout all normal like
//   process.stdout.write( key );
// });

// const readline = require('readline');
// readline.emitKeypressEvents(process.stdin);
// process.stdin.setRawMode(true);
// process.stdin.on('keypress', (str, key) => {
//   if (key.ctrl && key.name === 'c') {
//     process.exit();
//   } else {
//     console.log(`You pressed the "${str}" key`);
//     console.log();
//     console.log(key);
//     console.log();
//   }
// });