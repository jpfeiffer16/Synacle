using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class AndPathEval : Behavior
    {
        private (int, AstNode) result;

        protected override void Given()
        {
            var tokes = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.And,
                    Token = "&&"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "a"
                }
            };

            var nodes = new List<AstNode>
            {
                new IntegerLiteral("10")
            };
            var index = 0;

            this.result = new AndPath().Eval(index, tokes, nodes);
        }

        [TestMethod]
        public void IndexIsCorrect()
        {
            Assert.AreEqual(1, this.result.Item1);
        }

        [TestMethod]
        public void AstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.result.Item2, typeof(And));
        }

        [TestMethod]
        public void AstNodeLeftIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((And)this.result.Item2).Left, typeof(IntegerLiteral)
            );
        }

        [TestMethod]
        public void AstNodeRightIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((And)this.result.Item2).Right, typeof(Identifier)
            );
        }
    }
}
