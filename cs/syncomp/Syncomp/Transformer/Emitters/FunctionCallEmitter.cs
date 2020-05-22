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
                EmitFunctionArgs(lines, fcNode, ctx);
                //Handle intrinsic functions
                var fcName = fcNodeIdentifier.Name;
                if (fcName == "out")
                {
                    lines.Add("out reg0");
                }
                else if (fcName == "in")
                {
                    lines.Add("in reg0");
                }
                else if (fcName == "exit")
                {
                    lines.Add("halt");
                }
                else if (fcName == "push")
                {
                    lines.AddRange(new Transformer(fcNode.Parameters, ctx).Transform());
                    lines.Add("push reg0");
                }
                else if (fcName == "pop")
                {
                    lines.Add($"pop reg{ctx.RegisterLevel}");
                }
                else if (fcName == "wmem")
                {
                    lines.Add($"wmem reg0 reg1");
                }
                else if (fcName == "rmem")
                {
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
                // var regLevel = ctx.RegisterLevel;
                // ctx.RegisterLevel = 7;
                lines.AddRange(new Transformer(new List<AstNode> { fcNode.Name }, ctx).Transform());
                // lines.AddRange(TransformAst(new List<AstNode> { fcNode.Name }, ctx));
                lines.Add($"set reg7 reg{ctx.RegisterLevel}");
                EmitFunctionArgs(lines, fcNode, ctx);
                lines.Add($"call reg7");
                // ctx.RegisterLevel = regLevel;
            }

            return lines;
        }

        private void EmitFunctionArgs(List<string> lines, FunctionCall functionCallNode, Context ctx)
        {
            var originalRegisterLevel = ctx.RegisterLevel;
            // ctx.RegisterLevel = ctx.RegisterLevel + functionCallNode.Parameters.Count();
            foreach (var parameter in functionCallNode.Parameters)
            // foreach (var parameter in functionCallNode.Parameters.AsQueryable().Reverse())
            {
                lines.AddRange(new Transformer(new List<AstNode> { parameter }, ctx).Transform());
                // lines.Add($"set reg{ctx.RegisterLevel} reg0");
                ctx.RegisterLevel++;
                // ctx.RegisterLevel--;
            }
            ctx.RegisterLevel = originalRegisterLevel;
        }
    }
}
