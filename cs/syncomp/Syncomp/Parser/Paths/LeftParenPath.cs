using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class LeftParenPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.LeftParen;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var tkn = tokens[i];
            var expressionEnd = this.GetExpression(
              SyntaxTokenType.LeftParen,
              SyntaxTokenType.RightParen,
              i,
              tokens
            );

            ++i;
            // For now make the right most node the NodeType of the ParenGroup
            // Should eventually enforce that the expression resolve to one node
            var childNodes = ParseTokens(tokens.GetRange(i, expressionEnd - i), ctx);
            var nodeType = ParserContext.NativeTypes.LangVoid;
            if (childNodes.Count > 0)
                nodeType = childNodes.LastOrDefault().NodeType;
            var node = new ParenGroup(
              childNodes,
              tkn.File,
              tkn.Line,
              tkn.Column
            ) { NodeType = nodeType };

            i = expressionEnd + 1;

            return (i, node);
        }
    }
}
