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
            var ctx = new Context();
            this.result = new PointerDeclarationEmitter().Transform(
              new PointerDeclaration(
                  "test_ptr",
                  new LangType("ptr", null, null, 0, 0)
                  {
                    SubTypes = new List<LangType>
                    {
                      new LangType(
                          "test_type",
                          new List<VariableDeclaration> {
                            new VariableDeclaration("id", ParserContext.NativeTypes.LangInt, null, 0, 0)
                          },
                          null, 0, 0),
                    }
                  },
                  null, 0, 0),
              ctx
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
        public void OneBackingVarField()
        {
            Assert.IsTrue(
              this.result.Contains(":fld_test_ptr_backing__0_id")
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
