using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class ParenGroupEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            this.result = new ParenGroupEmitter().Transform(
              new ParenGroup(new List<AstNode>{
                  new IntegerLiteral("1", null, 0, 0)
              }, null, 0, 0),
              new Context()
            );
        }

        // NOTE: Test the contained integer literal since ParenGroupEmitter
        // doesn't actually emit anything itself
        [TestMethod]
        public void OneSet()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line.Contains("set")).Count()
            );
        }
    }
}
