using System;
using System.Collections.Generic;
using System.Linq;

namespace compiler
{
    public class Transformer {
        private readonly List<AstNode> nodes;

        public Transformer(List<AstNode> nodes) {
            this.nodes = nodes;
        }

        public List<string> Transform() {
            return TransformAst(this.nodes, new Context());
        }
        private List<string> TransformAst(List<AstNode> ast, Context ctx) {
            var lines = new List<string>();
            for (var i = 0; i < ast.Count; i++) {
                var node = ast[i];
                var nodeType = node.GetType();

                if (nodeType == typeof(VariableDeclaration)) {
                    var vdNode = node as VariableDeclaration;



                    var guid = Guid.NewGuid();
                    lines.Add($"jmp >var_{guid.ToString()}_end");
                    lines.Add($":var_{guid.ToString()}");
                    lines.Add($":var_{guid.ToString()}_end");

                    ctx.Variables.Add(new Variable() {
                        Name = vdNode.Identifier,
                        MemoryAddress = $"var_{guid.ToString()}"
                    });
                }

                if (nodeType == typeof(VariableAssignment)) {
                    var vaNode = node as VariableAssignment;

                    var variable = ctx.Variables.Find(vr => vr.Name == (vaNode.Identifier as Identifier).Name);

                    lines.AddRange(TransformAst(new List<AstNode> { vaNode.Parameter }, ctx));
                    lines.Add($"wmem >{variable.MemoryAddress} reg0");
                    
                }

                if (nodeType == typeof(Addition)) {
                    var addNode = node as Addition;
                    lines.AddRange(TransformAst(new List<AstNode> { addNode.Left }, ctx));
                    ctx.RegisterLevel++;
                    lines.AddRange(TransformAst(new List<AstNode> { addNode.Right }, ctx));
                    ctx.RegisterLevel--;

                    lines.Add($"add reg0 reg0 reg1");
                    
                }

                if (nodeType == typeof(FunctionCall)) {
                    var fcNode = node as FunctionCall;
                    lines.AddRange(TransformAst(fcNode.Parameters, ctx));

                    //Handle special cases
                    if (fcNode.Name == "out") {
                        lines.Add($"out reg0");
                    }
                }

                if (nodeType == typeof(Identifier)) {
                    var idNode = node as Identifier;

                    var variable = ctx.Variables.Find(vr => vr.Name == idNode.Name);

                    lines.Add($"rmem reg{ctx.RegisterLevel} >{variable.MemoryAddress}");
                }

                if (nodeType == typeof(IntegerLiteral)) {
                    var inNode = node as IntegerLiteral;

                    lines.Add($"set reg{ctx.RegisterLevel} {inNode.Value}");
                }
            }
            return lines;
        }
    }
    public class Context {
        public List<Variable> Variables = new List<Variable>();
        public int RegisterLevel = 0;
    }

    public class Variable {
        public string Name { get; set; }
        public string MemoryAddress { get; set; }
    }
}