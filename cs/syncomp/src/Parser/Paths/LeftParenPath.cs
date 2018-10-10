using System;
using System.Collections.Generic;

namespace syncomp
{
  public class LeftParenPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.LeftParen;
    }

    public override Func<int, List<SyntaxToken>, List<AstNode>, Tuple<int, AstNode>> Eval
    {
      get => (int i, List<SyntaxToken> tokens, List<AstNode> nodes) => {
        var expressionEnd = this.GetExpression(
          SyntaxTokenType.LeftParen,
          SyntaxTokenType.RightParen,
          i,
          tokens
        );

        ++i;
        var node = new ParenGroup(
          ParseTokens(tokens.GetRange(i, expressionEnd - i))
        );
        
        i = expressionEnd + 1;

        return new Tuple<int, AstNode>(i, node);
      };
    }
  }
}