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
      const a = getValue();
      const b = getValue();
      memory.registers[a] = b;
    }
  }
}

module.exports = function() {
  let { codepage, heap, registers } = memory;
  function step() {
    memory.inPtr++;
    const instruction = machineInstructions[memory.codepage[inPtr]];
    if (instruction) instruction.action(memory);
  }
};

function getValueAtInPtr(memory) {
  const addressInt = memory.codepage[memory.inPtr];
  if (addressInt >= 0 && addressInt <= 32767) {
    return addressInt
  }
  if (addressInt >= 32768 && addressInt <= 32775) {
    return registers[addressInt - 32768];
  }
  return 0;
}