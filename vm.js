const fs = require('fs');

let buf = fs.readFileSync('./challenge.bin');

const heap = new Uint16Array(buf.length);
// const 
const registers = new Uint16Array(8);

for (let i = 0; i < buf.length; i += 2) {
  heap[i ? i / 2 : i] = buf.readInt16LE(i);
}

// for (let i = 0; i < buf.length; i += 2) {
//   heap[i ? i / 2 : i] = buf[i] | buf[i + 1];
// }

for (let stackPtr = 0; stackPtr < heap.length; stackPtr++) {
  const byte = heap[stackPtr];
  if (byte === 0) {
    trace(stackPtr, 'halt');
    break;
  }
  if (byte === 1) {
    const a = getValue(heap, registers, heap[++stackPtr]);
    const b = getValue(heap, registers, heap[++stackPtr]);
    trace(stackPtr, 'set', a, b);
    registers[a] = b;
  }
  if (byte === 19) {
    const a = heap[++stackPtr];
    const char = String.fromCharCode(a);
    trace(stackPtr, 'out', a, char);    
    process.stdout.write(char);
  }
  if (byte === 21) {
    trace(stackPtr, 'noop');
  }
  if (byte === 6) {
    const a = getValue(heap, registers, heap[++stackPtr]);
    const actualA = a % 32768;
    trace(stackPtr, 'jmp', a, actualA);
    stackPtr = a <= 0 ? 0 : a - 1;
  }
  if (byte === 7) {
    const a = getValue(heap, registers, heap[++stackPtr]);
    const actualA = a % 32768;
    const b = heap[++stackPtr];
    trace(stackPtr, 'jt', a, actualA, b);
    if (actualA !== 0) {
      stackPtr = b - 1;
    }
  }
  if (byte === 8) {
    const a = getValue(heap, registers, heap[++stackPtr]);
    const actualA = a % 32768;
    const b = getValue(heap, registers, heap[++stackPtr]);
    trace(stackPtr, 'jf', a, actualA, b);
    if (actualA === 0) {
      stackPtr = b - 1;
    }
  }
}

// fs.writeFileSync('./log.txt', '');

function trace(stackPtr, instruction, ...rest) {
  fs.appendFileSync('./log.txt', `${ stackPtr } | ${ instruction }: ${ rest.join(' ') } \n`);
};

function getValue(heap, registers, addressInt) {
  if (addressInt >= 0 && addressInt <= 32767) {
    return addressInt
  }
  if (addressInt >= 32768 && addressInt <= 32775) {
    return registers[addressInt - 32768];
  }
  return 0;
}