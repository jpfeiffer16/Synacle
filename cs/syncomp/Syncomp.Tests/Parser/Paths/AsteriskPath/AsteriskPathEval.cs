using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class MultiplicationPathEval : Behavior
    {
        private (int, AstNode) multiplicationResult;
        private (int, AstNode) derefResult;

        protected override void Given()
        {
            var tokens = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Asterisk,
                    Token = "*"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "a"
                }
            };
            var nodes = new List<AstNode>
            {
                new IntegerLiteral("10", null, 0, 0)
            };
            var index = 0;

            this.multiplicationResult = new AsteriskPath().Eval(index, tokens, nodes, new ParserContext());
            index = 0;
            this.derefResult = new AsteriskPath().Eval(index, tokens, new List<AstNode>(), new ParserContext());
        }

#region "Multiplication"
        [TestMethod]
        public void MultiplicationIndexIsCorrect()
        {
            Assert.AreEqual(1, this.multiplicationResult.Item1);
        }

        [TestMethod]
        public void MultiplicationAstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.multiplicationResult.Item2, typeof(Multiplication));
        }

        [TestMethod]
        public void MultiplicationAstNodeLeftIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((Multiplication)this.multiplicationResult.Item2).Left,
              typeof(IntegerLiteral)
            );
        }

        [TestMethod]
        public void MultiplicationAstNodeRightIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((Multiplication)this.multiplicationResult.Item2).Right,
              typeof(Identifier)
            );
        }
#endregion

#region "Deref"
        [TestMethod]
        public void IndexIsCorrect()
        {
            Assert.AreEqual(1, this.derefResult.Item1);
        }

        [TestMethod]
        public void AstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.derefResult.Item2, typeof(Deref));
        }

        [TestMethod]
        public void AstNodeParameterIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((Deref)this.derefResult.Item2).Parameter, typeof(Identifier)
            );
        }
#endregion
    }
}
