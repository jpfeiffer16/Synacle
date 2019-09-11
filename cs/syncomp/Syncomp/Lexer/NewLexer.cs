using System;
using System.Collections.Generic;
using System.Linq;

namespace syncomp
{

    public class NewLexer
    {
        #region "Properties and Fields"
        private int _index = 0;
        public string _code = string.Empty;
        private List<SyntaxToken> _tokens = new List<SyntaxToken>();
        private string[] _lines;
        public string[] Lines
        {
            get => _lines ?? (_lines = _code.Split('\n'));
        }
        #endregion

        #region "Constuctor"
        public NewLexer(string code)
        {
            this._code = code ?? throw new ArgumentNullException(nameof(code));
        }
        #endregion

        #region "Public Methods"
        public List<SyntaxToken> Lex()
        {
            SyntaxToken nextToken;
            while ((nextToken = NextToken()).Type != SyntaxTokenType.EOF)
            {
                _tokens.Add(nextToken);
            }

            return _tokens;
        }

        private SyntaxToken NextToken()
        {
            var ch = Pop();
            #region "Comments"
            if (ch == "/")
            {
                var pkChar = Peek();
                if (pkChar == "/")
                {
                    Pop();
                    string commentChar = string.Empty;
                    string comment = string.Empty;
                    do
                    {
                        ch = Pop();
                        comment += ch;
                    } while (Peek() != "\n");
                    return CreateSyntaxToken(SyntaxTokenType.Comment, comment);
                }
            }
            #endregion

            #region "Whitespace"
            if (ch == "\n")
                return CreateSyntaxToken(SyntaxTokenType.NewLine, ch);
            if (ch == "\t")
                return CreateSyntaxToken(SyntaxTokenType.Tab, ch);
            if (ch == " ")
                return CreateSyntaxToken(SyntaxTokenType.Space, ch);
            #endregion

            #region "Digits"
            if (IsNumber(ch))
            {
                var number = ch;
                while (IsNumber(Peek()))
                {
                    number += Pop();
                }
                return CreateSyntaxToken(SyntaxTokenType.Integer, number);
            }
            #endregion

            #region "Logic Operators"
            if (ch == "=" && Peek() == "=")
            {
                Pop();
                return CreateSyntaxToken(SyntaxTokenType.Equal, "==");
            }
            #endregion

            #region "Symbols"
            #endregion

            #region "Letters"
            if (IsLetter(ch))
            {
                var token = ch;
                while (IsLetter(Peek()))
                {
                    token += Pop();
                }
                return CreateSyntaxToken(SyntaxTokenType.Identifier, token);
            }
            #endregion
            #region "EOF and Unknown"
            if (this._index >= this._code.Length)
                return CreateSyntaxToken(SyntaxTokenType.EOF, "");
            else
                return CreateSyntaxToken(SyntaxTokenType.Unknown, "");
            #endregion
        }

        #endregion

        #region "Helpers"
        private bool IsNumber(string str)
        {
            if (string.IsNullOrEmpty(str)) return false;
            return int.TryParse(str, out _);
        }

        private bool IsLetter(string str)
        {
            if (string.IsNullOrEmpty(str)) return false;
            var ch = str[0];
            return ch > 64 && ch < 123;
        }

        // private string Current() => this._code[this._index].ToString();
        private SyntaxToken CreateSyntaxToken(SyntaxTokenType tokenType, string token) => new SyntaxToken
        {
            Type = tokenType,
            Token = token,
            // TODO:
            // File = file,
            Index = _index,
            Line = GetLineFromIndex()
        };

        private int GetLineFromIndex()
        {
            var count = 0;
            for (int i = 0; i < Lines.Length; i++)
            {
                string line = (string)Lines[i];
                count += line.Length;
                if (count > _index) return i;
            }
            return 0;
        }

        private string Pop()
        {
            return _index < _code.Length ? _code[_index++].ToString() : null;
        }
        private string Peek()
        {
            return _index < _code.Length ? _code[_index].ToString() : null;
        }
        #endregion
    }
}
