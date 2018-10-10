using System.Collections.Generic;

namespace syncomp
{
  public class AstNode
  {
    public string Type { get; private set; }

    public AstNode(string type)
    {
      this.Type = type;
    }
  }
}