using System.Linq;
using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using syncomp;

namespace StaticWeb
{
    public class Program
    {
        public static string CompileCode(string code)
        {
            var result = new CompilationResult();
            var lexer = new Lexer(code);
            var tokens = lexer.Lex();
            tokens = tokens.Where(t => !string.IsNullOrWhiteSpace(t.Token)).ToList();
            var parser = new Parser(tokens);
            var (_, astNodes) = parser.Parse();
            var checker = new Checker(astNodes);
            result.Diagnostics = checker.Check();
            var emiiter = new Transformer(astNodes);
            result.Assembly = string.Join("\n", emiiter.TransformFullAst());
            return JsonConvert.SerializeObject(result, new JsonSerializerSettings{
                ContractResolver = new DefaultContractResolver
                {
                    NamingStrategy = new CamelCaseNamingStrategy()
                }
            });
        }
    }
}
