using System;
using System.Collections.Generic;

namespace syncomp
{
  public class EqualPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.Equal;
    }

    public override Func<int, List<SyntaxToken>, List<AstNode>, AstNode> Eval
    {
      get => (int i, List<SyntaxToken> tokens, List<AstNode> nodes) => {
        var left = nodes.Pop();
        var right = ParseTokens(new List<SyntaxToken> { tokens[++i]})[0];
        return new Equal(left, right);
      };
    }
  }
}