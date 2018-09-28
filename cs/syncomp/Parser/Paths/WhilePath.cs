using System;
using System.Collections.Generic;

namespace syncomp
{
  public class WhilePath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.While;
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

        var expression = tokens.GetRange(i, expressionEnd - i);
        i = expressionEnd;
        return new While(ParseTokens(condition), ParseTokens(expression));
      };
    }
  }
}