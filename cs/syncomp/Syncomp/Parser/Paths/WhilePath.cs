using System.Collections.Generic;

namespace syncomp
{
    public class WhilePath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.While;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var tkn = tokens[i];
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
            i++;
            var expressionEnd = GetExpression(
              SyntaxTokenType.LeftCurly,
              SyntaxTokenType.RightCurly,
              i,
              tokens
            );

            var expression = tokens.GetRange(i, expressionEnd - i);
            i = expressionEnd;
            return (i, new While(
                        ParseTokens(condition, ctx),
                        ParseTokens(expression, ctx), tkn.File, tkn.Line, tkn.Index));
        }
    }
}
