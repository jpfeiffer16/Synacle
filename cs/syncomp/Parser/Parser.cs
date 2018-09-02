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
      return ParseTokens(this.tokens);
    }

    private List<AstNode> ParseTokens(List<SyntaxToken> tokens) {
      var nodes = new List<AstNode>();
      for (var i = 0; i < tokens.Count; i++) {
        var token = tokens[i];
        AstNode node = null;
        if (token.Type == SyntaxTokenType.Identifier) {

          SyntaxToken nextToken;
          if (i + 1 < tokens.Count && (nextToken = tokens[i + 1]).Type == SyntaxTokenType.LeftParen) {

            i++;
            var nextClose = GetExpression(SyntaxTokenType.LeftParen, SyntaxTokenType.RightParen, i, tokens);
            ++i;
            var parametersNodes = ParseTokens(tokens.GetRange(i, nextClose - i));
            i = nextClose;
            
            node = new FunctionCall(
              parametersNodes,
              token.Token
            );
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

        if (token.Type == SyntaxTokenType.VariableDeclaration) {
          var nextToken = tokens[++i];

          node = new VariableDeclaration(nextToken.Token);
        }

        if (token.Type == SyntaxTokenType.FunctionDeclaration) {
          var name = tokens[++i];
          if (name.Type != SyntaxTokenType.Identifier) {
            name = null;
            i--;
          }
          i++;
          var nextClosingParen = GetExpression(
            SyntaxTokenType.LeftParen,
            SyntaxTokenType.RightParen,
            i,
            tokens
          );
          ++i;
          var parameters = ParseTokens(
            tokens.GetRange(i, nextClosingParen - i)
          );

          i = nextClosingParen + 1;

          var nextClosingCurly = GetExpression(
            SyntaxTokenType.LeftCurly,
            SyntaxTokenType.RightCurly,
            i,
            tokens
          );

          var expression = ParseTokens(
            tokens.GetRange(i, nextClosingCurly - i + 1)
          );

          i = nextClosingCurly;



          node = new FunctionDeclaration(parameters, expression, name?.Token);
        }

        if (token.Type == SyntaxTokenType.VariableAssignment) {
          var previousAstNode = nodes.Pop();
          var nextTerminator = GetNextTerminator(i, tokens);
          var tokensToParse = tokens.GetRange(i + 1, nextTerminator - i);
          i = nextTerminator;
          var parsedParameter = ParseTokens(tokensToParse)[0];
          node = new VariableAssignment(previousAstNode, parsedParameter);
        }

        if (token.Type == SyntaxTokenType.Equal) {
          var left = nodes.Pop();
          var right = ParseTokens(new List<SyntaxToken> { tokens[++i]})[0];
          node = new Equal(left, right);
        }

        if (token.Type == SyntaxTokenType.Not) {
          var nextTerminator = this.GetNextTerminator(i, tokens);
          var next = ParseTokens(tokens.GetRange(++i, nextTerminator - i))[0];
          i = nextTerminator;
          node = new Not(next);
        }

        if (token.Type == SyntaxTokenType.And) {
          var left = nodes.Pop();
          var right = ParseTokens(new List<SyntaxToken> { tokens[++i] })[0];
          node = new And(left, right);
        }

        if (token.Type == SyntaxTokenType.Or) {
          var left = nodes.Pop();
          var right = ParseTokens(new List<SyntaxToken> { tokens[++i] })[0];
          node = new Or(left, right);
        }

        if (token.Type == SyntaxTokenType.GreaterThan) {
          var previousAstNode = nodes.Pop();
          node = new GreaterThan(
            previousAstNode,
            ParseTokens(new List<SyntaxToken>() { tokens[++i] })[0]
          );
        }

        if (token.Type == SyntaxTokenType.GreaterThanOrEqual) {
          var previousAstNode = nodes.Pop();
          node = new GreaterThanOrEqual(
            previousAstNode,
            ParseTokens(new List<SyntaxToken>() { tokens[++i] })[0]
          );
        }

        if (token.Type == SyntaxTokenType.LessThan) {
          var previousAstNode = nodes.Pop();
          node = new LessThan(
            previousAstNode,
            ParseTokens(new List<SyntaxToken>() { tokens[++i] })[0]
          );
        }

        if (token.Type == SyntaxTokenType.LessThanOrEqual) {
          var previousAstNode = nodes.Pop();
          node = new LessThanOrEqual(
            previousAstNode,
            ParseTokens(new List<SyntaxToken>() { tokens[++i] })[0]
          );
        }

        if (token.Type == SyntaxTokenType.Addition) {
          var left = nodes.Pop();
          var right = ParseTokens(new List<SyntaxToken> { tokens[++i] });
          node = new Addition(left, right[0]);
          
        }

        if (token.Type == SyntaxTokenType.Incr) {
          var next = ParseTokens(new List<SyntaxToken> { tokens[++i] });
          node = new Incr(next[0]);
        }

        if (token.Type == SyntaxTokenType.Subtraction) {
          var left = nodes.Pop();
          var right = ParseTokens(new List<SyntaxToken> { tokens[++i] });
          node = new Subtraction(left, right[0]);
        }

        if (token.Type == SyntaxTokenType.Decr) {
          var next = ParseTokens(new List<SyntaxToken> { tokens[++i] });
          node = new Decr(next[0]);
        }

        if (token.Type == SyntaxTokenType.Multiplication) {
          var left = nodes.Pop();
          var right = ParseTokens(new List<SyntaxToken> { tokens[++i] });
          node = new Subtraction(left, right[0]);
        }

        if (token.Type == SyntaxTokenType.Division) {
          var left = nodes.Pop();
          var right = ParseTokens(new List<SyntaxToken> { tokens[++i] });
          node = new Division(left, right[0]);
        }

        if (token.Type == SyntaxTokenType.Mod) {
          var left = nodes.Pop();
          var right = ParseTokens(new List<SyntaxToken> { tokens[++i] });
          node = new Mod(left, right[0]);
        }

        if (token.Type == SyntaxTokenType.If) {
          i++;
          var conditionEnd = GetExpression(
            SyntaxTokenType.LeftParen,
            SyntaxTokenType.RightParen,
            i,
            tokens
          );
          ++i;
          var condition = tokens.GetRange(i, conditionEnd - i);
          i = conditionEnd;
          i++;
          var expressionEnd = GetExpression(
            SyntaxTokenType.LeftCurly,
            SyntaxTokenType.RightCurly,
            i,
            tokens
          );

          var expression = tokens.GetRange(i + 1, expressionEnd - i);
          i = expressionEnd;
          node = new If(ParseTokens(condition), ParseTokens(expression));
        }

        if (token.Type == SyntaxTokenType.While) {
          i++;
          var conditionEnd = GetExpression(
            SyntaxTokenType.LeftParen,
            SyntaxTokenType.RightParen,
            i,
            tokens
          );
          ++i;
          var condition = tokens.GetRange(i, conditionEnd - i);
          i = conditionEnd;
          i++;
          var expressionEnd = GetExpression(
            SyntaxTokenType.LeftCurly,
            SyntaxTokenType.RightCurly,
            i,
            tokens
          );

          var expression = tokens.GetRange(i, expressionEnd - i);
          i = expressionEnd;
          node = new While(ParseTokens(condition), ParseTokens(expression));
        }

        if (token.Type == SyntaxTokenType.For) {
          i++;
          var conditionEnd = GetExpression(
            SyntaxTokenType.LeftParen,
            SyntaxTokenType.RightParen,
            i,
            tokens
          );
          var condition = tokens.GetRange(i + 1, (conditionEnd - i) - 1);
          i = conditionEnd;
          var forConditionList = new List<List<SyntaxToken>>();
          var currentList = new List<SyntaxToken>();
          foreach (var tkn in condition) {
            currentList.Add(tkn);
            if (tkn.Type == SyntaxTokenType.SemiColon) {
              forConditionList.Add(currentList);
              currentList = new List<SyntaxToken>();
            }
          }
          forConditionList.Add(currentList);
          var init = forConditionList[0];
          var cond = forConditionList[1];
          var incr = forConditionList[2];

          i++;
          var expressionEnd = GetExpression(
            SyntaxTokenType.LeftCurly,
            SyntaxTokenType.RightCurly,
            i,
            tokens
          );

          var expression = tokens.GetRange(i, expressionEnd - i);
          i = expressionEnd;

          node = new For(
            ParseTokens(init),
            ParseTokens(cond),
            ParseTokens(incr),
            ParseTokens(expression)
          );
        }

        if (token.Type == SyntaxTokenType.Return) {
          var nextToken = tokens[i + 1];
          if (nextToken.Type != SyntaxTokenType.SemiColon) {
            node = new Return(ParseTokens(new List<SyntaxToken> { nextToken })[0]);
            i++;
          } else {
            node = new Return(null);
          }
        }

        if (token.Type == SyntaxTokenType.AddressOf) {
          var nextNode = ParseTokens(new List<SyntaxToken> { tokens[++i] })[0];
          node = new AddressOf(nextNode);
        }

        if (token.Type == SyntaxTokenType.Deref) {
          var nextTerminator = this.GetNextTerminator(i, tokens);
          ++i;

          // var nextNode = ParseTokens(new List<SyntaxToken> { tokens[++i] })[0];
          var nextNode = ParseTokens(
            tokens.GetRange(i, nextTerminator - i)
          )[0];
          i = nextTerminator;
          node = new Deref(nextNode);
        }

        if (token.Type == SyntaxTokenType.Quote) {
          ++i;
          var originalI = i;
          while (tokens[i].Type != SyntaxTokenType.Quote) {
            i++;
          }
          node = new StringLiteral(
            string.Join(string.Empty, tokens.GetRange(originalI, i - originalI).Select(tkn => tkn.Token))
          );
        }

        if (token.Type == SyntaxTokenType.LeftParen) {
          var expressionEnd = this.GetExpression(
            SyntaxTokenType.LeftParen,
            SyntaxTokenType.RightParen,
            i,
            tokens
          );

          ++i;
          node = new ParenGroup(
            ParseTokens(tokens.GetRange(i, expressionEnd - i))
          );
          
          i = expressionEnd + 1;
        }

        if (token.Type == SyntaxTokenType.Breakpoint) {
          node = new Breakpoint();
        }

        nodes.Add(node);
      }
      return nodes.Where(nd => nd != null).ToList();
    }
    
    private int GetNextTerminator(int index, List<SyntaxToken> tokens) {
      var openers = new List<SyntaxTokenType> {
        SyntaxTokenType.LeftCurly,
        SyntaxTokenType.LeftParen
      };
      var closers = new List<SyntaxTokenType> {
        SyntaxTokenType.RightCurly,
        SyntaxTokenType.RightParen
      };
      var nestingLevel = 0;
      while (
        index < tokens.Count
      ) {
        if (openers.Contains(tokens[index].Type)) nestingLevel++;
        if (closers.Contains(tokens[index].Type)) nestingLevel--;
        if (
          tokens[index].Type == SyntaxTokenType.SemiColon &&
          nestingLevel == 0
        ) break;
        index++;
      }

      return index;
    }

    private int GetExpression(
      SyntaxTokenType openerType,
      SyntaxTokenType closerType,
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