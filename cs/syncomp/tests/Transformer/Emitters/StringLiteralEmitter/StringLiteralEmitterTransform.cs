using System;
using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using syncomp;
using System.Text.RegularExpressions;

namespace syncomp.Tests
{
  [TestClass]
  public class StringLiteralEmitterTransform : Behavior
  {
    private List<string> result;
    private Regex VarLabelBeginRegex = 
      new Regex("var_\\S*\\n");
    private Regex VarLabelEndRegex =
      new Regex("var_\\S*_end");

    protected override void Given()
    {
      this.result = new StringLiteralEmitter().Transform(
        new StringLiteral("test"),
        new Context()
      );
    }

    [TestMethod]
    public void OneVarBeginLabel()
    {
      Assert.AreEqual(
        1,
        this.result.Where(line => VarLabelBeginRegex.IsMatch(line)).Count()
      );
    }
  }
}
