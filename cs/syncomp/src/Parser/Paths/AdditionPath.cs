using System;
using System.Collections.Generic;

namespace syncomp
{
  public class AdditionPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.Addition;
    }

    public override (int, AstNode) Eval(
      int i, List<SyntaxToken> tokens, List<AstNode> nodes)
    {
      var left = nodes.Pop();
      var right = ParseTokens(new List<SyntaxToken> { tokens[++i] });
      return (i, new Addition(left, right[0]));
    }
  }
}