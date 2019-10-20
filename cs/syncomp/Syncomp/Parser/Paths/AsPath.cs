using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class AsPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.As;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var fromNode = nodes.Pop();
            // var toNode = ParseTokens(new List<SyntaxToken> { tokens[++i] }, ctx)[0] as LangType;
            var typeName = tokens[++i].Token;
            var toNode = ctx.LangTypes.Where(tp => tp.Name == typeName).FirstOrDefault();
            if (toNode is null)
            {
                throw new ParseException(i, tokens, nodes, $"Unknown type: '{tokens[i].Token}'");
            }
            var asToken = tokens[i - 1];
            return (i, new As(fromNode, toNode, asToken.File, asToken.Line, asToken.Index) { NodeType = toNode });
        }
    }
}
