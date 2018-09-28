using System;
using System.Collections.Generic;

namespace syncomp
{
  public class IncrPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.Incr;
    }

    public override Func<int, List<SyntaxToken>, List<AstNode>, AstNode> Eval
    {
      get => (int i, List<SyntaxToken> tokens, List<AstNode> nodes) => {
        var next = ParseTokens(new List<SyntaxToken> { tokens[++i] });
        return new Incr(next[0]);
      };
    }
  }
}