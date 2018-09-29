using System;
using System.Collections.Generic;

namespace syncomp
{
  public class OrPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.Or;
    }

    public override Func<int, List<SyntaxToken>, List<AstNode>, Tuple<int, AstNode>> Eval
    {
      get => (int i, List<SyntaxToken> tokens, List<AstNode> nodes) => {
        var left = nodes.Pop();
        var right = ParseTokens(new List<SyntaxToken> { tokens[++i] })[0];
        return new Tuple<int, AstNode>(i, new Or(left, right));
      };
    }
  }
}