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

          SyntaxToken nextToken;
          if (i + 1 < tokens.Count && (nextToken = tokens[i + 1]).Type == SyntaxTokenTypes.LeftParen) {
            
            // if (nextToken.Type != SyntaxTokenTypes.LeftParen) {
            //   throw new Exception("Next token must be (");
            // }

            i++;
            var nextClose = GetExpression(SyntaxTokenTypes.LeftParen, SyntaxTokenTypes.RightParen, i, tokens);
            var parametersNodes = ParseTokens(tokens.GetRange(i, nextClose - i));
            i = nextClose;
            
            node = new FunctionCall(parametersNodes, token.Token);
          }
          else
          {
            if (int.TryParse(token.Token, out _)) {
              node = new IntegerLiteral(token.Token);
            } else {
              node = new Identifier(token.Token);
            }
          }
        }

        if (token.Type == SyntaxTokenTypes.VariableDeclaration) {
          var nextToken = tokens[++i];

          node = new VariableDeclaration(nextToken.Token);
        }

        if (token.Type == SyntaxTokenTypes.VariableAssignment) {
          var previousAstNode = nodes.Pop();
          var parsedParameter = ParseTokens(new List<SyntaxToken> { tokens[++i] })[0];
          node = new VariableAssignment(previousAstNode, parsedParameter);
        }

        //TODO
        if (token.Type == SyntaxTokenTypes.Addition) {
          // var addNode = node as Addition;
          var left = nodes.Pop();
          var right = ParseTokens(new List<SyntaxToken> { tokens[++i] });
          node = new Addition(left, right[0]);
          
        }

        nodes.Add(node);
      }
      return nodes.Where(nd => nd != null).ToList();
    }

    private int GetExpression(
      SyntaxTokenTypes openerType,
      SyntaxTokenTypes closerType,
      int index,
      List<SyntaxToken> tokens)
    {
      var indentLevel = 0;

      do {
        var token = tokens[index];
        if (token.Type == openerType) indentLevel++;
        if (token.Type == closerType) indentLevel--;
        index++;
      } while ((indentLevel > 0));

      return index;
    }
  }
}