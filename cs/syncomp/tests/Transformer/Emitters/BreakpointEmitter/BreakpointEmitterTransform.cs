using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class BreakpointEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            this.result = new BreakpointEmitter().Transform(
                new Breakpoint(), new Context());
        }

        private void OneBrekpoint()
        {
            Assert.AreEqual(
                1,
                this.result.Where(line => line.Contains("breakpoint"))
            );
        }
    }
}
