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
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var left = nodes.Pop();
            var right = ParseTokens(new List<SyntaxToken> { tokens[++i] }, ctx)[0];
            var equalToken = tokens[i - 1];
            return (i, new Equal(left, right, equalToken.File, equalToken.Line, equalToken.Index) { NodeType = ParserContext.NativeTypes.LangInt });
        }
    }
}
