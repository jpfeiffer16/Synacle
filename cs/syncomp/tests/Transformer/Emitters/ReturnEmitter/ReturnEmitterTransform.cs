using System;
using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using syncomp;

namespace syncomp.Tests
{
  [TestClass]
  public class ReturnEmitterTransform : Behavior
  {
    private List<string> result;

    protected override void Given()
    {
      this.result = new ReturnEmitter().Transform(
        new Return(new IntegerLiteral("1")),
        new Context()
      );
    }

    // Test the set from the integer literal
    [TestMethod]
    public void OneSet()
    {
      Assert.AreEqual(
        1,
        this.result.Where(line => line.Contains("set")).Count()
      );
    }

    [TestMethod]
    public void OneRet()
    {
      Assert.AreEqual(
        1,
        this.result.Where(line => line == "ret").Count()
      );
    }
  }
}
