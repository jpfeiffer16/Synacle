using System.Collections.Generic;

namespace syncomp
{
    public class ForPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.For;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            i++;
            var conditionEnd = GetExpression(
              SyntaxTokenType.LeftParen,
              SyntaxTokenType.RightParen,
              i,
              tokens
            );
            var condition = tokens.GetRange(i + 1, (conditionEnd - i) - 1);
            i = conditionEnd;
            var forConditionList = new List<List<SyntaxToken>>();
            var currentList = new List<SyntaxToken>();
            foreach (var tkn in condition)
            {
                currentList.Add(tkn);
                if (tkn.Type == SyntaxTokenType.SemiColon)
                {
                    forConditionList.Add(currentList);
                    currentList = new List<SyntaxToken>();
                }
            }
            forConditionList.Add(currentList);
            var init = forConditionList[0];
            var cond = forConditionList[1];
            var incr = forConditionList[2];

            i++;
            var expressionEnd = GetExpression(
              SyntaxTokenType.LeftCurly,
              SyntaxTokenType.RightCurly,
              i,
              tokens
            );

            var expression = tokens.GetRange(i, expressionEnd - i);
            i = expressionEnd;

            return (i, new For(
              ParseTokens(init, ctx),
              ParseTokens(cond, ctx),
              ParseTokens(incr, ctx),
              ParseTokens(expression, ctx)
            ));
        }
    }
}
