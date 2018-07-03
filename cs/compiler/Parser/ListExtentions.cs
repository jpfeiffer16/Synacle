using System.Collections.Generic;

namespace compiler
{
    public static class ListExtentions {
        public static T Pop<T>(this List<T> list) {
            var count = list.Count;
            var val = list[count - 1];
            list.RemoveAt(count - 1);
            return val;
        }
    }
}