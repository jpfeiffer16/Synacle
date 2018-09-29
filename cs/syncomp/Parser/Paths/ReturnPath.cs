using System;
using System.Collections.Generic;

namespace syncomp
{
  public class ReturnPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.Return;
    }

    public override Func<int, List<SyntaxToken>, List<AstNode>, Tuple<int, AstNode>> Eval
    {
      get => (int i, List<SyntaxToken> tokens, List<AstNode> nodes) => {
        var nextToken = tokens[i + 1];
        AstNode node;
        if (nextToken.Type != SyntaxTokenType.SemiColon) {
          node = new Return(ParseTokens(new List<SyntaxToken> { nextToken })[0]);
          i++;
        } else {
          node = new Return(null);
        }
        return new Tuple<int, AstNode>(i, node);
      };
    }
  }
}