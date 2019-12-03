using System.Collections.Generic;

namespace syncomp
{
    public class IfPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.If;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var ifToken = tokens[i];
            i++;
            var conditionEnd = GetExpression(
              SyntaxTokenType.LeftParen,
              SyntaxTokenType.RightParen,
              i,
              tokens
            );
            ++i;
            var condition = tokens.GetRange(i, conditionEnd - i);
            i = conditionEnd;
            i = this.GetNextNonWhitespace(++i, tokens);
            var expressionEnd = GetExpression(
              SyntaxTokenType.LeftCurly,
              SyntaxTokenType.RightCurly,
              i,
              tokens
            );

            var expression = tokens.GetRange(i + 1, expressionEnd - i);
            i = expressionEnd;
            return (i, new If(
                ParseTokens(condition, ctx), ParseTokens(expression, ctx), ifToken.File, ifToken.Line, ifToken.Index));
        }
    }
}
