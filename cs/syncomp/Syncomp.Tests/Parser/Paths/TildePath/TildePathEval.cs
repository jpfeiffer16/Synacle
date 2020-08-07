using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class DerefPathEval : Behavior
    {
        private (int, AstNode) result;

        protected override void Given()
        {
            var tokens = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Tilde,
                    Token = "~"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "a"
                }
            };
            var nodes = new List<AstNode>();
            var index = 0;
            this.result = new TildePath().Eval(index, tokens, nodes, new ParserContext());
        }

        // NOTE: This can be 1 now since before it would have overflowed before it
        // returned the terminator. This is because we were using GetNextTerminator()
        // Now we are using 
        [TestMethod]
        public void IndexIsCorrect()
        {
            Assert.AreEqual(1, this.result.Item1);
        }

        [TestMethod]
        public void AstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.result.Item2, typeof(BitwiseNot));
        }

        [TestMethod]
        public void AstNodeParameterIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((BitwiseNot)this.result.Item2).Parameter, typeof(Identifier)
            );
        }
    }
}
