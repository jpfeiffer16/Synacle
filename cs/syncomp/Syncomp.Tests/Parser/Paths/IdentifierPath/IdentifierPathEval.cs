using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class IdentifierPathEval : Behavior
    {
        private (int, AstNode) result;

        protected override void Given()
        {
            var tokens = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "a"
                }
            };
            var nodes = new List<AstNode>();
            var index = 0;

            this.result = new IdentifierPath().Eval(index, tokens, nodes, new ParserContext());
        }

        [TestMethod]
        public void IndexIsCorrect()
        {
            Assert.AreEqual(0, this.result.Item1);
        }

        [TestMethod]
        public void AstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.result.Item2, typeof(Identifier));
        }

        [TestMethod]
        public void AstNodeNameIsCorrect()
        {
            Assert.AreEqual(
              "a",
              ((Identifier)this.result.Item2).Name
            );
        }
    }
}
