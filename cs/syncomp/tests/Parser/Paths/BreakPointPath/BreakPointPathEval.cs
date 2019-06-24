using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
  public class BreakPointPathEval : Behavior
  {
    private (int, AstNode) result;

    protected override void Given()
    {
      var tokens = new List<SyntaxToken>
      {
        new SyntaxToken
        {
          Type = SyntaxTokenType.Breakpoint,
          Token = "breakpoint"
        }
      };
      var nodes = new List<AstNode>();
      var index = 0;
      this.result = new BreakpointPath().Eval(index, tokens, nodes);
    }

    [TestMethod]
    public void IndexIsCorrect()
    {
      Assert.AreEqual(0, this.result.Item1);
    }

    [TestMethod]
    public void AstNodeIsCorrect()
    {
      Assert.IsInstanceOfType(this.result.Item2, typeof(Breakpoint));
    }
  }
}
