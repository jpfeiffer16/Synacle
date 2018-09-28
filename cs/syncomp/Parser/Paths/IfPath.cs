using System;
using System.Collections.Generic;

namespace syncomp
{
  public class IfPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.If;
    }

    public override Func<int, List<SyntaxToken>, List<AstNode>, AstNode> Eval
    {
      get => (int i, List<SyntaxToken> tokens, List<AstNode> nodes) => {
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

        var expression = tokens.GetRange(i + 1, expressionEnd - i);
        i = expressionEnd;
        return new If(ParseTokens(condition), ParseTokens(expression));
      };
    }
  }
}