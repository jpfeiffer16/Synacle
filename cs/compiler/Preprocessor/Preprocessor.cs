using System;
using System.IO;
using System.Text.RegularExpressions;

namespace compiler
{
  public class Preprocessor
  {
    private readonly Regex IncludeRegex = new Regex("#include \"(\\S*)\"");
    public Preprocessor(string code) {
      this.Code = code;
    }

    public string Preprocess() {
      // var includeMatches = this.IncludeRegex.Matches(this.Code);
      MatchCollection includeMatches;

      while ((includeMatches = this.IncludeRegex.Matches(this.Code)).Count > 0) {
        var match = includeMatches[0];
        var group = includeMatches[0].Groups[1];
        this.Code = this.Code
          .Substring(0, match.Index) +
          this.GetCode(group.Value) +
          this.Code.Substring(match.Index + match.Length);
      }

      return this.Code;
    }

    private string GetCode(string filePath) {
      return File.ReadAllText(filePath);
    }

    public string Code { get; private set; }
  }
}