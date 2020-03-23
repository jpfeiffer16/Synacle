using System.Collections.Generic;
using System.IO;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{

    [TestClass]
    public class CheckerNegativeTests : Behavior
    {
        private const string TestCodeFilename = "./negative.bc";
        private List<Diagnostic> diagnostics;

        private int GetDiagLength(Diagnostic diag)
        {
            return diag.EndColumn - diag.Column;
        }

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
        public void VariableAssignmentInvalidTypes()
        {
            var diag = this.diagnostics.Where(dg => dg.Line == 2).FirstOrDefault();
            Assert.IsNotNull(diag);
            Assert.AreEqual(DiagnosticCode.InvalidTypes, diag.Code);
            Assert.AreEqual(1, GetDiagLength(diag));
            Assert.IsTrue(diag.Message.Contains("int"));
            Assert.IsTrue(diag.Message.Contains("string"));
        }

        [TestMethod]
        public void FunctionCallInvalidFunction()
        {
            var diag = this.diagnostics.Where(dg => dg.Line == 5).FirstOrDefault();
            Assert.IsNotNull(diag);
            Assert.AreEqual(DiagnosticCode.UnknownFunction, diag.Code);
            Assert.AreEqual(5, GetDiagLength(diag));
        }

        [TestMethod]
        public void FunctionCallInvalidParameters()
        {
            var diag = this.diagnostics.Where(dg => dg.Line == 9).FirstOrDefault();
            Assert.IsNotNull(diag);
            Assert.AreEqual(DiagnosticCode.InvalidParameters, diag.Code);
            Assert.IsTrue(diag.Message.Contains("test"));
            Assert.AreEqual(4, GetDiagLength(diag));
        }

        [TestMethod]
        public void FunctionCallInvalidTypes()
        {
            var stringLiteralDiag = this.diagnostics.Where(dg => dg.Line == 12).FirstOrDefault();
            Assert.IsNotNull(stringLiteralDiag);
            Assert.AreEqual(DiagnosticCode.InvalidTypes, stringLiteralDiag.Code);
            Assert.IsTrue(stringLiteralDiag.Message.Contains("string"));
            Assert.IsTrue(stringLiteralDiag.Message.Contains("int"));
            Assert.AreEqual(6, GetDiagLength(stringLiteralDiag));

            var asDiag = this.diagnostics.Where(dg => dg.Line == 13).FirstOrDefault();
            Assert.IsNotNull(asDiag);
            Assert.AreEqual(DiagnosticCode.InvalidTypes, asDiag.Code);
            Assert.IsTrue(asDiag.Message.Contains("string"));
            Assert.IsTrue(asDiag.Message.Contains("int"));
            Assert.AreEqual(2, GetDiagLength(asDiag));

            var varDiag = this.diagnostics.Where(dg => dg.Line == 15).FirstOrDefault();
            Assert.IsNotNull(varDiag);
            Assert.AreEqual(DiagnosticCode.InvalidTypes, varDiag.Code);
            Assert.IsTrue(varDiag.Message.Contains("string"));
            Assert.IsTrue(varDiag.Message.Contains("int"));
            Assert.AreEqual(11, GetDiagLength(varDiag));

            var stringLeralAsOffetTestDiags = this.diagnostics.Where(dg => dg.Line == 17);

            var asOffsetDiag = stringLeralAsOffetTestDiags.FirstOrDefault();
            Assert.IsNotNull(asOffsetDiag);
            Assert.AreEqual(DiagnosticCode.InvalidTypes, asOffsetDiag.Code);
            Assert.IsTrue(asOffsetDiag.Message.Contains("ptr"));
            Assert.IsTrue(asOffsetDiag.Message.Contains("int"));
            Assert.AreEqual(2, GetDiagLength(asOffsetDiag));

            var intLiteralDiag = stringLeralAsOffetTestDiags.LastOrDefault();
            Assert.IsNotNull(intLiteralDiag);
            Assert.AreEqual(DiagnosticCode.InvalidTypes, intLiteralDiag.Code);
            Assert.IsTrue(intLiteralDiag.Message.Contains("int"));
            Assert.IsTrue(intLiteralDiag.Message.Contains("string"));
            Assert.AreEqual(3, GetDiagLength(intLiteralDiag));
        }

        [TestMethod]
        public void FunctionDeclarationControlFlowError()
        {
            var defDiag = this.diagnostics.Where(dg => dg.Line == 20).FirstOrDefault();
            Assert.IsNotNull(defDiag);
            Assert.AreEqual(DiagnosticCode.ControlFlowError, defDiag.Code);
            Assert.IsTrue(defDiag.Message.Contains("int"));
            Assert.AreEqual(8, GetDiagLength(defDiag));

            var assignDiag = this.diagnostics.Where(dg => dg.Line == 21).FirstOrDefault();
            Assert.IsNotNull(assignDiag);
            Assert.AreEqual(DiagnosticCode.ControlFlowError, assignDiag.Code);
            Assert.IsTrue(assignDiag.Message.Contains("int"));
            Assert.AreEqual(8, GetDiagLength(assignDiag));
        }

        [TestMethod]
        public void IdentifierUnknownVariable()
        {
            var diag = this.diagnostics.Where(dg => dg.Line == 24).FirstOrDefault();
            Assert.IsNotNull(diag);
            Assert.AreEqual(DiagnosticCode.UnknownVariable, diag.Code);
            Assert.AreEqual(5, GetDiagLength(diag));
        }

        [TestMethod]
        public void DotUnknownVariable()
        {
            var diag = this.diagnostics.Where(dg => dg.Line == 27).FirstOrDefault();
            Assert.IsNotNull(diag);
            Assert.AreEqual(DiagnosticCode.UnknownVariable, diag.Code);
            Assert.AreEqual(5, GetDiagLength(diag));
        }

        [TestMethod]
        public void DotUnknownField()
        {
            var diag = this.diagnostics.Where(dg => dg.Line == 36).FirstOrDefault();
            Assert.IsNotNull(diag);
            Assert.AreEqual(DiagnosticCode.UnknownField, diag.Code);
            Assert.AreEqual(4, GetDiagLength(diag));
        }

        [TestMethod]
        public void DerefArrowUnknownVariable()
        {
            var diag = this.diagnostics.Where(dg => dg.Line == 39).FirstOrDefault();
            Assert.IsNotNull(diag);
            Assert.AreEqual(DiagnosticCode.UnknownVariable, diag.Code);
            Assert.AreEqual(5, GetDiagLength(diag));
        }

        [TestMethod]
        public void DerefArrowInvalidTypes()
        {
            var diag = this.diagnostics.Where(dg => dg.Line == 43).FirstOrDefault();
            Assert.IsNotNull(diag);
            Assert.AreEqual(DiagnosticCode.InvalidTypes, diag.Code);
            Assert.AreEqual(2, GetDiagLength(diag));
        }

        [TestMethod]
        public void DerefArrowUnknownField()
        {
            var diag = this.diagnostics.Where(dg => dg.Line == 47).FirstOrDefault();
            Assert.IsNotNull(diag);
            Assert.AreEqual(DiagnosticCode.UnknownField, diag.Code);
            Assert.AreEqual(4, GetDiagLength(diag));
        }
    }
}
