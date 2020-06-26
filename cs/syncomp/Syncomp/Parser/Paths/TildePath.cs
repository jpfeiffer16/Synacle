using System.Collections.Generic;

namespace syncomp
{
    public class TildePath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Tilde;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var derefToken = tokens[i];
            var nextTerminator = this.GetExpression(SyntaxTokenType.LeftParen, SyntaxTokenType.RightParen, i + 1, tokens);
            var nextNode = ParseTokens(
              tokens.GetRange(i + 1, nextTerminator - i),
              ctx
            )[0];
            i = nextTerminator;
            return (i, new BitwiseNot(nextNode, derefToken.File, derefToken.Line, derefToken.Column) { NodeType = nextNode.NodeType });
        }
    }
}
