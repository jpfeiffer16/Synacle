using System.Collections.Generic;

namespace syncomp
{
    public class OrPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Or;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes)
        {
            var left = nodes.Pop();
            var right = ParseTokens(new List<SyntaxToken> { tokens[++i] })[0];
            return (i, new Or(left, right));
        }
    }
}
