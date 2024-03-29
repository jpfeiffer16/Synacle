using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class AsteriskEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            this.result = new MultiplicationEmitter().Transform(
              new Multiplication(
                new IntegerLiteral("3", null, 0, 0),
                new IntegerLiteral("1", null, 0, 0)
              , null, 0, 0),
              new Context()
            );
        }

        [TestMethod]
        public void OneMult()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line.Contains("mult")).Count()
            );
        }
    }
}
