using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class IdentifierEmitterTransform : Behavior
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
            this.result = new IdentifierEmitter().Transform(
              new Identifier("a", null, 0, 0),
              ctx
            );
        }

        [TestMethod]
        public void OneRmem()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line.Contains("rmem")).Count()
            );
        }
    }
}
