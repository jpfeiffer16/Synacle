using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class TernaryEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {

            this.result = new TernaryEmitter().Transform(
                new Ternary(new IntegerLiteral("1", null, 0, 0), new IntegerLiteral("1", null, 0, 0), new IntegerLiteral("0", null, 0, 0), null, 0, 0),
                new Context()
            );
        }

        [TestMethod]
        public void OneJfToNegative()
        {
            Assert.AreEqual(1, this.result.Count(l => l.Contains("jf reg0 >ternary_negative__0_0")));
        }

        [TestMethod]
        public void OneJmpToEndLabel()
        {
            Assert.AreEqual(1, this.result.Count(l => l.Contains("jmp >ternary_end__0_0")));
        }

        [TestMethod]
        public void OneNegativeLabel()
        {
            Assert.AreEqual(1, this.result.Count(l => l.Contains(":ternary_negative__0_0")));
        }

        [TestMethod]
        public void OneEndLabel()
        {
            Assert.AreEqual(1, this.result.Count(l => l.Contains(":ternary_end__0_0")));
        }

    }
}
