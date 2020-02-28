using System;

namespace syncomp
{
    public class TypeNotFoundException : Exception
    {
        string TypeName { get; }
        public TypeNotFoundException(string typeName)
        {
            this.TypeName = typeName;
        }
    }

}
