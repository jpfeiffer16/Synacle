using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class FunctionDeclarationPathNonVarDeclaration : Behavior
    {
        private ParseException result;

        protected override void Given()
        {
            var tokens = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.FunctionDeclaration,
                    Token = "function"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "test"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.LeftParen,
                    Token = "("
                },
                // NOTE: There is no var keyword
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "a"
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

            this.result = this.TrapException<ParseException>(() =>
              // new FunctionDeclarationPath().Eval(index, tokens, nodes)
              new ParserPath().ParseTokens(tokens)
            );
        }

        [TestMethod]
        public void ExceptionWasThrown()
        {
            Assert.IsNotNull(this.result);
        }

        [TestMethod]
        public void ExceptionIndexIsCorrect()
        {
            Assert.AreEqual(0, this.result.Index);
        }

        [TestMethod]
        public void ExceptionTokenIsCorrect()
        {
            Assert.AreEqual(
              SyntaxTokenType.FunctionDeclaration,
              this.result.Tokens[this.result.Index].Type
            );
        }
    }
}
