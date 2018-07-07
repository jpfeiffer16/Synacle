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
            //Get code
            var code = File.ReadAllText("./example.bc");
            //Lex
            var lexer = new Lexer(code);
            var tokens = lexer.Lex();
            //Parse
            var parser = new Parser(tokens);
            var ast = parser.Parse();
            //Transform
            var transformer = new Transformer(ast);
            var asmLines = transformer.Transform();

            //Write file
            File.WriteAllLines("./example.asm", asmLines);
        }
    }
}
