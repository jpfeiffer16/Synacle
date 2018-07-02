using System;
using System.Collections.Generic;
using System.Linq;

namespace compiler {
  public class Parser {
    private List<SyntaxToken> tokens;
    public Parser(List<SyntaxToken> tokens) {
      this.tokens = tokens;
    }

    public List<AstNode> Parse() {
      return ParseTokens(this.tokens);
    }

    private List<AstNode> ParseTokens(List<SyntaxToken> tokens) {
      var nodes = new List<AstNode>();
      for (var i = 0; i < tokens.Count; i++) {
        var token = tokens[i];
        AstNode node = null;
        if (token.Type == SyntaxTokenTypes.Identifier) {
          if (int.TryParse(token.Token, out _)) {
            node = new AstNode("INTEGER_LITERAL");
          } else {
            node = new AstNode("IDENTIFIER");
          }
        }

        if (token.Type == SyntaxTokenTypes.VariableDeclaration) {
          node = new AstNode("VARIABLE_DECLARATION");
        }

        if (token.Type == SyntaxTokenTypes.VariableAssignment) {
          node = new AstNode("VARIABLE_ASSIGNMENT");
        }

        nodes.Add(node);
      }
      return nodes.Where(nd => nd != null).ToList();
    }
  }

  public class AstNode {
    public string Type { get; private set;}
    public List<AstNode> Nodes { get; set; }

    public AstNode(string type) {
      this.Type = type;
    }

  }

  public class Context {
    public List<Variable> Variables = new List<Variable>();
  }

  public class Variable {
    public string Name { get; set; }
  }
}