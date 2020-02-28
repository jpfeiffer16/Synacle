
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class DotEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            var left = new Identifier("test_variable", null, 0, 0);
            var right = new Identifier("id", null, 0, 0);
            var langType = new LangType("test_type", null, "test_file.bc", 1, 2);
            var typeVariable = new Variable {
                Name = "test_variable", VariableDeclaration = new VariableDeclaration("test_variable", langType, "test.bc", 1, 2)
            };
            var ctx = new Context { Variables = new VariableStack() };
            ctx.Variables.Add(typeVariable);
            this.result = new DotEmitter()
              .Transform(new Dot(left, right, null, 0, 0), ctx);
        }

        [TestMethod]
        public void OneResultLine()
        {
            Assert.AreEqual(1, this.result.Count());
        }

        [TestMethod]
        public void OneRmem()
        {
            Assert.AreEqual(1, this.result.Count(line => line.Contains("rmem")));
        }

        [TestMethod]
        public void FieldLabelIsCorrect()
        {
            var expectedMemoryAddress = "fld_test_variable_test_1_id";
            Assert.AreEqual($"rmem reg0 >{expectedMemoryAddress}", this.result.FirstOrDefault());
        }
    }
}
