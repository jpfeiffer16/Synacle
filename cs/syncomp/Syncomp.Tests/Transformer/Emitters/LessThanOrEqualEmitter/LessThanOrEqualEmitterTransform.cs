using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class LessThanOrEqualEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            this.result = new LessThanOrEqualEmitter().Transform(
              new LessThanOrEqual(
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
              this.result.Where(line => line.Contains("gt")).Count()
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
