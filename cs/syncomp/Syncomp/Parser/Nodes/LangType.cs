using System;
using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class LangType : AstNode, IEquatable<LangType>
    {
        public override int Length => this.Name.Length;
        //TODO: Fix!
        public LangType(string name, List<VariableDeclaration> body, string file, int line, int column)
            : base("LANGTYPE", file, line, column)
        {
            this.Name = name;
            this.Body = body;
        }

        public string GetName()
        {
            if (!(this.SubTypes is null) && this.SubTypes.Count > 0)
            {
                return $"{this.Name}<{string.Join(", ", this.SubTypes.Select(t => t.GetName()))}>";
            }
            else
            {
                return this.Name;
            }
        }

        public bool Equals(LangType other)
        {
            if (other is null) return false;
            if (other.Name == "void") return true;
            if (other.IsTypeParameter || this.IsTypeParameter) return true;
            if (this.Name != other.Name) return false;
            if (this.SubTypes == null && other.SubTypes == null) return true;
            if (this.SubTypes == null ^ other.SubTypes == null) return false;
            if (this.SubTypes.Count != other.SubTypes.Count) return false;
            for (var i = 0; i < this.SubTypes.Count; i++)
            {
                if (!this.SubTypes[i].Equals(other.SubTypes[i])) return false;
            }
            return true;
        }

        public void ValidateTypeParameters(ParserContext ctx)
        {
            var type = ctx.GetLangType(this.Name);
            if (type is null)
            {
                this.IsTypeParameter = true;
            }
            else
            {
                foreach (var tp in this.SubTypes)
                {
                    tp.ValidateTypeParameters(ctx);
                }
            }
        }

        public string Name { get; }
        public List<VariableDeclaration> Body { get; }
        public List<LangType> SubTypes { get; set; } = new List<LangType>();
        public bool IsTypeParameter { get; set; }
    }
}
