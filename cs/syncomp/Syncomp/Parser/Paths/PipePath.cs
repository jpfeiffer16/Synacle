using System.Collections.Generic;

namespace syncomp
{
    public class PipePath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Pipe;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var tkn = tokens[i];
            var left = nodes.Pop();
            var right = ParseTokens(new List<SyntaxToken> { tokens[++i] }, ctx)[0];
            return (i, new BitwiseOr(left, right, tkn.File, tkn.Line, tkn.Column));
        }
    }
}
