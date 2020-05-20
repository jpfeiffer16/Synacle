using System;
using System.IO;

namespace syncomp
{
    public static class TransformerHelpers
    {
        public static string GetUID(string file, int line, string name)
        {
            var fileName = string.Empty;
            if (file != null)
            {
                var fileInfo = new FileInfo(file);
                fileName = fileInfo.Name.Replace(fileInfo.Extension, string.Empty);
            }
            return $"{name ?? Guid.NewGuid().ToString().Substring(0, 4)}_{fileName}_{line}";
        }
    }
}
