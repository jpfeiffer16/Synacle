using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class FunctionDeclarationEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            var ctx = new Context();

            this.result = new FunctionDeclarationEmitter().Transform(
              new FunctionDeclaration(
                new List<AstNode>
                {
            new VariableDeclaration("a")
                },
                new List<AstNode>
                {
            new FunctionCall(
              new List<AstNode>
              {
                new IntegerLiteral("65")
              },
              "out"
            )
                },
                "test"
              ),
              ctx
            );
        }

        [TestMethod]
        public void OneNameLabel()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line == ":test").Count()
            );
        }

        [TestMethod]
        public void OneEndNameLabel()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line == ":test_end").Count()
            );
        }

        [TestMethod]
        public void OneSetReg()
        {
            Assert.AreEqual(
              1,
              this.result.Where(line => line == "set reg0 >test").Count()
            );
        }
    }
}
