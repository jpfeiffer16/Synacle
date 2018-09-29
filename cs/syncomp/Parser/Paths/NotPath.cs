using System;
using System.Collections.Generic;

namespace syncomp
{
  public class NotPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.Not;
    }

    public override Func<int, List<SyntaxToken>, List<AstNode>, Tuple<int, AstNode>> Eval
    {
      get => (int i, List<SyntaxToken> tokens, List<AstNode> nodes) => {
        var nextTerminator = this.GetNextTerminator(i, tokens);
        var next = ParseTokens(tokens.GetRange(++i, nextTerminator - i))[0];
        i = nextTerminator;
        return new Tuple<int, AstNode>(i, new Not(next));
      };
    }
  }
}