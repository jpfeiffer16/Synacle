using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class IfPathEval : Behavior
    {
        private (int, AstNode) result;

        protected override void Given()
        {
            var tokens = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.If,
                    Token = "if"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.LeftParen,
                    Token = "("
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "0"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.RightParen,
                    Token = ")"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.LeftCurly,
                    Token = "{"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.RightCurly,
                    Token = "}"
                }
            };
            var nodes = new List<AstNode>();
            var index = 0;

            this.result = new IfPath().Eval(index, tokens, nodes);
        }

        [TestMethod]
        public void IndexIsCorrect()
        {
            Assert.AreEqual(5, this.result.Item1);
        }

        [TestMethod]
        public void AstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.result.Item2, typeof(If));
        }

        [TestMethod]
        public void AstNodeConditionIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((If)this.result.Item2).Condition.FirstOrDefault(),
              typeof(IntegerLiteral)
            );
        }

        [TestMethod]
        public void AstNodeExpressionIsCorrect()
        {
            Assert.AreEqual(
              0,
              ((If)this.result.Item2).Expression.Count()
            );
        }
    }
}
