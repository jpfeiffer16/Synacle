using System.Linq;
namespace syncomp
{
    public class TypeHelper
    {
        public static int? GetFieldOffset(LangType langType, string field)
        {
            var fld = langType.Body.Where(tp => tp.Identifier == field).FirstOrDefault();
            if (fld is null) return null;
            return langType.Body.IndexOf(fld) + 1;
        }

        public static int GetTypeLength(LangType langType)
        {
            // If the type has a null body, its length is 1
            return langType?.Body?.Count() > 0 ? langType.Body.Count() + 3 : 1;
        }
    }
}
