using System.Collections.Generic;

namespace syncomp {
    public class AstNode {
        public string Type { get; private set;}
        // public List<AstNode> Nodes { get; set; }

        public AstNode(string type) {
            this.Type = type;
        }

  }
}