using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class AsteriskPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Asterisk;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            if (IsExpressionNode(nodes.LastOrDefault()))
            {
                // Asterisk is a multiplication operation
                var tkn = tokens[i];
                var left = nodes.Pop();
                var nextTerm = GetNextTerminator(i, tokens);
                var right = ParseTokens(tokens.GetRange(++i, nextTerm - i), ctx);
                return (i, new Multiplication(left, right[0], tkn.File, tkn.Line, tkn.Column) { NodeType= ParserContext.NativeTypes.LangInt });
            }
            else
            {
                // Asterisk is a dereference operation
                var derefToken = tokens[i];
                var nextTerminator = this.GetExpression(SyntaxTokenType.LeftParen, SyntaxTokenType.RightParen, i + 1, tokens);
                var nextNode = ParseTokens(
                  tokens.GetRange(i + 1, nextTerminator - i),
                  ctx
                )[0];
                i = nextTerminator;
                return (i, new Deref(nextNode, derefToken.File, derefToken.Line, derefToken.Column) { NodeType = nextNode.NodeType });
            }
        }
    }
}
