using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
  [TestClass]
  public class DecrPathEval : Behavior
  {
    private (int, AstNode) result;

    protected override void Given()
    {
      var tokens = new List<SyntaxToken>
      {
        new SyntaxToken
        {
          Type = SyntaxTokenType.Decr,
          Token = "--"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.Identifier,
          Token = "a"
        }
      };
      var nodes = new List<AstNode>();
      var index = 0;
      this.result = new DecrPath().Eval(index, tokens, nodes);
    }

    [TestMethod]
    public void IndexIsCorrect()
    {
      Assert.AreEqual(1, this.result.Item1);
    }

    [TestMethod]
    public void AstNodeIsCorrect()
    {
      Assert.IsInstanceOfType(this.result.Item2, typeof(Decr));
    }

    [TestMethod]
    public void AstNodeParameterIsCorrect()
    {
      Assert.IsInstanceOfType(((Decr)this.result.Item2).Parameter, typeof(Identifier));
    }
  }
}