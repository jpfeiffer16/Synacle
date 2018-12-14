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

    protected override void Given()
    {
      this.result = new StringLiteralEmitter().Transform(
        new StringLiteral("test"),
        new Context()
      );
    }

    [TestMethod]
    public void OneJmp()
    {
      Assert.AreEqual(
        1,
        this.result.Where(line => line.Contains("jmp")).Count()
      );
    }

    [TestMethod]
    public void OneVarBeginLabel()
    {
      Assert.AreEqual(
        1,
        this.result.Where(
          line => line.Contains(":var_") && !line.Contains("_end")
        ).Count()
      );
    }

    [TestMethod]
    public void One0()
    {
      Assert.AreEqual(
        1,
        this.result.Where(line => line == "0").Count()
      );
    }

    [TestMethod]
    public void OneVarEndLabel()
    {
      Assert.AreEqual(
        1,
        this.result.Where(
          line => line.Contains(":var_") && line.Contains("_end")
        ).Count()
      );
    }

    [TestMethod]
    public void OneWmem()
    {
      Assert.AreEqual(
        1,
        this.result.Where(line => line.Contains("wmem")).Count()
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
