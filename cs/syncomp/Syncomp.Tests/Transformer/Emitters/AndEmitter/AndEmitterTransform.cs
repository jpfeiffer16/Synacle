using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class AndEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {

            this.result = new AndEmitter()
              .Transform(new And(
                new IntegerLiteral("0", null, 0, 0), new IntegerLiteral("1", null, 0, 0)
              , null, 0, 0), new Context());
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
        public void OneAndCall()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line.Contains("call >and")).Count()
            );
        }
    }
}
