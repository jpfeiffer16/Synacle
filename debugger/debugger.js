const fs = require('fs');
const breakpoints  = JSON.parse(
    fs.readFileSync('./.breakpoints', 'utf8')
  ).breakpoints;
const VMemLayer = require('../virtualMemoryLayer');
const instructions = require('../instructions')(VMemLayer);
const readlineSync = require('readline-sync');

function Debugger(memory, interpreter) {
  while (true) {
    
    if (~breakpoints.indexOf(memory.inPtr)) {
      //break
      console.log(`Hit breakpoint on ${ memory.inPtr }`);
      debugPrompt();
    }
    interpreter.step();
  }

  function debugPrompt() {
    const instruction = instructions[memory.heap[memory.inPtr]];
    
    console.log(instruction);
    const input = readlineSync.question('Command:');
    const inputParts = input.split(' ');
    switch(inputParts[0]) {
      case 'reg':
        console.log(memory.registers);
        break;
      case 'ins':
        console.log(memory.heap[memory.inPtr]);
        break;
      case 'next':
        memory.inPtr += (instruction.paramaterCount) + 1;
        break;
      case 'rset':
        memory.registers[parseInt(inputParts[1])] = parseInt(inputParts[2]);
        break;
      default: 
        return;
    }
    debugPrompt();
  }  
};


module.exports = Debugger;