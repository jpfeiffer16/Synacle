using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
  [TestClass]
  public class GreaterThanOrEqualPathEval : Behavior
  {
    private (int, AstNode) result;

    protected override void Given()
    {
      var tokens = new List<SyntaxToken>
      {
        new SyntaxToken
        {
          Type = SyntaxTokenType.Identifier,
          Token = "a"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.LessThanOrEqual,
          Token = "<="
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.Identifier,
          Token = "10"
        }
      };
      var nodes = new List<AstNode>();
      var index = 0;

      this.result = new GreaterThanOrEqualPath().Eval(index, tokens, nodes);
    }

    //TODO: Left off here
  }
}