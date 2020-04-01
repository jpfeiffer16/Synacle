using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class Parser
    {
        private List<SyntaxToken> tokens;
        public Parser(List<SyntaxToken> tokens)
        {
            this.tokens = tokens;
        }

        public (ParserContext parserContext, List<AstNode>) Parse()
        {
            var parserContext = new ParserContext();
            var ast = new ParserPath()
                .ParseTokens(this.tokens, parserContext)
                .Where(nd => nd != null)
                .ToList();

            return (parserContext, ast);
        }
    }
}
