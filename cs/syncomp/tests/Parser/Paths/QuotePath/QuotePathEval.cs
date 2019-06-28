using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class QuotePathEval : Behavior
    {
        private (int, AstNode) result;

        protected override void Given()
        {
            var tokens = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Quote,
                    Token = "\""
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "test"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Quote,
                    Token = "\""
                }
            };
            var nodes = new List<AstNode>();
            var index = 0;

            this.result = new QuotePath().Eval(index, tokens, nodes);
        }

        [TestMethod]
        public void IndexIsCorrect()
        {
            Assert.AreEqual(2, this.result.Item1);
        }

        [TestMethod]
        public void AstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.result.Item2, typeof(StringLiteral));
        }
    }
}
