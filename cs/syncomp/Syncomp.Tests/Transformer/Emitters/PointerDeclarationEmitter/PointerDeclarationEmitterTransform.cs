using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class PointerDeclarationEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            this.result = new PointerDeclarationEmitter().Transform(
              new PointerDeclaration("test_ptr", null, null, 0, 0),
              new Context()
            );
        }

        [TestMethod]
        public void OneBackingVarLabel()
        {
            Assert.IsTrue(
              this.result.Contains(":var_test_ptr_backing__0")
            );
        }

        [TestMethod]
        public void OneVarLabel()
        {
            Assert.IsTrue(
              this.result.Contains(":var_test_ptr__0")
            );
        }

        [TestMethod]
        public void OneWmemForVar()
        {
            Assert.IsTrue(
              this.result.Contains("wmem >var_test_ptr__0 >var_test_ptr_backing__0")
            );
        }
    }
}
