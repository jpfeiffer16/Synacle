using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class AmpersandPathEval : Behavior
    {
        private (int, AstNode) result;

        protected override void Given()
        {
            var tokens = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Ampersand,
                    Token = "&"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "a"
                }
            };
            var nodes = new List<AstNode>();
            var index = 0;
            this.result = new AmpersandPath().Eval(index, tokens, nodes, new ParserContext());
        }

        [TestMethod]
        public void IndexIsCorrect()
        {
            Assert.AreEqual(1, result.Item1);
        }

        [TestMethod]
        public void AstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.result.Item2, typeof(AddressOf));
        }

        [TestMethod]
        public void AstNodeParameterIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((AddressOf)this.result.Item2).Parameter, typeof(Identifier)
            );
        }
    }
}
