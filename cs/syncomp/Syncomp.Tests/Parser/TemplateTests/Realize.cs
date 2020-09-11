using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class Realize : Behavior
    {
        private LangType _newType;

        protected override void Given()
        {
            const string code = @"
template
type keyvalue_pair<TKey, TValue>
{
    TKey key;
    TValue value;
}";
            var tokens = new Lexer(code).Lex();
            // Trim out whitespace. This is still a thing.
            // TODO: Fix this! We have to do this in all the various places we do lexing
            tokens = tokens.Where(t => !string.IsNullOrWhiteSpace(t.Token)).ToList();
            var ctx = new ParserContext();
            new ParserPath().ParseTokens(tokens, ctx);

            // _template = new Template(new LangType("keyvalue_pair", ));
            var template = ctx.Templates.FirstOrDefault();
            var concreteType = new LangType("keyvalue_pair", null, null, 0, 0)
            {
                SubTypes = new List<LangType> {
                    ParserContext.NativeTypes.LangInt,
                    ParserContext.NativeTypes.LangString
                }
            };
            template.Realize(
                concreteType,
                ctx);
            _newType = ctx.GetLangType("keyvalue_pair<int, string>");
        }

        [TestMethod]
        public void NewTypeAddedToCtx()
        {
            Assert.IsNotNull(_newType);
        }

        [TestMethod]
        public void BodyCountIsCorrect()
        {
            Assert.AreEqual(2, _newType.Body.Count);
        }

        [TestMethod]
        public void FirstMemberNameIsCorrect()
        {
            Assert.AreEqual("key", (_newType.Body[0] as VariableDeclaration).Identifier);
        }

        [TestMethod]
        public void FirstMemberTypeIsCorrect()
        {
            Assert.AreEqual("int", (_newType.Body[0] as VariableDeclaration).NodeType.GetName());
        }

        [TestMethod]
        public void SecondMemberNameIsCorrect()
        {
            Assert.AreEqual("value", (_newType.Body[1] as VariableDeclaration).Identifier);
        }

        [TestMethod]
        public void SecondMemberTypeIsCorrect()
        {
            Assert.AreEqual("string", (_newType.Body[1] as VariableDeclaration).NodeType.GetName());
        }

    }
}
