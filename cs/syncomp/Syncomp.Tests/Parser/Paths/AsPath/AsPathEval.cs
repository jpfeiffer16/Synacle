using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class AsPathEavl : Behavior
    {
        private (int, AstNode) result;

        protected override void Given()
        {
            var tokens = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.As,
                    Token = "as"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "ptr"
                }
            };

            var nodes = new List<AstNode>
            {
                new IntegerLiteral("123", null, 0, 0)
            };

            this.result = new AsPath().Eval(0, tokens, nodes, new ParserContext());
        }

        [TestMethod]
        public void IndexIsCorrect()
        {
            Assert.AreEqual(1, this.result.Item1);
        }

        [TestMethod]
        public void AstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.result.Item2, typeof(As));
        }

        [TestMethod]
        public void AstNodeFromIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((As)this.result.Item2).From, typeof(IntegerLiteral)
            );
        }

        [TestMethod]
        public void AstNodeToIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((As)this.result.Item2).To, typeof(LangType)
            );
        }
    }
}
