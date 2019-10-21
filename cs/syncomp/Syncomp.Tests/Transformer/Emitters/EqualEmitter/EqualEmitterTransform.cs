using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class EqualEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            this.result = new EqualEmitter().Transform(
              new Equal(new IntegerLiteral("1", null ,0, 0), new IntegerLiteral("1", null ,0, 0), null ,0, 0),
              new Context()
            );
        }

        [TestMethod]
        public void TwoSets()
        {
            Assert.AreEqual(
              2,
              this.result.Where(line => line.Contains("set")).Count()
            );
        }

        [TestMethod]
        public void OneEq()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line.Contains("eq reg0 reg0 reg1")).Count()
            );
        }
    }
}
