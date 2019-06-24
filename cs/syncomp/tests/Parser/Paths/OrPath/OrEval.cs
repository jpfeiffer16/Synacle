using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
  public class OrPathEval : Behavior
  {
    private (int, AstNode) result;

    protected override void Given()
    {
      var tokens = new List<SyntaxToken>
      {
        new SyntaxToken
        {
          Type = SyntaxTokenType.Or,
          Token = "||"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.Identifier,
          Token = "0"
        }
      };
      var astNodes = new List<AstNode>
      {
        new Identifier("a")
      };
      var index = 0;
      this.result = new OrPath().Eval(index, tokens, astNodes);
    }

    [TestMethod]
    public void IndexIsCorrect()
    {
      Assert.AreEqual(1, result.Item1);
    }

    [TestMethod]
    public void AstNodeIsOr()
    {
      Assert.IsInstanceOfType(result.Item2, typeof(Or));
    }

    [TestMethod]
    public void AstNodeLeftIsCorrect()
    {
      Assert.IsInstanceOfType(((Or)result.Item2).Left, typeof(Identifier));
    }

    [TestMethod]
    public void AstNodeRightsCorrect()
    {
      Assert.IsInstanceOfType(((Or)result.Item2).Right, typeof(IntegerLiteral));
    }
  }
}
