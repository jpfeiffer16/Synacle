using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class DerefArrowPathEval : Behavior
    {
        private (int, AstNode) result;

        protected override void Given()
        {
            var tokens = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.DerefArrow,
                    Token = "->"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "test_field"
                }
            };

            var nodes = new List<AstNode>
            {
                new Identifier("test_var", null, 0, 0)
            };

            this.result = new DerefArrowPath().Eval(0, tokens, nodes, new ParserContext());
        }

        [TestMethod]
        public void IndexIsCorrect()
        {
            Assert.AreEqual(1, this.result.Item1);
        }

        [TestMethod]
        public void AstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.result.Item2, typeof(DerefArrow));
        }

        [TestMethod]
        public void AstNodeLeftIsCorrect()
        {
            Assert.IsInstanceOfType((this.result.Item2 as DerefArrow).Left, typeof(Identifier));
        }

        [TestMethod]
        public void AstNodeRightIsCorrect()
        {
            Assert.IsInstanceOfType((this.result.Item2 as DerefArrow).Right, typeof(Identifier));
        }
    }
}
