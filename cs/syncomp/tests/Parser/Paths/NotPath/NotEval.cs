using System;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using syncomp;

namespace syncomp.Tests
{
  [TestClass]
  public class NotEval : Behavior
  {
    public NotPath notPath { get; private set; }

    private Tuple<int, AstNode> result;

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
      this.notPath = new NotPath();
      this.result = this.notPath.Eval(index, tokens, nodes);
    }

    [TestMethod]
    public void IndexIsNow2()
    {
      Assert.IsTrue(this.result.Item1 == 2);
    }
  }
}
