const fs = require('fs');
let buf = fs.readFileSync('./challenge.bin');

const heap = new Uint16Array(71680);

for (let i = 0; i < buf.length; i += 2) {
    const lowByte = buf[i];
    const highByte = buf[i + 1];
    // console.log(highByte, lowByte);
    heap[i ? i / 2 : i] = buf.readUInt16LE(i);
    // heap[i] = buf[i];
}

// console.log(heap[32770]);

for (let i = 0; i < heap.length; i++) {
    console.log(i, + ' ' + heap[i]);
}

// for (let i = 0; i < buf.length; i += 2) {
// memory.codepage[i ? i / 2 : i] = buf.readUInt16LE(i);
// }
