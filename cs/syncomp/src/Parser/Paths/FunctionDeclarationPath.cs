using System;
using System.Collections.Generic;

namespace syncomp
{
  public class FunctionDeclarationPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.FunctionDeclaration;
    }

    public override Func<int, List<SyntaxToken>, List<AstNode>, Tuple<int, AstNode>> Eval
    {
      get => (int i, List<SyntaxToken> tokens, List<AstNode> nodes) => {
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



          return new Tuple<int, AstNode>(i, new FunctionDeclaration(parameters, expression, name?.Token));
      };
    }
  }
}