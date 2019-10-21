using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class GreaterThanEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            this.result = new GreaterThanEmitter().Transform(
              new GreaterThan(
                new IntegerLiteral("1", null, 0, 0),
                new IntegerLiteral("2", null, 0, 0)
              , null, 0, 0),
              new Context()
            );
        }

        [TestMethod]
        public void OneGt()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line == "gt reg0 reg0 reg1").Count()
            );
        }
    }
}
