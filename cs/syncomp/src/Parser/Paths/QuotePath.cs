using System;
using System.Linq;
using System.Collections.Generic;

namespace syncomp
{
  public class QuotePath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.Quote;
    }

    public override Func<int, List<SyntaxToken>, List<AstNode>, Tuple<int, AstNode>> Eval
    {
      get => (int i, List<SyntaxToken> tokens, List<AstNode> nodes) => {
        ++i;
        var originalI = i;
        while (tokens[i].Type != SyntaxTokenType.Quote) {
          i++;
        }
        return new Tuple<int, AstNode>(i, new StringLiteral(
          string.Join(string.Empty, tokens.GetRange(originalI, i - originalI).Select(tkn => tkn.Token))
        ));
      };
    }
  }
}