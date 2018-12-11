using System;
using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using syncomp;

namespace syncomp.Tests
{
  [TestClass]
  public class OrEmitterTransform : Behavior
  {
    private List<string> result;

    protected override void Given()
    {
      this.result = new OrEmitter().Transform(
        new Or(new IntegerLiteral("1"), new IntegerLiteral("1")),
        new Context()
      );
    }

    [TestMethod]
    public void OneCallToOr()
    {
      Assert.AreEqual(
        1,
        this.result.Where(line => line == "call >or").Count()
      );
    }
  }
}
