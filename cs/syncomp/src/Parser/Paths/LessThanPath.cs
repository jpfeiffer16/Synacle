using System;
using System.Collections.Generic;

namespace syncomp
{
  public class LessThanPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.LessThan;
    }

    public override (int, AstNode) Eval(
      int i, List<SyntaxToken> tokens, List<AstNode> nodes)
    {
      var previousAstNode = nodes.Pop();
      return (++i, new LessThan(
        previousAstNode,
        ParseTokens(new List<SyntaxToken>() { tokens[i] })[0]
      ));
    }
  }
}