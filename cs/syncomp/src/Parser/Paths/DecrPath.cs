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

    public override Func<int, List<SyntaxToken>, List<AstNode>, Tuple<int, AstNode>> Eval
    {
      get => (int i, List<SyntaxToken> tokens, List<AstNode> nodes) => {
        var next = ParseTokens(new List<SyntaxToken> { tokens[++i] });
        return new Tuple<int, AstNode>(i, new Decr(next[0]));
      };
    }
  }
}