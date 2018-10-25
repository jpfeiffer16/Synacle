using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
  [TestClass]
  public class SubtractionPathEval : Behavior
  {
    private (int, AstNode) result;

    protected override void Given()
    {
      var tokens = new List<SyntaxToken>
      {
        new SyntaxToken
        {
          Type = SyntaxTokenType.Subtraction,
          Token = "*"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.Identifier,
          Token = "a"
        }
      };
      var nodes = new List<AstNode>
      {
        new IntegerLiteral("10")
      };
      var index = 0;

      this.result = new SubtractionPath().Eval(index, tokens, nodes);
    }

    [TestMethod]
    public void IndexIsCorrect()
    {
      Assert.AreEqual(1, this.result.Item1);
    }

    [TestMethod]
    public void AstNodeIsCorrect()
    {
      Assert.IsInstanceOfType(this.result.Item2, typeof(Subtraction));
    }

    [TestMethod]
    public void AstNodeLeftIsCorrect()
    {
      Assert.IsInstanceOfType(
        ((Subtraction)this.result.Item2).Left,
        typeof(IntegerLiteral)
      );
    }

    [TestMethod]
    public void AstNodeRightIsCorrect()
    {
      Assert.IsInstanceOfType(
        ((Subtraction)this.result.Item2).Right,
        typeof(Identifier)
      );
    }
  }
}