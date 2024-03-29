using System.Collections.Generic;

namespace syncomp
{
    public class GreaterThanPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.GreaterThan;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var gtToken = tokens[i];
            var previousAstNode = nodes.Pop();
            return (++i, new GreaterThan(
              previousAstNode,
              ParseTokens(new List<SyntaxToken>() { tokens[i] }, ctx)[0],
              gtToken.File,
              gtToken.Line,
              gtToken.Column
            ) { NodeType = ParserContext.NativeTypes.LangInt });
        }
    }
}
