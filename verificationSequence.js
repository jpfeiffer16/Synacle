const registers = [4, 1, 0, 0, 0, 0 , 0, 0];

const stack = [];

// if (registers[0] !== 0) {
//   if (registers[1] !== 0) {
//     stack.push(registers[0]);
//     registers[1] = registers[1] + 32767;
//   }
// }

// while (registers[1] !== 0) {
//   stack.push(registers[0]);
//   registers[1] = (registers[1] + 32767) % 32678;
// }

// while (true) {
//   if (registers[0] !== 0) {
//     if (registers[1] !== 0) {
//       stack.push(registers[0]);
//       registers[1] = (registers[1] + 32767) % 32768;
//     } else {
//       registers[1] = (registers[1] + 32767) % 32768;
//       registers[1] = 399;
//     }
//   } else {
//     break;
//   }
// }

// console.log(stack);

function ack(m, n) {
  return m === 0 ? n + 1 : ack(m - 1, n === 0  ? 1 : ack(m, n - 1));
 }

 console.log(ack(4, 1));