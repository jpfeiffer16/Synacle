using System.Collections.Generic;

namespace syncomp
{
    public class AdditionPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Addition;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var left = nodes.Pop();
            var right = ParseTokens(new List<SyntaxToken> { tokens[++i] }, ctx);
            var additionToken = tokens[i - 1];
            return (i, new Addition(
                left,
                right[0],
                additionToken.File,
                additionToken.Line,
                additionToken.Index) { NodeType = ParserContext.NativeTypes.LangInt });
        }
    }
}
