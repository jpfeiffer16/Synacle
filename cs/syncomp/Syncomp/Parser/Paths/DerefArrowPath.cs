using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class DerefArrowPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.DerefArrow;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var drefArrowToken = tokens[i];
            var previous = nodes.Pop();
            var next = ParseTokens(new List<SyntaxToken> { tokens[++i] }, ctx).FirstOrDefault();
            return (i, new DerefArrow(previous, next,  drefArrowToken.File, drefArrowToken.Line, drefArrowToken.Index));
        }
    }
}
