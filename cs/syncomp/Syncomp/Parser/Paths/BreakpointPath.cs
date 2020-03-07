using System.Collections.Generic;

namespace syncomp
{
    public class BreakpointPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Breakpoint;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var breakpointToken = tokens[i];
            return (i, new Breakpoint(breakpointToken.File, breakpointToken.Line, breakpointToken.Column));
        }
    }
}
