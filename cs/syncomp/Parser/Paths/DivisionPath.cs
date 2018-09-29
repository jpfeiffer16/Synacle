using System;
using System.Collections.Generic;

namespace syncomp
{
  public class DivisionPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.Division;
    }

    public override Func<int, List<SyntaxToken>, List<AstNode>, Tuple<int, AstNode>> Eval
    {
      get => (int i, List<SyntaxToken> tokens, List<AstNode> nodes) => {
        var left = nodes.Pop();
        var right = ParseTokens(new List<SyntaxToken> { tokens[++i] });
        return new Tuple<int, AstNode>(i, new Division(left, right[0]));
      };
    }
  }
}