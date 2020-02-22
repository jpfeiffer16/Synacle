using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class AsEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            var from = new StringLiteral("Hello!", null, 0, 0);
            var to = ParserContext.NativeTypes.LangInt;
            this.result = new AsEmitter()
              .Transform(new As(from, to, null, 0, 0), new Context());
        }

        [TestMethod]
        public void OneSetForIntegerLiteral()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line.Contains("set")).Count()
            );
        }
    }
}
