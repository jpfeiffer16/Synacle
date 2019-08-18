using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class SubtractionEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            this.result = new SubtractionEmitter().Transform(
              new Subtraction(
                new IntegerLiteral("3"),
                new IntegerLiteral("1")
              ),
              new Context()
            );
        }

        [TestMethod]
        public void OneCallToSubtract()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line == "call >subtract").Count()
            );
        }
    }
}
