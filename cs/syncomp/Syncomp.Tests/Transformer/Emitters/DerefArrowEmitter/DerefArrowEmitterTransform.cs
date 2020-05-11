using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
    [TestClass]
    public class DerefArrowEmitterTransform : Behavior
    {
        private List<string> result;

        protected override void Given()
        {
            var ctx = new Context();
            var langType = new LangType("ptr", null, null, 0, 0)
            {
                SubTypes = new List<LangType>
                {
                    new LangType("test_type", new List<VariableDeclaration> {
                            new VariableDeclaration(
                                "name", ParserContext.NativeTypes.LangString, null, 0, 0),
                            new VariableDeclaration(
                                "id", ParserContext.NativeTypes.LangInt, null, 0, 0),
                        }, null, 0, 0),
                    null,
                }
            };
            ctx.Variables.Add(new Variable
            {
                MemoryAddress = "test_var_mem_addr",
                Name = "test_var",
                VariableDeclaration = new VariableDeclaration(
                    "test_var",
                    langType,
                    null,
                    0,
                    0)
            });
            var node = new DerefArrow(new Identifier("test_var", null, 0, 0) { NodeType =  langType },
                new Identifier("id", null, 0, 0), null, 0, 0);

            this.result = new DerefArrowEmitter().Transform(
                node,
                ctx
            );
        }

        [TestMethod]
        public void MemoryAddressRmem()
        {
            Assert.AreEqual(
              "rmem reg0 >test_var_mem_addr",
              this.result[0]
            );
        }

        [TestMethod]
        public void FieldOffsetAdd()
        {
            Assert.AreEqual(
              "add reg0 reg0 2",
              this.result[1]
            );
        }

        [TestMethod]
        public void DerefFieldRmem()
        {
            Assert.AreEqual(
              "rmem reg0 reg0",
              this.result[2]
            );
        }
    }
}
