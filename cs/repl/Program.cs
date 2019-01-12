using System;
using System.Diagnostics;
using System.Text;
using System.IO;

namespace repl
{
    class Program
    {
        private static string prevousOutput = string.Empty;
        private static string codeBuffer = string.Empty;

        static string GetDiff(string original, string newStr)
        {

            // NOTE: Doing this the simple way for now. Just get the 
            // length of the new one and subtract the old one from it
            // then use that to get the substring of the new one
            return newStr.Substring(newStr.Length - (newStr.Length - original.Length));
        }

        static byte[] RunProc(string command, byte[] input)
        {
            var proc = new Process
            {
                StartInfo = new ProcessStartInfo
                {
                    FileName = "/bin/bash",
                    Arguments = $"-c \"{command}\"",
                    RedirectStandardInput = true,
                    RedirectStandardError = true,
                    RedirectStandardOutput = true
                }
            };
            proc.Start();
            proc.StandardInput.BaseStream.Write(input, 0, input.Length);
            proc.StandardInput.Close();
            proc.WaitForExit();

            byte[] output;
            if (proc.ExitCode != 0)
            {
                Console.WriteLine(proc.StandardError.ReadToEnd());
                output = null;
            }
            else
            {
                using (var memStream = new MemoryStream())
                {
                    proc.StandardOutput.BaseStream.CopyTo(memStream);
                    output = memStream.ToArray();
                }
            }
            return output;
        }

        static void Main(string[] args)
        {
            while (true)
            {
                Console.Write("> ");
                var codeLine = Console.ReadLine();
                codeBuffer += string.Format("{0}\n", codeLine);

                var asm = RunProc("syncomp -", Encoding.UTF8.GetBytes(codeBuffer));
                if (asm != null)
                {
                    var bin = RunProc("syn-asm -", asm);
                    if (bin != null)
                    {
                        var runOutput = RunProc("syn-vm --stdin", bin);
                        if (runOutput != null)
                        {
                            var outputStr = Encoding.UTF8.GetString(runOutput);
                            Console.WriteLine(GetDiff(prevousOutput, outputStr));
                            prevousOutput = outputStr;
                        }
                    }
                }
            }
        }
    }
}
