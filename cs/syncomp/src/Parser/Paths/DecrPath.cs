using System;
using System.Collections.Generic;

namespace syncomp
{
  public class DecrPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.Decr;
    }

    public override (int, AstNode) Eval(
      int i, List<SyntaxToken> tokens, List<AstNode> nodes)
    {
      var next = ParseTokens(new List<SyntaxToken> { tokens[++i] });
      return (i, new Decr(next[0]));
    }
  }
}