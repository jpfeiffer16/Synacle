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
    }
}
