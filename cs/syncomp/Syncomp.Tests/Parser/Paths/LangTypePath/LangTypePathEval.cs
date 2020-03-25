using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class LangTypePathEval : Behavior
    {
        private (int, AstNode) result;

        protected override void Given()
        {
            var tokens = new List<SyntaxToken>
            {
                new SyntaxToken
                {
                    Type = SyntaxTokenType.LangType,
                    Token = "type"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "test_type"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.LeftCurly,
                    Token = "{"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "int"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "id"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Comma,
                    Token = ","
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "string"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.Identifier,
                    Token = "name"
                },
                new SyntaxToken
                {
                    Type = SyntaxTokenType.RightCurly,
                    Token = "}"
                }
            };

            this.result = new LangTypePath().Eval(0, tokens, new List<AstNode>(), new ParserContext());
        }

        [TestMethod]
        public void IndexIsCorrect()
        {
            Assert.AreEqual(8, this.result.Item1);
        }

        [TestMethod]
        public void AstNodeIsCorrect()
        {
            Assert.IsInstanceOfType(this.result.Item2, typeof(LangType));
        }

        [TestMethod]
        public void AstNodeNameIsCorrect()
        {
            Assert.AreEqual("test_type", (this.result.Item2 as LangType).Name);
        }

        [TestMethod]
        public void AstNodeBodyCountIsCorrect()
        {
            Assert.AreEqual(2, (this.result.Item2 as LangType).Body.Count());
        }
    }
}
