using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;

namespace syncomp
{
    public class PreProcessor
    {
        private readonly Regex IncludeRegex = new Regex("#include \"(\\S*)\"");
        private readonly string _name;
        private readonly string _code;
        // TODO: Need to take include paths
        public PreProcessor(string filepath) : this(filepath, File.ReadAllText(filepath))
        { }

        public PreProcessor(string name, string code)
        {
            this._name = name;
            this._code = code;
        }


        public List<KeyValuePair<string, string>> BuildContext()
        {
            var ctx = new List<KeyValuePair<string, string>>();
            var results = Build(ctx, _name, _code);
            results.Reverse();
            return results;
        }

        private List<KeyValuePair<string, string>> Build(
                List<KeyValuePair<string, string>> ctx, string filename, string code)
        {
            if (!ctx.Any(c => c.Key == filename))
            { 
                ctx.Add(new KeyValuePair<string, string>(filename, code));
            }
            else
            {
                var existingPair = ctx.Find(c => c.Key == filename);
                ctx.Remove(existingPair);
                ctx.Add(existingPair);
            }
            var importLines = code
                .Split('\n')
                .Select(ln => ln.Trim())
                .Where(ln => ln.StartsWith("#include"));

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
            var actualPath = new FileInfo(Path.Combine(fileInfo.DirectoryName, path)).FullName;
            return actualPath;
        }
    }
}
