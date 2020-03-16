using syncomp;

namespace StaticWeb
{
    public class Program
    {
        public static string CompileCode(string code)
        {
            var lexer = new Lexer(code);
            var tokens = lexer.Lex();
            var parser = new Parser(tokens);
            var (_, astNodes) = parser.Parse();
            var emiiter = new Transformer(astNodes);
            var outputAsm = emiiter.TransformFullAst();
            return string.Join("\n", outputAsm);
        }
    }
}
