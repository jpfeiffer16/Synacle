using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class ReturnPathEval : Behavior
    {
        private (int, AstNode) result;

        protected override void Given()
        {
            var tokens = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Return,
                    Token = "return"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "a"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.SemiColon,
                    Token = ";"
                }
            };
            var nodes = new List<AstNode>();
            var index = 0;

            this.result = new ReturnPath().Eval(index, tokens, nodes, new ParserContext());
        }

        [TestMethod]
        public void IndexIsCorrect()
        {
            Assert.AreEqual(1, this.result.Item1);
        }

        [TestMethod]
        public void AstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.result.Item2, typeof(Return));
        }

        [TestMethod]
        public void AstNodeParameterIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((Return)this.result.Item2).Parameter,
              typeof(Identifier)
            );
        }
    }
}
