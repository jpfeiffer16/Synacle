using System.IO;

namespace syncomp
{
    public static class TransformerHelpers
    {
        public static string GetUID(string file, int line, string name)
        {
            var fileInfo = new FileInfo(file);
            return $"{name}_{fileInfo.Name.Replace(fileInfo.Extension, string.Empty)}_{line}";
        }
    }
}
