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
                Heap = new UInt16[32768],
                Stack = new Stack<UInt16>(),
                Registers = new UInt16[8] {
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
            var fileBytes = File.ReadAllBytes("../assembler/programs/basic.bin");

            for (var i = 0; i < fileBytes.Length; i += 2) {
                var truByte = BitConverter.ToUInt16(new byte[2] { fileBytes[i], fileBytes[i + 1] }, 0);
                machineState.Heap[i == 0 ? 0 : i / 2] = truByte;
            }

            Console.WriteLine("Done with init");
        }
    }
}
