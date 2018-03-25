const fs = require('fs');
let buf = fs.readFileSync('./challenge.bin');

const heap = new Uint16Array(71680);

for (let i = 0; i < buf.length; i += 2) {
    console.log(buf.readUInt16LE(i));
}