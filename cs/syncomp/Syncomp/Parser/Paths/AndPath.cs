using System.Collections.Generic;

namespace syncomp
{
    public class AndPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.And;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var left = nodes.Pop();
            var right = ParseTokens(new List<SyntaxToken> { tokens[++i] }, ctx)[0];
            return (i, new And(left, right));
        }
    }
}
