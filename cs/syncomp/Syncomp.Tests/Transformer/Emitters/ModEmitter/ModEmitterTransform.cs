using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class ModEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            this.result = new ModEmitter().Transform(
              new Mod(new IntegerLiteral("5", null, 0, 0), new IntegerLiteral("2", null, 0, 0), null, 0, 0),
              new Context()
            );
        }

        [TestMethod]
        public void OneMod()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line.Contains("mod")).Count()
            );
        }
    }
}
