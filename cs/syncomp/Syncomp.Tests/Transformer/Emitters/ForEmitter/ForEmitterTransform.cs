using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class ForEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            var ctx = new Context();
            this.result = new ForEmitter().Transform(
              new For(
                new List<AstNode> { new VariableDeclaration("i") },
                new List<AstNode> {
            new LessThan(new Identifier("i"), new IntegerLiteral("10"))
                },
                new List<AstNode> {
            new Incr(new Identifier("i")),
                },
                new List<AstNode>()
              ),
              ctx
            );
        }

        [TestMethod]
        public void OneForBegin()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line =>
                line.Contains(":for_") &&
                line.Contains("_end")
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
        public void OneJmpToFor()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line.Contains("jmp >for_")).Count()
            );
        }

        [TestMethod]
        public void OneForEnd()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line =>
                line.Contains(":for_") &&
                line.Contains("_end")
              ).Count()
            );
        }
    }
}
