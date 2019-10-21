using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class AddressOfEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            var context = new Context
            {
                Variables = new VariableStack()
            };

            context.Variables.Add(new Variable
            {
                MemoryAddress = "123",
                Name = "a"
            });

            this.result = new AddressOfEmitter()
              .Transform(new AddressOf(new Identifier("a", null, 0, 0), null, 0, 0), context);
        }

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
