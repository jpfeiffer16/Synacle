using System.Collections.Generic;
using System.IO;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class CheckerPositiveTests : Behavior
    {
        private const string TestCodeFilename = "./positive.bc";
        private List<Diagnostic> diagnostics;

        protected override void Given()
        {
            var code = File.ReadAllText(TestCodeFilename);

            var tokens = new List<SyntaxToken>();

            var lexer = new Lexer(code, TestCodeFilename);
            tokens.AddRange(lexer.Lex());

            tokens = tokens.Where(tkn => tkn.Type != SyntaxTokenType.Space).ToList();
            var parser = new Parser(tokens);
            (_, var ast) = parser.Parse();
            var checker = new Checker(ast);
            this.diagnostics = checker.Check();
        }

        [TestMethod]
        public void NoDiagnostics()
        {
            Assert.AreEqual(0, this.diagnostics.Count());
        }
    }
}
