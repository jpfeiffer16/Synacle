using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class TernaryPathEval : Behavior
    {
        private (int, AstNode) result;

        protected override void Given()
        {
            var tokens = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.QuestionMark,
                    Token = "?"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "1"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Colon,
                    Token = ":"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "0"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.SemiColon,
                    Token = ";"
                }
            };
            var nodes = new List<AstNode>
            {
                new IntegerLiteral("1", null, 0, 0)
            };
            var index = 0;
            this.result = new TernaryPath().Eval(index, tokens, nodes, new ParserContext());
        }

        [TestMethod]
        public void IndexIsCorrect()
        {
            Assert.AreEqual(4, this.result.Item1);
        }

        [TestMethod]
        public void AstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.result.Item2, typeof(Ternary));
        }

        [TestMethod]
        public void AstNodeLeftIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((Ternary)this.result.Item2).Left, typeof(IntegerLiteral)
            );
        }

        [TestMethod]
        public void AstNodeRightIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((Ternary)this.result.Item2).Right, typeof(IntegerLiteral)
            );
        }
    }
}
