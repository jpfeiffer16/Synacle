using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class StringLiteralPathEval : Behavior
    {
        private (int, AstNode) result;

        protected override void Given()
        {
            var tokens = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.StringLiteral,
                    Token = "\"test\""
                }
            };
            var nodes = new List<AstNode>();
            var index = 0;

            this.result = new StringLiteralPath().Eval(index, tokens, nodes, new ParserContext());
        }

        [TestMethod]
        public void IndexIsCorrect()
        {
            Assert.AreEqual(0, this.result.Item1);
        }

        [TestMethod]
        public void AstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.result.Item2, typeof(StringLiteral));
        }
    }
}
