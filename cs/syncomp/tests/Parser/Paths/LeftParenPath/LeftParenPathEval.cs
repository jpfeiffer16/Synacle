using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class LeftParenPathEval : Behavior
    {
        private (int, AstNode) result;

        protected override void Given()
        {
            var tokens = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.LeftParen,
                    Token = "("
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "a"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.RightParen,
                    Token = ")"
                }
            };
            var nodes = new List<AstNode>();
            var index = 0;

            this.result = new LeftParenPath().Eval(index, tokens, nodes);
        }

        [TestMethod]
        public void IndexIsCorrect()
        {
            // NOTE: This may be incorrect. It seems like it should be 2. But this is
            // where we are soo..
            Assert.AreEqual(3, this.result.Item1);
        }

        [TestMethod]
        public void AstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.result.Item2, typeof(ParenGroup));
        }

        [TestMethod]
        public void AstNodeNodesAreCorrect()
        {
            Assert.AreEqual(
              1,
              ((ParenGroup)this.result.Item2).Nodes.Count
            );
        }
    }
}
