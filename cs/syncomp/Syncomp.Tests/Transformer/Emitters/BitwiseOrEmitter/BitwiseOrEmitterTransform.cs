
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class BitwiseOrEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            this.result = new BitwiseOrEmitter().Transform(
                new BitwiseOr(
                    new IntegerLiteral("10", null, 0, 0),
                    new IntegerLiteral("10", null, 0, 0), null, 0, 0), new Context());
        }

        [TestMethod]
        public void OneOr()
        {
            Assert.AreEqual(
                1,
                this.result.Where(line => line.Contains("or")).Count()
            );
        }
    }
}
