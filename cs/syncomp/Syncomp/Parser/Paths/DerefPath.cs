using System.Collections.Generic;

namespace syncomp
{
    public class DerefPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Deref;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var derefToken = tokens[i];
            // var nextTerminator = this.GetNextTerminator(i, tokens);
            var nextTerminator = this.GetExpression(SyntaxTokenType.LeftParen, SyntaxTokenType.RightParen, i + 1, tokens);
            var nextNode = ParseTokens(
              tokens.GetRange(i + 1, nextTerminator - i),
              ctx
            )[0];
            i = nextTerminator;
            return (i, new Deref(nextNode, derefToken.File, derefToken.Line, derefToken.Index) { NodeType = nextNode.NodeType });
            // return (i, new Deref(nextNode, derefToken.File, derefToken.Line, derefToken.Index));
        }
    }
}
