using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class FunctionCallEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            // TODO: Test intrinsics here
            this.result = new FunctionCallEmitter().Transform(
              new FunctionCall(new List<AstNode>(), new Identifier("test", null, 0, 0), null, 0, 0),
              new Context()
            );
        }

        [TestMethod]
        public void OneCallToTest()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line.Contains("call >test")).Count()
            );
        }
    }
}
