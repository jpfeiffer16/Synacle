using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class BitwiseNotEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            this.result = new BitwiseNotEmitter().Transform(
                new BitwiseNot(
                    new IntegerLiteral("10", null, 0, 0), null, 0, 0), new Context());
        }

        [TestMethod]
        public void OneNot()
        {
            Assert.AreEqual(
                1,
                this.result.Where(line => line.Contains("not")).Count()
            );
        }
    }
}
