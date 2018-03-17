const fs = require('fs');
let buf = fs.readFileSync('./challenge.bin');

// buf.byteLength = 16;

for (let i = 0; i < buf.length; i += 2) {
    const byte = buf[i];
    const nByte = buf[i + 1];
    console.log('--------------------------');
    console.log(`${byte}     ${byte|nByte}`);
    console.log(`${nByte}    `);
    console.log('--------------------------');
}

// for (let i = 0; i < buf.length; i += 2) {
//     console.log(buf[i] | buf[i + 1]);
// }

// for (let i = 0; i < buf.length / 2; i += 2) {
//     // console.log(buf[i]);
//     console.log(buf.readInt16LE(i));
// }

// Buffer.byteLength