using System;
using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using syncomp;

namespace syncomp.Tests
{
  [TestClass]
  public class MultiplicationEmitterTransform : Behavior
  {
    private List<string> result;

    protected override void Given()
    {
      this.result = new MultiplicationEmitter().Transform(
        new Multiplication(
          new IntegerLiteral("3"),
          new IntegerLiteral("1")
        ),
        new Context()
      );
    }

    [TestMethod]
    public void OneMult()
    {
      Assert.AreEqual(
        1,
        this.result.Where(line => line.Contains("mult")).Count()
      );
    }
  }
}
