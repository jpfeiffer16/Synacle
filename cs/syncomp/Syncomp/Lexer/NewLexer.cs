using System;
using System.Collections.Generic;
using System.Linq;

namespace syncomp
{

    public class NewLexer
    {
        private enum CharType
        {
            Char,
            Digit,
            Symbol,
            Whitespace,
            Comment,
            StringLiteral,
            Unknown
        }

        private string code;

        public NewLexer(string code)
        {
            this.code = code;
        }

        public (List<SyntaxToken>, List<string>) Lex()
        {
            var tokenList = new List<(int line, int index, string token)>();
            var currentType = CharType.Unknown;
            var currentToken = string.Empty;
            var line = 0;
            var index = 0;
            foreach (var ch in this.code)
            {
                var charType = GetCharType(ch);
                if (charType != currentType || charType == CharType.Symbol)
                {
                    tokenList.Add((line, index, currentToken));
                    currentToken = string.Empty;
                    currentType = charType;
                }
                currentToken += ch;
                if (ch == '\n')
                {
                    line++;
                    index = 0;
                }
                else
                {
                    index++;
                }
            }
            // TODO: Collapse this
            tokenList = tokenList.Where(tkn => !string.IsNullOrEmpty(tkn.token)).ToList();
            var tokens = new List<SyntaxToken>();
            foreach (var token in tokenList)
            {
                tokens.Add(new SyntaxToken(token.token));
                // var match = Grammar.Tokens.Where(tkn => tkn.Token == token.token);
                // if (match != null) tokens.Add(match);
            }
            throw new NotImplementedException();
        }

        private static CharType GetCharType(char ch)
        {
            // TODO: Ghaa! Think about the perforances!
            if (int.TryParse(new String(new[] { ch }), out var _))
                return CharType.Digit;
            switch (ch)
            {
                case ' ':
                    return CharType.Whitespace;
                case '\t':
                    return CharType.Whitespace;
                case '\n':
                    return CharType.Whitespace;
                case '(':
                    return CharType.Symbol;
                case ')':
                    return CharType.Symbol;
                case '[':
                    return CharType.Symbol;
                case ']':
                    return CharType.Symbol;
                case '{':
                    return CharType.Symbol;
                case '}':
                    return CharType.Symbol;
                case '/':
                    return CharType.Symbol;
                case ';':
                    return CharType.Symbol;
                case '"':
                    return CharType.StringLiteral;
            }
            return CharType.Char;
        }
    }
}
