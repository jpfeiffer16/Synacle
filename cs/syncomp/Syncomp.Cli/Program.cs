using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;

namespace syncomp
{
    class Program
    {
        // TODO: try making this an async entry point once I can get that
        // figured out
        static void Main(string[] args)
        {
            if (args.Length == 0)
            {
                PrintUsage();
                Environment.Exit(1);
            }
            if (args[0] == "-h" || args[0] == "--help")
            {
                PrintUsage();
                Environment.Exit(1);
            }
            var includeList = new List<string>();
            var includeVariable = Environment.GetEnvironmentVariable("INCLUDE");
            if (!string.IsNullOrWhiteSpace(includeVariable))
            {
                includeList = includeVariable.Split(";").ToList();
            }

            var filePath = args[0];

            PreProcessor preprocessor;
            if (filePath == "-")
            {
                //Make this async once the above comment is done
                var code = Console.In.ReadToEnd();
                preprocessor = new PreProcessor("./stdin.bc", code);
            }
            else
            {
                preprocessor = new PreProcessor(filePath);
            }
            var ctx = preprocessor.BuildContext();
            var ast = CompileCode(ctx);
            var checker = new Checker(ast);
            var diagnostics = checker.Check();
            if (diagnostics.Count > 0)
            {
                if (diagnostics.Count > 0)
                {
                    foreach (var diagnostic in diagnostics)
                    {
                        Console.WriteLine(diagnostic.FullMessage);
                        Console.WriteLine($"\tin {diagnostic.File}:{diagnostic.Line},{diagnostic.Column}");
                    }
                    Console.WriteLine();
                    Console.WriteLine($"There are {diagnostics.Count} errors. Please fix and re-compile.");
                }
                Environment.Exit(1);
            }
            var asmLines = EmitAst(ast);

             string workingDirectory;
             FileInfo fileInfo = null;

            if (filePath == "-")
            {
                //Write to stdout
                Console.Write(string.Join("\n", asmLines));
            }
            else
            {
                 fileInfo = new FileInfo(filePath);
                 workingDirectory = fileInfo.Directory.FullName;
                //Write file
                File.WriteAllLines(
                    $"{workingDirectory}/{fileInfo.Name.Replace(fileInfo.Extension, ".asm")}",
                    asmLines
                );
            }
        }

        private static List<AstNode> CompileCode(
            IEnumerable<(string, string)> preprocessorContext)
        {
            //Lex
            var tokens = new List<SyntaxToken>();
            List<string> lines = null;
            try
            {
                foreach (var file in preprocessorContext)
                {
                    var lexer = new Lexer(file.Item2, file.Item1);
                    tokens.AddRange(lexer.Lex());
                }
                // Trim out whitespace
                tokens = tokens.Where(tkn => tkn.Type != SyntaxTokenType.Space).ToList();
            }
            catch(Exception e)
            {
                Console.Error.WriteLine("Lexer error:");
                Console.Error.WriteLine(e);
                Environment.Exit(1);
            }
            //Parse
            List<AstNode> ast = null;
            ParserContext parserContext = null;
            try
            {
                var parser = new Parser(tokens);
                (parserContext, ast) = parser.Parse();
            }
            catch(ParseException e)
            {
                DisplayParseErrorContext(e, lines);
                var token = e.Tokens[e.Index];
                Console.Error.WriteLine($"Syntax error :{token.Line},{token.Index}");
                Console.Error.WriteLine($"Near token '{token.Token}'");
                Environment.Exit(1);
            }
            return ast;
        }

        private static List<string> EmitAst(List<AstNode> ast)
        {
                //Transform
                var transformer = new Transformer(ast);
                return transformer.TransformFullAst();
        }

        private static void DisplayParseErrorContext(
            ParseException error, List<string> codeLines)
        {
            var originalConsoleColor = Console.ForegroundColor;
            var token = error.Tokens[error.Index];
            var from = token.Line - 2 < 0 ? 0 : token.Line - 2;
            codeLines
                .GetRange(from, token.Line - from)
                .ForEach(t => Console.WriteLine(t));
            var errorLine = codeLines.ElementAt(token.Line);
            Console.ForegroundColor = ConsoleColor.Red;
            Console.Error.WriteLine(errorLine);
            Console.ForegroundColor = ConsoleColor.Yellow;
            var i = 0;
            for (; i < token.Index; i++)
            {
                Console.Error.Write(" ");
            }
            i = i == 0 ? 0 : i - 1;
            Console.Error.WriteLine("^");
            Console.ForegroundColor = originalConsoleColor;
            if (token.Line + 1 < codeLines.Count())
            {
                var to = token.Line + 3 > codeLines.Count() ? codeLines.Count() : token.Line + 3;
                codeLines.GetRange(token.Line + 1, to - (token.Line + 1)).ForEach(Console.WriteLine);
            }
            Console.Error.WriteLine();
        }

        private static void PrintUsage()
        {
            Console.WriteLine(@"
                Must provide a filename or - for stdin.
                Examples:
                    syncomp test.bc
                    echo ""print(\""test\"");\"" | syncomp -
            ");
        }
    }
}
