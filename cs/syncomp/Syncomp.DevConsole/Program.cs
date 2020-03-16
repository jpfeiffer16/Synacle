using System;

namespace Syncomp.DevConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            var testCode = @"
function main()
{

}
";
            var asm = StaticWeb.Program.CompileCode(testCode);
            Console.WriteLine(asm);
        }
    }
}
