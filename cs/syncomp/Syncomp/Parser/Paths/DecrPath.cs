using System.Collections.Generic;

namespace syncomp
{
    public class DecrPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Decr;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var next = ParseTokens(new List<SyntaxToken> { tokens[++i] }, ctx);
            var decrToken = tokens[i - 1];
            return (i, new Decr(next[0], decrToken.File, decrToken.Line, decrToken.Index));
        }
    }
}
