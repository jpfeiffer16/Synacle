using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class VariableAssignmentPathEval : Behavior
    {
        private (int, AstNode) result;

        protected override void Given()
        {
            var tokens = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Equal,
                    Token = "="
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "10"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.SemiColon,
                    Token = ";"
                }
            };
            var nodes = new List<AstNode>
            {
                new Identifier("a", null, 0, 0)
            };
            var index = 0;

            this.result = new VariableAssignmentPath().Eval(index, tokens, nodes, new ParserContext());
        }

        [TestMethod]
        public void IndexIsCorect()
        {
            Assert.AreEqual(2, this.result.Item1);
        }

        [TestMethod]
        public void AstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.result.Item2, typeof(VariableAssignment));
        }

        [TestMethod]
        public void AstNodeIdentifierIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((VariableAssignment)this.result.Item2).Identifier,
              typeof(Identifier)
            );
        }

        [TestMethod]
        public void AstNodeParameterIsCorrect()
        {
            Assert.IsInstanceOfType(
              ((VariableAssignment)this.result.Item2).Parameter,
              typeof(IntegerLiteral)
            );
        }
    }
}
