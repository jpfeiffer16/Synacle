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
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var tkn = tokens[i];
            var left = nodes.Pop();
            var right = ParseTokens(new List<SyntaxToken> { tokens[++i] }, ctx);
            return (i, new Subtraction(left, right[0], tkn.File, tkn.Line, tkn.Index) { NodeType = ParserContext.NativeTypes.LangInt });
        }
    }
}
