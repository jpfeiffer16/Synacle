using System;
using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using syncomp;

namespace syncomp.Tests
{
  [TestClass]
  public class IdentifierEmitterTransform : Behavior
  {
    private List<string> result;

    protected override void Given()
    {
      var ctx = new Context();
      ctx.Variables.Add(new Variable
      {
        MemoryAddress = "123",
        Name = "a"
      });
      this.result = new IdentifierEmitter().Transform(
        new Identifier("a"),
        ctx
      );
    }

    [TestMethod]
    public void OneRmem()
    {
      Assert.AreEqual(
        1,
        this.result.Where(line => line.Contains("rmem")).Count()
      );
    }
  }
}
