using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class DerefEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            var ctx = new Context();
            ctx.Variables.Add(new Variable
            {
                MemoryAddress = "123",
                Name = "a",
                VariableDeclaration = new VariableDeclaration("a", ParserContext.NativeTypes.LangInt, null, 0, 0)
            });
            this.result = new DerefEmitter().Transform(
              new Deref(new Identifier("a", null ,0, 0), null ,0, 0),
              ctx
            );
        }

        [TestMethod]
        public void OneRmem()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line.Contains("rmem reg0 reg0")).Count()
            );
        }
    }
}
