using System;
using System.IO;
using System.Text.RegularExpressions;

namespace compiler
{
  public class Preprocessor
  {
    private readonly Regex IncludeRegex = new Regex("#include \"(\\S*)\"");
    public Preprocessor(string code, string workingDirectory) {
      this.Code = code;
      this.WorkingDirectory = workingDirectory;
    }

    public string Preprocess() {
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
      return File.ReadAllText(
        Path.Combine(
          this.WorkingDirectory,
          filePath
        )
      );
    }

    public string Code { get; private set; }

    public string WorkingDirectory { get; private set; }  }
}