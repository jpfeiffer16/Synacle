using System;
using System.Collections.Generic;

namespace syncomp
{
  public class GreaterThanPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.GreaterThan;
    }

    public override (int, AstNode) Eval(
      int i, List<SyntaxToken> tokens, List<AstNode> nodes)
    {
        var previousAstNode = nodes.Pop();
        return (++i, new GreaterThan(
          previousAstNode,
          ParseTokens(new List<SyntaxToken>() { tokens[i] })[0]
        ));
    }
  }
}