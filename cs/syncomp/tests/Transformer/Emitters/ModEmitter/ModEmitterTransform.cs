using System;
using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using syncomp;

namespace syncomp.Tests
{
  [TestClass]
  public class ModEmitterTransform : Behavior
  {
    private List<string> result;

    protected override void Given()
    {
      this.result = new ModEmitter().Transform(
        new Mod(new IntegerLiteral("5"), new IntegerLiteral("2")),
        new Context()
      );
    }

    [TestMethod]
    public void OneMod()
    {
      Assert.AreEqual(
        1,
        this.result.Where(line => line.Contains("mod")).Count()
      );
    }
  }
}
