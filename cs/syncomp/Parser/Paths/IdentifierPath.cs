using System;
using System.Collections.Generic;

namespace syncomp
{
  public class IdentifierPath : ParserPath
  {
    public SyntaxTokenType Match {
      get => SyntaxTokenType.Identifier;
    }

    public Func<int, List<SyntaxToken>, List<AstNode>, AstNode> Eval
    {
      get => (int i, List<SyntaxToken> tokens, List<AstNode> nodes) => {
          SyntaxToken nextToken;
          AstNode node;

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
      };
    }
  }
}