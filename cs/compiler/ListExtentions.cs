using System.Collections.Generic;

namespace compiler
{
    public static class ListExtentions {
        public static T Pop<T>(this List<T> list) {
            var count = list.Count;
            if (count > 0) {
                var val = list[count - 1];
                list.RemoveAt(count - 1);
                return val;
            } else {
                return default(T);
            }
            
        }

        public static List<T> Splice<T>(
            this List<T> list, int from, int length, List<T> replace)
        {
            list.RemoveRange(from, length);
            list.InsertRange(from, replace);

            return list;
        }
    }
}