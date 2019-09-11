using System;
using syncomp;

namespace Syncomp.DevConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            var testCode = @"function() {};";
            var lexer = new NewLexer(testCode);
            var tokens = lexer.Lex();
            tokens.ForEach(token =>
                Console.WriteLine($"{token.Type}: {token.Token}"));
        }
    }
}
