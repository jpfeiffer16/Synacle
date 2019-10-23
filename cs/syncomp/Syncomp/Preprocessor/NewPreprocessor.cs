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
        // TODO: Need to take include paths
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
                var group = match.Groups[1];
                var path = ResolvePath(filename, group.Value);
                Build(ctx, path, File.ReadAllText(path));
            }

            return ctx;
        }

        // TODO: Use include paths
        private string ResolvePath(string sourcePath, string path)
        {
            var fileInfo = new FileInfo(sourcePath);
            var actualPath = Path.Combine(fileInfo.DirectoryName, path);
            return actualPath;
        }
    }
}
