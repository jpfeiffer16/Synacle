using System;
using System.IO;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace syncomp
{
    class Program
    {
        // TODO: try making this an async entry point once I can get that figured
        // out
        static void Main(string[] args)
        {
            if (args.Length == 0) {
                PrintUsage();
                Environment.Exit(1);
            }

            var filePath = args[0];

            if (filePath == "-") {
                //Make this async once the above comment is done
                var code = Console.In.ReadToEnd();
                var workingDirectory = Directory.GetCurrentDirectory();

                var asmLines = CompileCode(code, workingDirectory);
                Console.Write(string.Join("\n", asmLines));
            } else {
                var fileInfo = new FileInfo(filePath);
                var workingDirectory = fileInfo.Directory.FullName;
                
                //Get code
                var code = File.ReadAllText(
                    filePath
                );
                var asmLines = CompileCode(code, workingDirectory);

                //Write file
                File.WriteAllLines($"{workingDirectory}/{fileInfo.Name.Replace(fileInfo.Extension, ".asm")}", asmLines);
            }

            
        }

        private static List<string> CompileCode(string code, string workingDirectory) {
            //Preprocess
            var preprocessor = new Preprocessor(code, workingDirectory);
            code = preprocessor.Preprocess();
            //Lex
            var lexer = new Lexer(code);
            var tokens = lexer.Lex();
            //Parse
            var parser = new Parser(tokens);
            var ast = parser.Parse();
            //Transform
            var transformer = new Transformer(ast);
            return transformer.Transform();
        }

        private static void PrintUsage() {
            Console.WriteLine(@"
                Must provide a filename or - for stdin.
                Examples:
                    syncomp test.bc
                    echo ""print(\""test\"");\"" | syncomp -
            ");
        }
    }
}
