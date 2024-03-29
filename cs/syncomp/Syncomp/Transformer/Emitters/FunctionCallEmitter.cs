using System;
using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class FunctionCallEmitter : IEmitter
    {
        public Type Match => typeof(FunctionCall);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var lines = new List<string>();
            var fcNode = node as FunctionCall;

            if (fcNode.Name is Identifier fcNodeIdentifier)
            {
                //Handle intrinsic functions
                var fcName = fcNodeIdentifier.Name;
                if (fcName == "out")
                {
                    EmitRegFunctionArgs(lines, fcNode, ctx);
                    lines.Add("out reg0");
                }
                else if (fcName == "in")
                {
                    EmitRegFunctionArgs(lines, fcNode, ctx);
                    lines.Add("in reg0");
                }
                else if (fcName == "exit")
                {
                    EmitRegFunctionArgs(lines, fcNode, ctx);
                    lines.Add("halt");
                }
                else if (fcName == "push")
                {
                    EmitRegFunctionArgs(lines, fcNode, ctx);
                    lines.AddRange(new Transformer(fcNode.Parameters, ctx).Transform());
                    lines.Add("push reg0");
                }
                else if (fcName == "pop")
                {
                    EmitRegFunctionArgs(lines, fcNode, ctx);
                    lines.Add($"pop reg{ctx.RegisterLevel}");
                }
                else if (fcName == "wmem")
                {
                    EmitRegFunctionArgs(lines, fcNode, ctx);
                    lines.Add($"wmem reg0 reg1");
                }
                else if (fcName == "rmem")
                {
                    EmitRegFunctionArgs(lines, fcNode, ctx);
                    lines.Add($"rmem reg0 reg1");
                }
                else if (fcName == "nameof")
                {
                    lines.AddRange(new Transformer(new List<AstNode> {
                        new StringLiteral((fcNode.Parameters.FirstOrDefault() as Identifier).Name, null, 0, 0) }, ctx)
                        .Transform());
                }
                else if (fcName == "sizeof")
                {
                    lines.Add($"set reg{ctx.RegisterLevel} {TypeHelper.GetTypeLength(fcNode.Parameters.FirstOrDefault().NodeType)}");
                }
                else if (fcName == "typeof")
                {
                    lines.AddRange(new Transformer(new List<AstNode> {
                        new StringLiteral((fcNode.Parameters.FirstOrDefault() as Identifier).NodeType.GetName(), null, 0, 0) }, ctx)
                        .Transform());
                }
                else
                {
                    EmitStackFunctionArgs(lines, fcNode, ctx);
                    var variable = ctx.Variables.Get(fcName);
                    if (variable != null)
                    {
                        lines.Add($"rmem reg7 >{variable.MemoryAddress}");
                        lines.Add($"call reg7");
                    }
                    else
                    {
                        lines.Add($"call >{fcName}");
                    }
                }
            }
            else
            {
                lines.AddRange(new Transformer(new List<AstNode> { fcNode.Name }, ctx).Transform());
                lines.Add($"set reg7 reg{ctx.RegisterLevel}");
                EmitStackFunctionArgs(lines, fcNode, ctx);
                lines.Add($"call reg7");
            }

            return lines;
        }

        private void EmitRegFunctionArgs(List<string> lines, FunctionCall functionCallNode, Context ctx)
        {
            var originalRegisterLevel = ctx.RegisterLevel;
            foreach (var parameter in functionCallNode.Parameters)
            {
                lines.AddRange(new Transformer(new List<AstNode> { parameter }, ctx).Transform());
                ctx.RegisterLevel++;
            }
            ctx.RegisterLevel = originalRegisterLevel;
        }

        private void EmitStackFunctionArgs(List<string> lines, FunctionCall functionCallNode, Context ctx)
        {
            foreach (var parameter in functionCallNode.Parameters)
            {
                if (parameter.NodeType.Body?.Count > 0)
                {
                    var variable = ctx.Variables.Get((parameter as Identifier).Name);
                    // var declaration = parameter as VariableDeclaration;
                    var varName = TransformerHelpers.GetUID(
                        variable.VariableDeclaration.File,
                        variable.VariableDeclaration.Identifier,
                        variable.VariableDeclaration.Line,
                        variable.VariableDeclaration.Column);
                    foreach (var field in parameter.NodeType.Body)
                    {
                        var memoryAddress = $"fld_{varName}_{(field as VariableDeclaration).Identifier}";
                        lines.Add($"rmem reg{ctx.RegisterLevel} >{memoryAddress}");
                        lines.Add($"push reg{ctx.RegisterLevel}");

                    }
                }
                else
                {
                    lines.AddRange(new Transformer(new List<AstNode> { parameter }, ctx).Transform());
                    lines.Add($"push reg{ctx.RegisterLevel}");
                }
            }
        }
    }
}
