using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class AmpersandPathEval : Behavior
    {
        private (int, AstNode) bitwiseAndResult;
        private (int, AstNode) adressOfResult;

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
            var nodes = new List<AstNode>
            {
                new Identifier("b", null, 0, 0)
            };
            var index = 0;
            this.bitwiseAndResult = new AmpersandPath().Eval(index, tokens, nodes, new ParserContext());
            index = 0;
            this.adressOfResult = new AmpersandPath().Eval(index, tokens, new List<AstNode>(), new ParserContext());
        }

#region AddressOf
        [TestMethod]
        public void AddressOfIndexIsCorrect()
        {
            Assert.AreEqual(1, this.adressOfResult.Item1);
        }

        [TestMethod]
        public void AddressOfAstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.adressOfResult.Item2, typeof(AddressOf));
        }

        [TestMethod]
        public void AddressOfAstNodeParameterIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((AddressOf)this.adressOfResult.Item2).Parameter, typeof(Identifier)
            );
        }
#endregion

#region BitwiseAnd
        [TestMethod]
        public void BitwiseAndIndexIsCorrect()
        {
            Assert.AreEqual(1, this.bitwiseAndResult.Item1);
        }

        [TestMethod]
        public void BitwiseAndAstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.bitwiseAndResult.Item2, typeof(BitwiseAnd));
        }

        [TestMethod]
        public void BitwiseAndAstNodeLeftIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((BitwiseAnd)this.bitwiseAndResult.Item2).Left, typeof(Identifier)
            );
        }

        [TestMethod]
        public void BitwiseAndAstNodeRightIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((BitwiseAnd)this.bitwiseAndResult.Item2).Right, typeof(Identifier)
            );
        }
#endregion
    }
}
