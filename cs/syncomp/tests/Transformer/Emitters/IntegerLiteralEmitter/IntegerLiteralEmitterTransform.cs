using System;
using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using syncomp;

namespace syncomp.Tests
{
  [TestClass]
  public class IntegerLiteralEmitterTransform : Behavior
  {
    private List<string> result;

    protected override void Given()
    {
      this.result = new IntegerLiteralEmitter().Transform(
        new IntegerLiteral("a"),
        new Context()
      );
    }

    [TestMethod]
    public void OneSet()
    {
      Assert.AreEqual(
        1,
        this.result.Where(line => line.Contains("set")).Count()
      );
    }
  }
}
