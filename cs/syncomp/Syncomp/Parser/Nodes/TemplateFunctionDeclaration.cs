using System.Collections.Generic;

namespace syncomp
{
    public class TemplateFunctionDeclaration : AstNode
    {
        public TemplateFunctionDeclaration(
            string name,
            // TODO: Remove if not needed
            // List<SyntaxToken> nameTokens,
            List<SyntaxToken> functionTokens,
            string file,
            int line,
            int column)
            : base("TEMPLATE_FUNCTION_DECLARATION", file, line, column)
        {
            if (string.IsNullOrWhiteSpace(name))
            {
                throw new System.ArgumentException($"'{nameof(name)}' cannot be null or whitespace", nameof(name));
            }

            this.FunctionTokens = functionTokens ?? throw new System.ArgumentNullException(nameof(functionTokens));
            this.Name = name;
        }

        public List<SyntaxToken> FunctionTokens { get; }
        public string Name { get; }
    }
}
