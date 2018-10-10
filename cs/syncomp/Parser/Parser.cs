using System;
using System.Collections.Generic;
using System.Linq;

namespace syncomp {
  public class Parser {
    private List<SyntaxToken> tokens;
    public Parser(List<SyntaxToken> tokens) {
      this.tokens = tokens;
    }

    public List<AstNode> Parse() {
      return new ParserPath()
        .ParseTokens(this.tokens)
        .Where(nd => nd != null)
        .ToList();
    }
  }
}