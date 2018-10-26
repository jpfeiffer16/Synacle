using System;
using System.Collections.Generic;

namespace syncomp
{
  public class ParseException : Exception
  {
    public int Index { get; }
    public List<SyntaxToken> Tokens { get; }
    public List<AstNode> Nodes { get; }

    public ParseException(int index, List<SyntaxToken> tokens, List<AstNode> nodes)
    {
      this.Index = index;
      this.Tokens = tokens;
      this.Nodes = nodes;
    }
  }
}