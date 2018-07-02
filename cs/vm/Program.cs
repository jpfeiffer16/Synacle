using System;
using System.IO;
using System.Collections.Generic;
using CommandLine;

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
                InPtr = 0,
                TypedChars = String.Empty,
                Stopped = false
            };

            // var commandLineOptions = new CommandLineOptions();

            CommandLine.Parser.Default.ParseArguments<CommandLineOptions>(args).WithParsed((opts) => {
                var fileBytes = File.ReadAllBytes(opts.Binary);

                for (var i = 0; i < fileBytes.Length; i += 2) {
                    var truByte = BitConverter.ToUInt16(new byte[2] { fileBytes[i], fileBytes[i + 1] }, 0);
                    machineState.Heap[i == 0 ? 0 : i / 2] = truByte;
                }

                var vm = new Interpreter(machineState);

                var startTime = DateTime.UtcNow;
                while(!machineState.Stopped) {
                    vm.Step();
                }
                if (opts.Information) {
                    Console.WriteLine((DateTime.UtcNow - startTime).Milliseconds);
                }
            });

            
        }
    }
}
