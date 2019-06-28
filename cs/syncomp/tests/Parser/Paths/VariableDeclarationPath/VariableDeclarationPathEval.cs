using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class VariableDeclarationPathEval : Behavior
    {
        private (int, AstNode) result;

        protected override void Given()
        {
            var tokens = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.VariableDeclaration,
                    Token = "var"
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
            this.result = new VariableDeclarationPath().Eval(index, tokens, nodes);
        }

        [TestMethod]
        public void IndexIsCorrect()
        {
            Assert.AreEqual(1, this.result.Item1);
        }

        [TestMethod]
        public void AstNodeIdentifierIsCorrect()
        {
            // NOTE: This should probably be an Identifier type instead of a 
            // string
            Assert.IsInstanceOfType(
              ((VariableDeclaration)this.result.Item2).Identifier,
              typeof(string)
            );
        }
    }
}
