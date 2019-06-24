using System.Collections.Generic;

namespace syncomp
{
    public class GreaterThanOrEqualPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.GreaterThanOrEqual;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes)
        {
            var previousAstNode = nodes.Pop();
            return (++i, new GreaterThanOrEqual(
              previousAstNode,
              ParseTokens(new List<SyntaxToken>() { tokens[i] })[0]
            ));
        }
    }
}
