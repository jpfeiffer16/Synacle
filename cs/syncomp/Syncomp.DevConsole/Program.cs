using System;
using syncomp;

namespace Syncomp.DevConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            var testCode = @"
type Test {
    int id
}

// Main function
function main() {
    out(10);
}
main();
";
            var lexer = new NewLexer(testCode);
            var tokens = lexer.Lex();
            tokens.ForEach(token =>
                Console.WriteLine($"{token.Type}: {token.Token}"));
            Console.WriteLine("Full reconstruction:");
            tokens.ForEach(token => 
                    Console.Write(token.Token));
        }
    }
}
