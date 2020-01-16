using System.Collections.Generic;

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
            var toNode = GetLangType(tokens.GetRange(++i, tokens.Count - i), ctx);
            i = tokens.Count - 1;
            if (toNode is null)
            {
                throw new ParseException(i, tokens, nodes, $"Unknown type: '{tokens[i].Token}'");
            }
            var asToken = tokens[i - 1];
            return (i, new As(fromNode, toNode, asToken.File, asToken.Line, asToken.Index) { NodeType = toNode });
        }
    }
}
