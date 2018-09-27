using System;
using System.Collections.Generic;

namespace syncomp
{
  public class GreaterThanOrEqualPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.GreaterThanOrEqual;
    }

    public override Func<int, List<SyntaxToken>, List<AstNode>, AstNode> Eval
    {
      get => (int i, List<SyntaxToken> tokens, List<AstNode> nodes) => {
        var previousAstNode = nodes.Pop();
        return new GreaterThanOrEqual(
          previousAstNode,
          ParseTokens(new List<SyntaxToken>() { tokens[++i] })[0]
        );
      };
    }
  }
}