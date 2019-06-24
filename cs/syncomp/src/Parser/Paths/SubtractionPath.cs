using System.Collections.Generic;

namespace syncomp
{
    public class SubtractionPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Subtraction;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes)
        {
            var left = nodes.Pop();
            var right = ParseTokens(new List<SyntaxToken> { tokens[++i] });
            return (i, new Subtraction(left, right[0]));
        }
    }
}
