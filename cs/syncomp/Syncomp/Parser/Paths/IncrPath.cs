using System.Collections.Generic;

namespace syncomp
{
    public class IncrPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Incr;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var incrToken = tokens[i];
            var next = ParseTokens(new List<SyntaxToken> { tokens[++i] }, ctx);
            return (i, new Incr(next[0], incrToken.File, incrToken.Line, incrToken.Column));
        }
    }
}
