using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace syncomp
{
    class Program
    {
        // TODO: try making this an async entry point once I can get that
        // figured out
        static void Main(string[] args)
        {
            if (args.Length == 0) {
                PrintUsage();
                Environment.Exit(1);
            }
            if (args[0] == "-h" || args[0] == "--help") {
                PrintUsage();
                Environment.Exit(1);
            }
            var includeList = new List<string>();
            var includeVariable = Environment.GetEnvironmentVariable("INCLUDE");
            if (!string.IsNullOrWhiteSpace(includeVariable)) {
                includeList = includeVariable.Split(";").ToList();
            }

            var filePath = args[0];


            string code;
            string workingDirectory;
            FileInfo fileInfo = null;
            if (filePath == "-") {
                //Make this async once the above comment is done
                code = Console.In.ReadToEnd();
                workingDirectory = Directory.GetCurrentDirectory();

                
            } else {
                fileInfo = new FileInfo(filePath);
                workingDirectory = fileInfo.Directory.FullName;
                
                //Get code
                code = File.ReadAllText(
                    filePath
                );
                
            }
            List<string> asmLines = new List<string>();
            try
            {
                asmLines = CompileCode(code, workingDirectory, includeList);
            }
            catch(ParseException e)
            {
                Console.ForegroundColor = ConsoleColor.Red;
                throw;
            }

            if (filePath == "-") {
                //Write to stdout
                Console.Write(string.Join("\n", asmLines));
            }
            else
            {
                //Write file
                File.WriteAllLines(
                    $"{workingDirectory}/{fileInfo.Name.Replace(fileInfo.Extension, ".asm")}",
                    asmLines
                );
            }
        }

        private static List<string> CompileCode(
            string code,
            string workingDirectory,
            List<string> includeLocations
        ) {
            //Preprocess
            var preprocessor = new Preprocessor(code, workingDirectory, includeLocations);
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
