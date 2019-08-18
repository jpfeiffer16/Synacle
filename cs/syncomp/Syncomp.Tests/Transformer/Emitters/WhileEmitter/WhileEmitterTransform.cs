using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class WhileEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            this.result = new WhileEmitter().Transform(
              new While(
                new List<AstNode> { new IntegerLiteral("1") },
                new List<AstNode> { new IntegerLiteral("2") }
              ),
              new Context()
            );
        }

        [TestMethod]
        public void OneWhileBeginLabel()
        {
            Assert.AreEqual(
              1,
              this.result.Where(
                line => line.Contains(":while") && !line.Contains("_end")
              ).Count()
            );
        }

        [TestMethod]
        public void OneJf()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line.Contains("jf")).Count()
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
        public void OneWhileEndLabel()
        {
            Assert.AreEqual(
              1,
              this.result.Where(
                line => line.Contains(":while_") && line.Contains("_end")
              ).Count()
            );
        }
    }
}
