using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;

namespace syncomp
{
    public class NewPreProcessor
    {
        private readonly Regex IncludeRegex = new Regex("#include \"(\\S*)\"");
        private readonly string _name;
        private readonly string _code;
        public NewPreProcessor(string filepath) : this(filepath, File.ReadAllText(filepath))
        { }

        public NewPreProcessor(string name, string code)
        {
            this._name = name;
            this._code = code;
        }


        public IEnumerable<(string, string)> BuildContext()
        {
            var ctx = new List<(string, string)>();
            return Build(ctx, _name, _code);
        }

        private IEnumerable<(string, string)> Build(
                List<(string, string)> ctx, string filename, string code)
        {
            ctx.Add((filename, code));
            ctx.Reverse();
            var importLines = code
                .Split('\n')
                .Select(ln => ln.Trim())
                .Where(ln => ln.StartsWith("#include"));
            if (importLines.Count() > 0)
            {
            }

            var includeMatches = this.IncludeRegex.Matches(code);

            foreach (Match match in includeMatches)
            {
                // var test = includeMatches[0];
                var group = match.Groups[1];
                // TODO: Resolve path correctly
                var path = ResolvePath(filename, group.Value);
                Build(ctx, path, File.ReadAllText(path));
                // foreach (var file in Build(ctx, path, File.ReadAllText(path)))
                // {
                //     ctx.Add(file.Key, file.Value);
                // }
            }

            return ctx;
        }

        public string ResolvePath(string sourcePath, string path)
        {
            var fileInfo = new FileInfo(sourcePath);
            var actualPath = Path.Combine(fileInfo.DirectoryName, path);
            Console.WriteLine(actualPath);
            return actualPath;
        }
    }
}
