using System;
using System.IO;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace syncomp
{
  public class Preprocessor
  {
    private readonly Regex IncludeRegex = new Regex("#include \"(\\S*)\"");
    public Preprocessor(
      string code,
      string workingDirectory,
      List<string> includeLocations)
    {
      this.Code = code;
      this.WorkingDirectory = workingDirectory;
      this.IncludeLocations = includeLocations;
    }

    public Preprocessor(string code, string workingDirectory) :
      this(code, workingDirectory, new List<string>())
    { }

    public string Preprocess()
    {
      MatchCollection includeMatches;

      while ((includeMatches = this.IncludeRegex.Matches(this.Code)).Count > 0)
      {
        var match = includeMatches[0];
        var group = includeMatches[0].Groups[1];
        this.Code = this.Code
          .Substring(0, match.Index) +
          this.GetCode(group.Value) +
          this.Code.Substring(match.Index + match.Length);
      }

      return this.Code;
    }

    private string GetCode(string filePath)
    {
      /*
        Resolution steps:
          1.) Working dir + filepath
          2.) Loop through include paths + filepath
      */
      var path = Path.Combine(
        this.WorkingDirectory,
        filePath
      );

      if (!File.Exists(path))
      {
        foreach (var includeLocation in IncludeLocations)
        {
          var thisPath = Path.Combine(
            includeLocation,
            filePath
          );
          if (File.Exists(thisPath))
            return File.ReadAllText(
              thisPath
            );
        }
      }
      else
      {
        return File.ReadAllText(
          path
        );
      }
      throw new FileNotFoundException(
        $"Preprocessor: File {path} could not be found in any of the include paths. Check your INCLUDE environment variable"
      );
    }

    public string Code { get; private set; }
    public string WorkingDirectory { get; private set; }
    public List<string> IncludeLocations { get; private set; }
  }
}