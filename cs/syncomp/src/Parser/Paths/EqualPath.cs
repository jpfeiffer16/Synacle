using System.Collections.Generic;

namespace syncomp
{
    public class EqualPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Equal;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes)
        {
            var left = nodes.Pop();
            var right = ParseTokens(new List<SyntaxToken> { tokens[++i] })[0];
            return (i, new Equal(left, right));
        }
    }
}
