using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class AdditionPathEval : Behavior
    {
        private (int, AstNode) result;

        protected override void Given()
        {
            var tokens = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Addition,
                    Token = "+"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "2"
                }
            };

            var nodes = new List<AstNode>
            {
                new IntegerLiteral("1")
            };

            var index = 0;
            this.result = new AdditionPath().Eval(index, tokens, nodes);
        }

        [TestMethod]
        public void IndexIsCorrect()
        {
            Assert.AreEqual(1, this.result.Item1);
        }

        [TestMethod]
        public void AstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.result.Item2, typeof(Addition));
        }

        [TestMethod]
        public void AstNodeLeftIsCorrect()
        {
            Assert.IsInstanceOfType(((Addition)this.result.Item2).Left, typeof(IntegerLiteral));
        }

        [TestMethod]
        public void AstNodeRightIsCorrect()
        {
            Assert.IsInstanceOfType(((Addition)this.result.Item2).Right, typeof(IntegerLiteral));
        }
    }
}
