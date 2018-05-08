using System;
using System.IO;
using System.Collections.Generic;

namespace cs
{
    class Program
    {
        static void Main(string[] args)
        {
            var machineState = new State() {
                Heap = new ushort[32768],
                Stack = new Stack<ushort>(),
                Registers = new ushort[8] {
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0
                },
                IntPtr = 0,
                TypedChars = String.Empty
            };
            // var fileBytes = File.ReadAllBytes("../assembler/programs/basic.bin");
            var fileBytes = File.ReadAllBytes("../challenge.bin");

            for (var i = 0; i < fileBytes.Length; i += 2) {
                var truByte = BitConverter.ToUInt16(new byte[2] { fileBytes[i], fileBytes[i + 1] }, 0);
                machineState.Heap[i == 0 ? 0 : i / 2] = truByte;
            }

            var vm = new Interpreter(machineState);

            while(true) {
                vm.Step();
            }
        }
    }
}
