using System;
using System.Diagnostics;

namespace repl
{
    class Program
    {
        static void Main(string[] args)
        {
            while(true)
            {
                Console.Write("> ");
                var codeLine = Console.ReadLine();
                var compProc = new Process
                {
                    StartInfo = new ProcessStartInfo
                    {
                        FileName = "/bin/bash",
                        Arguments = $"-c \"echo '{codeLine}' | syncomp -\"",
                        RedirectStandardInput = true,
                        RedirectStandardError = true,
                        RedirectStandardOutput = true
                    }
                };
                // compProc.StartInfo.RedirectStandardInput = true;
                // compProc.StandardInput.Write(codeLine);
                compProc.Start();
                compProc.WaitForExit();
            //     if (compProc.ExitCode != 0)
            //     {
            //         Console.WriteLine(compProc.StandardError.ReadToEnd());
            //     }
            //     else
            //     {
            //         var asm = compProc.StandardOutput.ReadToEnd();
            //         var asmProc = new Process
            //         {
            //             StartInfo = new ProcessStartInfo
            //             {
            //                 FileName = "/bin/bash",
            //                 Arguments = $"-c \"echo '{asm}' | syn-asm -\"",
            //                 RedirectStandardInput = true,
            //                 RedirectStandardError = true,
            //                 RedirectStandardOutput = true
            //             }
            //         };
            //         // asmProc.StandardInput.Write(asm);
            //         asmProc.Start();
            //         asmProc.WaitForExit();
            //         var bin = asmProc.StandardOutput.ReadToEnd();

            //         var vmProc = new Process
            //         {
            //             StartInfo = new ProcessStartInfo
            //             {
            //                 FileName = "/bin/bash",
            //                 Arguments = $"-c \"echo '{bin}' | syn-vm --stdin\"",
            //                 RedirectStandardInput = true,
            //                 RedirectStandardError = true,
            //                 RedirectStandardOutput = true
            //             }
            //         };
            //         // asmProc.StandardInput.Write(asm);
            //         vmProc.Start();
            //         vmProc.WaitForExit();
            //         Console.WriteLine(vmProc.StandardOutput.ReadToEnd());
            //     }
            }
        }
    }
}
