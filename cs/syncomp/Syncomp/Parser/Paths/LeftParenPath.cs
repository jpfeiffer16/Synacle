using System.Collections.Generic;

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
            var node = new ParenGroup(
              ParseTokens(tokens.GetRange(i, expressionEnd - i), ctx),
              tkn.File,
              tkn.Line,
              tkn.Index
            );

            i = expressionEnd + 1;

            return (i, node);
        }
    }
}
