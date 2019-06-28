using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class AdditionEmitterTranform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            this.result = new AdditionEmitter()
              .Transform(
                new Addition(new IntegerLiteral("1"), new IntegerLiteral("2")),
                new Context()
              );
        }

        [TestMethod]
        public void TwoRegisterLoads()
        {
            Assert.AreEqual(2, result.Where(line => line.Contains("set")).Count());
        }

        [TestMethod]
        public void OneAdd()
        {
            Assert.AreEqual(1, result.Where(line => line.Contains("add")).Count());
        }
    }
}
