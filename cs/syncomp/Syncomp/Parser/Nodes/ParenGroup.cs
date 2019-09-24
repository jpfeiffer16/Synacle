using System.Collections.Generic;

namespace syncomp
{
  public class ParenGroup : AstNode
  {
    public ParenGroup(List<AstNode> nodes, string file, int line, int column)
        : base("PAREN_GROUP", file, line, column)
    {
      this.Nodes = nodes;
    }

    public List<AstNode> Nodes { get; }
  }
}
