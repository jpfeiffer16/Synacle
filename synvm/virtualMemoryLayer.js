const VirtualMemoryLayer = {
  getValue: function(memory, address) {
    if (address >= 0 && address <= 32767) {
      return address
    }
    if (address >= 32768 && address <= 32775) {
      return memory.registers[address - 32768];
    }
    return 0;
  },
  setValue: function(memory, address, value) {
    //TODO: This first part maybe shouldn't be a thing
    if (address >= 0 && address <= 32767) {
      memory.heap[address] = VirtualMemoryLayer.getValue(memory, value);
    }
    if (address >= 32768 && address <= 32775) {
      memory.registers[address - 32768] = VirtualMemoryLayer.getValue(memory, value);
    }
  }
};

module.exports = VirtualMemoryLayer;