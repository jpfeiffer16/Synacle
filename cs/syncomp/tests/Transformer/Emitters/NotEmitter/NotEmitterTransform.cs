using System;
using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using syncomp;

namespace syncomp.Tests
{
  [TestClass]
  public class NotEmitterTransform : Behavior
  {
    private List<string> result;

    protected override void Given()
    {
      this.result = new NotEmitter().Transform(
        new Not(new IntegerLiteral("1")),
        new Context()
      );
    }

    [TestMethod]
    public void OneCallToNot()
    {
      Assert.AreEqual(
        1,
        this.result.Where(line => line == "call >not").Count()
      );
    }
  }
}
