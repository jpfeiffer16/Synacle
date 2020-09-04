using System;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class ConstructorWithErrors : Behavior
    {
        private Exception _nullLangTypeException;
        private Exception _nullTokensException;

        protected override void Given()
        {
            _nullLangTypeException = TrapException<Exception>(() =>
                new Template(null, new List<SyntaxToken>()));
            _nullTokensException = TrapException<Exception>(() =>
                new Template(new LangType(null, null, null, 0, 0), null));
        }

        [TestMethod]
        public void NullLangTypeExceptionIsCorrect()
        {
            Assert.IsInstanceOfType(_nullLangTypeException, typeof(ArgumentNullException));
        }

        [TestMethod]
        public void NullTokensExceptionIsCorrect()
        {
            Assert.IsInstanceOfType(_nullTokensException, typeof(ArgumentNullException));
        }
    }
}
