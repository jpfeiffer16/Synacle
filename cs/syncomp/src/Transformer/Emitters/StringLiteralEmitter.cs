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
      if (!string.IsNullOrEmpty(strNode.Value)) {
        var firstLetter = strNode.Value.Substring(0, 1);
        var value = strNode.Value.Substring(1);
        var uuid = TransformerHelpers.GetUID();
        lines.Add($"jmp >var_{uuid}_end");
        lines.Add($":var_{uuid}");
        for (var charIndex = 0; charIndex < value.Length; charIndex++)
        {
          var ch = value[charIndex];
          if (ch == '\\') {
            var nextChar = value[++charIndex];
            switch(nextChar) {
              case 'n':
                ch = Convert.ToChar("\n");
                break;
              case 't':
                ch = Convert.ToChar("\t");
                break;
            }
          }
          var str = ch.ToString();
          if (str.Trim().Count() == 0) {
            lines.Add(Encoding.ASCII.GetBytes(str).FirstOrDefault().ToString());
          } else {
            lines.Add($"&{str}");
          }
        }
        lines.Add("0");
        lines.Add($":var_{uuid}_end");
        if (firstLetter.Trim().Count() == 0) {
          lines.Add(
            $"wmem >var_{uuid} {Encoding.ASCII.GetBytes(firstLetter).FirstOrDefault().ToString()}"
          );
        } else {
          lines.Add($"wmem >var_{uuid} &{firstLetter}");
        }
        lines.Add($"set reg{ctx.RegisterLevel} >var_{uuid}");
      }

      return lines;
    }
  }
}