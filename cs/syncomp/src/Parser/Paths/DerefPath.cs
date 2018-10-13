using System;
using System.Collections.Generic;

namespace syncomp
{
  public class DerefPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.Deref;
    }

    public override (int, AstNode) Eval(
      int i, List<SyntaxToken> tokens, List<AstNode> nodes)
    {
      var nextTerminator = this.GetNextTerminator(i, tokens);
      ++i;
      var nextNode = ParseTokens(
        tokens.GetRange(i, nextTerminator - i)
      )[0];
      i = nextTerminator;
      return (i, new Deref(nextNode));
    }
  }
}