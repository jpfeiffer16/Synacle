using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class VariableDeclarationEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            this.result = new VariableDeclarationEmitter().Transform(
              new VariableDeclaration("a"),
              new Context()
            );
        }

        [TestMethod]
        public void OneJmp()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line.Contains("jmp")).Count()
            );
        }

        [TestMethod]
        public void OneVarLabelBegin()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line =>
                line.Contains(":var_") && !line.Contains("_end")
              ).Count()
            );
        }

        [TestMethod]
        public void OneVarLabelEnd()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line =>
                line.Contains(":var_") && line.Contains("_end")
              ).Count()
            );
        }
    }
}
