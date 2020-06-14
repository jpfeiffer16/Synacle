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
            var (parserContext, ast) = CompileCode(ctx);
            var checker = new Checker(ast);
            var diagnostics = checker.Check().Union(parserContext.Diagnostics);
            if (diagnostics.Count() > 0)
            {
                DisplayCheckerDiagnostics(diagnostics);
                if (diagnostics.Where(d => d.Level == DiagnosticCodeLevel.Error).Count() > 0)
                {
                    Console.WriteLine($"There are {diagnostics.Count()} errors. Please fix and re-compile.");
                    Environment.Exit(1);
                }
                else
                {
                    Console.WriteLine($"There are {diagnostics.Count()} warings.");
                }
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

        private static (ParserContext, List<AstNode>) CompileCode(
            List<KeyValuePair<string, string>> preprocessorContext)
        {
            //Lex
            var tokens = new List<SyntaxToken>();
            List<string> lines = preprocessorContext.SelectMany(kv => kv.Value.Split('\n')).ToList();
            try
            {
                foreach (var file in preprocessorContext)
                {
                    var lexer = new Lexer(file.Value, file.Key);
                    tokens.AddRange(lexer.Lex());
                }
                // Trim out whitespace
                tokens = tokens.Where(tkn => tkn.Type != SyntaxTokenType.Space).ToList();
            }
            catch (Exception e)
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
            catch (ParseException e)
            {
                DisplayParseErrorContext(e, lines);
                var token = e.Tokens[e.Index];
                Console.Error.WriteLine($"Syntax error :{token.Line},{token.Column}");
                Console.Error.WriteLine($"Near token '{token.Token}'");
                Environment.Exit(1);
            }
            return (parserContext, ast);
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
            var from = token.Line - 3 < 0 ? 0 : token.Line - 3;
            codeLines
                .GetRange(from, (token.Line - 1) - from)
                .ForEach(t => Console.WriteLine(t));
            var errorLine = codeLines.ElementAt(token.Line - 1);
            Console.ForegroundColor = ConsoleColor.Red;
            Console.Error.WriteLine(errorLine);
            Console.ForegroundColor = ConsoleColor.Yellow;
            var i = 0;
            for (; i < token.Column; i++)
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

        private static void DisplayCheckerDiagnostics(IEnumerable<Diagnostic> diagnostics)
        {
            Dictionary<string, List<string>> fileCache = new Dictionary<string, List<string>>();
            foreach (var diagnostic in diagnostics)
            {
                Console.WriteLine(diagnostic.FullMessage);
                if (!fileCache.ContainsKey(diagnostic.File))
                {
                    var fileLines = File.ReadAllText(diagnostic.File).Split("\n").ToList();
                    fileCache.Add(diagnostic.File, fileLines);
                }
                var line = fileCache[diagnostic.File][diagnostic.Line - 1];
                var originalConsoleColor = Console.ForegroundColor;
                Console.ForegroundColor = ConsoleColor.DarkYellow;
                Console.Write($"\t{diagnostic.Line}: ");
                Console.ForegroundColor = originalConsoleColor;
                Console.Write(line.Substring(0, diagnostic.Column));
                Console.ForegroundColor = ConsoleColor.Red;
                Console.Write(line.Substring(diagnostic.Column, diagnostic.EndColumn - diagnostic.Column));
                Console.ForegroundColor = originalConsoleColor;
                Console.Write(line.Substring(diagnostic.EndColumn, line.Length - diagnostic.EndColumn));
                Console.WriteLine();
                Console.WriteLine($"\tin {diagnostic.File}:{diagnostic.Line},{diagnostic.Column}");
                Console.WriteLine();
            }
            Console.WriteLine();
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
