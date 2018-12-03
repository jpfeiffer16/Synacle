using System;
using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using syncomp;

namespace syncomp.Tests
{
  [TestClass]
  public class BreakpointEmitterTranform : Behavior
  {
    private List<string> result;

    protected override void Given()
    {
      this.result = new BreakpointEmitter()
        .Transform(new Breakpoint(), new Context());
    }

    [TestMethod]
    public void OneBreakpoint()
    {
      Assert.AreEqual(
        1,
        this.result.Where(line => line.Contains("breakpoint")).Count()
      );
    }
  }
}