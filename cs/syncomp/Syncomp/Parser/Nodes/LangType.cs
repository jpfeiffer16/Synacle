using System;
using System.Collections.Generic;

namespace syncomp
{
    public class LangType : AstNode, IEquatable<LangType>
    {
        //TODO: Fix!
        public LangType(string name, List<VariableDeclaration> body, string file, int line, int column)
            : base("LANGTYPE", file, line, column)
        {
            this.Name = name;
            this.Body = body;
        }

        public string GetName()
        {
            if (!(this.SubType is null))
            {
                return $"{this.Name}<{this.SubType.Name}>";
            }
            else
            {
                return this.Name;
            }
        }

        public bool Equals(LangType other)
        {
            if (other is null) return false;
            if (this.Name != other.Name) return false;
            if (this.SubType == null && other.SubType == null) return true;
            if (this.SubType == null ^ other.SubType == null) return false;
            return this.SubType.Equals(other.SubType);
        }

        public string Name { get; }
        public List<VariableDeclaration> Body { get; }
        public LangType SubType { get; set; }
    }
}
