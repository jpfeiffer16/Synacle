using System;
using System.Collections.Generic;

namespace syncomp
{
  public class AddressOfPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.AddressOf;
    }

    public override Func<int, List<SyntaxToken>, List<AstNode>, AstNode> Eval
    {
      get => (int i, List<SyntaxToken> tokens, List<AstNode> nodes) => {
        var nextNode = ParseTokens(new List<SyntaxToken> { tokens[++i] })[0];
        return new AddressOf(nextNode);
      };
    }
  }
}