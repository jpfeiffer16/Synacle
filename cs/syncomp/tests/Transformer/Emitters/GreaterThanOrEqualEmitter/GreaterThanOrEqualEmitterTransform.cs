using System;
using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using syncomp;

namespace syncomp.Tests
{
  [TestClass]
  public class GreaterThanOrEqualEmitterTransform : Behavior
  {
    private List<string> result;

    protected override void Given()
    {
      this.result = new GreaterThanOrEqualEmitter().Transform(
        new GreaterThanOrEqual(
          new IntegerLiteral("1"),
          new IntegerLiteral("1")
        ),
        new Context()
      );
    }

    [TestMethod]
    public void OneGt()
    {
      Assert.AreEqual(
        1,
        this.result.Where(line => line == "gt reg2 reg0 reg1").Count()
      );
    }

    [TestMethod]
    public void OneEq()
    {
      Assert.AreEqual(
        1,
        this.result.Where(line => line == "eq reg3 reg0 reg1").Count()
      );
    }

    [TestMethod]
    public void Oneor()
    {
      Assert.AreEqual(
        1,
        this.result.Where(line => line == "or reg0 reg2 reg3").Count()
      );
    }
  }
}
