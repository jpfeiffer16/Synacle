using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class IfEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            this.result = new IfEmitter().Transform(
              new If(
                new List<AstNode> { new IntegerLiteral("1") },
                new List<AstNode> { new IntegerLiteral("1") }
              ),
              new Context()
            );
        }

        [TestMethod]
        public void OneJf()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line.Contains("jf")).Count()
            );
        }

        [TestMethod]
        public void OneEndLabel()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line.Contains(":end_")).Count()
            );
        }
    }
}
