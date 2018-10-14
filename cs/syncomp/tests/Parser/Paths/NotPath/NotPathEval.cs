using System;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using syncomp;

namespace syncomp.Tests
{
  [TestClass]
  public class NotPathEval : Behavior
  {
    private (int, AstNode) result;

    protected override void Given()
    {
      var tokens = new List<SyntaxToken>
      {
        new SyntaxToken
        {
          Token = "!",
          Type = SyntaxTokenType.Not
        },
        new SyntaxToken
        {
          Token = "a",
          Type = SyntaxTokenType.Identifier
        }
      };
      var nodes = new List<AstNode>();
      var index = 0;
      this.result = new NotPath().Eval(index, tokens, nodes);
    }

    [TestMethod]
    public void IndexIsCorrect()
    {
      Assert.AreEqual(1, result.Item1);
    }

    [TestMethod]
    public void AstNodeIsNot()
    {
      Assert.IsInstanceOfType(result.Item2, typeof(Not));
    }
  }
}
