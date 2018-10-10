using System;
using System.Collections.Generic;

namespace syncomp
{
  public class BreakpointPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.Breakpoint;
    }

    public override Func<int, List<SyntaxToken>, List<AstNode>, Tuple<int, AstNode>> Eval
    {
      get => (int i, List<SyntaxToken> tokens, List<AstNode> nodes) => {
        return new Tuple<int, AstNode>(i, new Breakpoint());
      };
    }
  }
}