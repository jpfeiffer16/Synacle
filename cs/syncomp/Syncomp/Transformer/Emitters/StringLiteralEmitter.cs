using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace syncomp
{
    public class StringLiteralEmitter : IEmitter
    {
        public Type Match => typeof(StringLiteral);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var lines = new List<string>();
            var strNode = node as StringLiteral;
            if (!string.IsNullOrEmpty(strNode.Value))
            {
                var emitSb = new StringBuilder();
                for (var i = 0; i < strNode.Value.Count(); i++)
                {
                    var ch = strNode.Value[i];
                    if (ch == '\\')
                    {
                        var nextChar = i + 1 < strNode.Value.Length ? strNode.Value[++i] : 0;
                        if (nextChar != 0)
                        {
                            switch (nextChar)
                            {
                                case 'n':
                                    ch = Convert.ToChar("\n");
                                    break;
                                case 't':
                                    ch = Convert.ToChar("\t");
                                    break;
                            }
                        }
                    }
                    emitSb.Append(ch);
                }
                var stringToEmit = emitSb.ToString();
                var firstLetter = stringToEmit.Substring(0, 1);
                var value = stringToEmit.Substring(1);
                var uuid = TransformerHelpers.GetUID(strNode.File, strNode.Line, null);
                lines.Add($"jmp >var_{uuid}_end");
                lines.Add($":var_{uuid}");
                for (var charIndex = 0; charIndex < value.Length; charIndex++)
                {
                    var ch = value[charIndex];
                    var str = ch.ToString();
                    if (str.Trim().Count() == 0)
                    {
                        lines.Add(Encoding.ASCII.GetBytes(str).FirstOrDefault().ToString());
                    }
                    else
                    {
                        lines.Add($"&{str}");
                    }
                }
                lines.Add("0");
                lines.Add($":var_{uuid}_end");
                if (firstLetter.Trim().Count() == 0)
                {
                    lines.Add(
                      $"wmem >var_{uuid} {Encoding.ASCII.GetBytes(firstLetter).FirstOrDefault().ToString()}"
                    );
                }
                else
                {
                    lines.Add($"wmem >var_{uuid} &{firstLetter}");
                }
                lines.Add($"set reg{ctx.RegisterLevel} >var_{uuid}");
            }

            return lines;
        }
    }
}
