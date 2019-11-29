using System;

namespace syncomp
{
    // NOTE: The helpers in this class will be responsible for getting the size and offsets
    // of fields in a type
    /* Anatomy of a type
     * Variable exec gard jump to end label
     * Variable label
     * <fld labels>
     * Variable exec gard jump end label
     * */
    public class SizeHelper
    {
        // private const int 
        public static int GetTypeSize(LangType tp)
        {
            return
                1                   // Jump guard
                + 1                 // Begin label
                + tp.Body.Count     // Fields
                +1;                 // End label
        }
    }
}
