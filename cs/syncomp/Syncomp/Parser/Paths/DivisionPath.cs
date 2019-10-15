using System.Collections.Generic;

namespace syncomp
{
    public class DivisionPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Division;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var left = nodes.Pop();
            var right = ParseTokens(new List<SyntaxToken> { tokens[++i] }, ctx);
            var divisionToken = tokens[i - 1];
            return (i, new Division(left, right[0], divisionToken.File, divisionToken.Line, divisionToken.Index) { NodeType = ParserContext.NativeTypes.LangInt });
        }
    }
}
