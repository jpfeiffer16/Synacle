using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
  [TestClass]
  public class GreaterThanPathEval : Behavior
  {
    private (int, AstNode) result;

    protected override void Given()
    {
      var tokens = new List<SyntaxToken>
      {
        new SyntaxToken
        {
          Type = SyntaxTokenType.GreaterThan,
          Token = ">"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.Identifier,
          Token = "10"
        }
      };
      var nodes = new List<AstNode>
      {
        new Identifier("a")
      };
      var index = 0;

      this.result = new GreaterThanPath().Eval(index, tokens, nodes);
    }

    [TestMethod]
    public void IndexIsCorrect()
    {
      Assert.AreEqual(1, this.result.Item1);
    }

    [TestMethod]
    public void AstNodeIsCorrect()
    {
      Assert.IsInstanceOfType(this.result.Item2, typeof(GreaterThan));
    }

    [TestMethod]
    public void AstNodeLeftIsCorrect()
    {
      Assert.IsInstanceOfType(
        ((GreaterThan)this.result.Item2).Left,
        typeof(Identifier)
      );
    }

    [TestMethod]
    public void AstNodeRightIsCorrect()
    {
      Assert.IsInstanceOfType(
        ((GreaterThan)this.result.Item2).Right,
        typeof(IntegerLiteral)
      );
    }
  }
}