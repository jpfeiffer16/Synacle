using System;
using System.Collections.Generic;

namespace syncomp
{
  public class VariableDeclarationPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.VariableDeclaration;
    }

    public override Func<int, List<SyntaxToken>, List<AstNode>, Tuple<int, AstNode>> Eval
    {
      get => (int i, List<SyntaxToken> tokens, List<AstNode> nodes) => {
        var nextToken = tokens[++i];

        return new Tuple<int, AstNode>(i, new VariableDeclaration(nextToken.Token));
      };
    }
  }
}