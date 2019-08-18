using System;
using System.Collections.Generic;

namespace syncomp
{
    public class FunctionCallEmitter : IEmitter
    {
        public Type Match => typeof(FunctionCall);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var lines = new List<string>();
            var fcNode = node as FunctionCall;
            var originalRegisterLevel = ctx.RegisterLevel;
            foreach (var parameter in fcNode.Parameters)
            {
                lines.AddRange(new Transformer(new List<AstNode> { parameter }, ctx).Transform());
                ctx.RegisterLevel++;
            }
            ctx.RegisterLevel = originalRegisterLevel;

            //Handle special cases
            if (fcNode.Name == "out")
            {
                lines.Add("out reg0");
            }
            else if (fcNode.Name == "in")
            {
                lines.Add("in reg0");
            }
            else if (fcNode.Name == "exit")
            {
                lines.Add("halt");
            }
            else if (fcNode.Name == "push")
            {
                lines.AddRange(new Transformer(fcNode.Parameters, ctx).Transform());
                lines.Add("push reg0");
            }
            else if (fcNode.Name == "pop")
            {
                lines.Add("pop reg0");
            }
            else if (fcNode.Name == "wmem")
            {
                lines.Add($"wmem reg0 reg1");
            }
            else
            {
                var variable = ctx.Variables.Get(fcNode.Name);
                if (variable != null)
                {
                    var regLevel = ctx.RegisterLevel;
                    // ctx.RegisterLevel = 7;
                    // lines.AddRange(TransformAst(new List<AstNode> { fcNode.Name }, ctx));
                    lines.Add($"rmem reg7 >{variable.MemoryAddress}");
                    lines.Add($"call reg7");
                    // ctx.RegisterLevel = regLevel;
                }
                else
                {
                    lines.Add($"call >{fcNode.Name}");
                }
            }

            return lines;
        }
    }
}
