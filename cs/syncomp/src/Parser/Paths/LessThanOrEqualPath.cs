using System;
using System.Collections.Generic;

namespace syncomp
{
  public class LessThanOrEqualPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.LessThanOrEqual;
    }

    public override (int, AstNode) Eval(
      int i, List<SyntaxToken> tokens, List<AstNode> nodes)
    {
      var previousAstNode = nodes.Pop();
      return (i, new LessThanOrEqual(
        previousAstNode,
        ParseTokens(new List<SyntaxToken>() { tokens[++i] })[0]
      ));
    }
  }
}