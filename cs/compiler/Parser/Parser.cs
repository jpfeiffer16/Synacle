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

        if (token.Type == SyntaxTokenTypes.FunctionDeclaration) {
          var name = tokens[++i];
          i++;
          var nextClosingParen = GetExpression(
            SyntaxTokenTypes.LeftParen,
            SyntaxTokenTypes.RightParen,
            i,
            tokens
          );
          var parameters = ParseTokens(
            tokens.GetRange(i, nextClosingParen - i)
          );

          i = nextClosingParen + 1;

          var nextClosingCurly = GetExpression(
            SyntaxTokenTypes.LeftCurly,
            SyntaxTokenTypes.RightCurly,
            i,
            tokens
          );

          var expression = ParseTokens(
            tokens.GetRange(i, nextClosingCurly - i)
          );

          i = nextClosingCurly;



          node = new FunctionDeclaration(parameters, expression, name.Token);
        }

        if (token.Type == SyntaxTokenTypes.VariableAssignment) {
          var previousAstNode = nodes.Pop();
          var nextTerminator = GetNextTerminator(i, tokens);
          var tokensToParse = tokens.GetRange(i + 1, nextTerminator - i);
          i = nextTerminator;
          var parsedParameter = ParseTokens(tokensToParse)[0];
          node = new VariableAssignment(previousAstNode, parsedParameter);
        }

        if (token.Type == SyntaxTokenTypes.Equal) {
          var left = nodes.Pop();
          var right = ParseTokens(new List<SyntaxToken> { tokens[++i]})[0];
          node = new Equal(left, right);
        }

        if (token.Type == SyntaxTokenTypes.Not) {
          var next = ParseTokens(new List<SyntaxToken> { tokens[++i] })[0];
          node = new Not(next);
        }

        if (token.Type == SyntaxTokenTypes.And) {
          var left = nodes.Pop();
          var right = ParseTokens(new List<SyntaxToken> { tokens[++i] })[0];
          node = new And(left, right);
        }

        if (token.Type == SyntaxTokenTypes.GreaterThan) {
          var previousAstNode = nodes.Pop();
          node = new GreaterThan(
            previousAstNode,
            ParseTokens(new List<SyntaxToken>() { tokens[++i] })[0]
          );
        }

        if (token.Type == SyntaxTokenTypes.LessThan) {
          var previousAstNode = nodes.Pop();
          node = new LessThan(
            previousAstNode,
            ParseTokens(new List<SyntaxToken>() { tokens[++i] })[0]
          );
        }

        if (token.Type == SyntaxTokenTypes.Addition) {
          var left = nodes.Pop();
          var right = ParseTokens(new List<SyntaxToken> { tokens[++i] });
          node = new Addition(left, right[0]);
          
        }

        if (token.Type == SyntaxTokenTypes.Subtraction) {
          var left = nodes.Pop();
          var right = ParseTokens(new List<SyntaxToken> { tokens[++i] });
          node = new Subtraction(left, right[0]);
        }

        if (token.Type == SyntaxTokenTypes.Multiplication) {
          var left = nodes.Pop();
          var right = ParseTokens(new List<SyntaxToken> { tokens[++i] });
          node = new Subtraction(left, right[0]);
        }

        if (token.Type == SyntaxTokenTypes.Division) {
          var left = nodes.Pop();
          var right = ParseTokens(new List<SyntaxToken> { tokens[++i] });
          node = new Division(left, right[0]);
        }

        if (token.Type == SyntaxTokenTypes.Mod) {
          var left = nodes.Pop();
          var right = ParseTokens(new List<SyntaxToken> { tokens[++i] });
          node = new Mod(left, right[0]);
        }

        if (token.Type == SyntaxTokenTypes.If) {
          i++;
          var conditionEnd = GetExpression(
            SyntaxTokenTypes.LeftParen,
            SyntaxTokenTypes.RightParen,
            i,
            tokens
          );
          var condition = tokens.GetRange(i, conditionEnd - i);
          i = conditionEnd;
          i++;
          var expressionEnd = GetExpression(
            SyntaxTokenTypes.LeftCurly,
            SyntaxTokenTypes.RightCurly,
            i,
            tokens
          );

          var expression = tokens.GetRange(i + 1, expressionEnd - i);
          i = expressionEnd;
          node = new If(ParseTokens(condition), ParseTokens(expression));
        }

        if (token.Type == SyntaxTokenTypes.While) {
          i++;
          var conditionEnd = GetExpression(
            SyntaxTokenTypes.LeftParen,
            SyntaxTokenTypes.RightParen,
            i,
            tokens
          );
          var condition = tokens.GetRange(i, conditionEnd - i);
          i = conditionEnd;
          i++;
          var expressionEnd = GetExpression(
            SyntaxTokenTypes.LeftCurly,
            SyntaxTokenTypes.RightCurly,
            i,
            tokens
          );

          var expression = tokens.GetRange(i, expressionEnd - i);
          i = expressionEnd;
          node = new While(ParseTokens(condition), ParseTokens(expression));
        }

        if (token.Type == SyntaxTokenTypes.Return) {
          node = new Return();
        }

        nodes.Add(node);
      }
      return nodes.Where(nd => nd != null).ToList();
    }
    
    private int GetNextTerminator(int index, List<SyntaxToken> tokens) {
      while (index < tokens.Count && tokens[index].Type != SyntaxTokenTypes.SemiColon) {
        index++;
      }

      return index;
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

      //Return one less as we will over-step by one
      return index - 1;
    }
  }
}