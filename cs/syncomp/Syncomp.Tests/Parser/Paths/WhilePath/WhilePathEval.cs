using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class WhilePathEval : Behavior
    {
        private (int, AstNode) result;

        protected override void Given()
        {
            var tokens = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.While,
                    Token = "while"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.LeftParen,
                    Token = "("
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "i"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Equal,
                    Token = "=="
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
                    Type = SyntaxTokenType.Incr,
                    Token = "++"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "i"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.SemiColon,
                    Token = ";"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.RightCurly,
                    Token = "}"
                }
            };
            var nodes = new List<AstNode>();
            var index = 0;

            this.result = new WhilePath().Eval(index, tokens, nodes, new ParserContext());
        }

        [TestMethod]
        public void IndexIsCorrect()
        {
            Assert.AreEqual(10, this.result.Item1);
        }

        [TestMethod]
        public void AstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.result.Item2, typeof(While));
        }

        [TestMethod]
        public void AstNodeConditionSectionIsCorrect()
        {
            Assert.IsInstanceOfType(
              (this.result.Item2 as While).Condition.FirstOrDefault(),
              typeof(Equal)
            );
        }

        [TestMethod]
        public void AstNodeExpressionSectionIsCorrect()
        {
            Assert.AreEqual(1, (this.result.Item2 as While).Expression.Count());
        }
    }
}
