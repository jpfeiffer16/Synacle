using System;
using System.IO;
using System.Threading.Tasks;

namespace compiler
{
    class Program
    {
        // TODO: try making this an async entry point once I can get that figured
        // out
        static void Main(string[] args)
        {
            var code = File.ReadAllText("./example.bc");
            var lexer = new Lexer(code);
            var tokens = lexer.Lex();
            var parser = new Parser(tokens);
            var ast = parser.Parse();
        }
    }
}
