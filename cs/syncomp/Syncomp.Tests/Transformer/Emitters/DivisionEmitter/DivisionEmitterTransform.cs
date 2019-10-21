using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class DivisionEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            this.result = new DivisionEmitter().Transform(
              new Division(new IntegerLiteral("3", null ,0, 0), new IntegerLiteral("1", null ,0, 0), null ,0, 0),
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
        public void OneCallToDivide()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line.Contains("call >divide")).Count()
            );
        }
    }
}
