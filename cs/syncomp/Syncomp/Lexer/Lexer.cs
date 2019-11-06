using System;
using System.Collections.Generic;
using System.Linq;

namespace syncomp
{

    public class Lexer
    {
        #region "Properties and Fields"
        private int _index = 0;
        public string _code = string.Empty;
        private readonly string _fileName;
        private List<SyntaxToken> _tokens = new List<SyntaxToken>();
        private string[] _lines;
        private int _line = 1;
        private int _column = 0;
        public string[] Lines
        {
            get => _lines ?? (_lines = _code.Split('\n'));
        }
        #endregion

        #region "Constuctor"
        public Lexer(string code, string fileName = "unknown.bc")
        {
            this._code = code ?? throw new ArgumentNullException(nameof(code));
            this._fileName = fileName;
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
            // _column++;
            var ch = Pop();
            #region "Comments"
            if (ch == "/")
            {
                var pkChar = Peek();
                if (pkChar == "/")
                {
                    Pop();
                    string comment = string.Empty;
                    do
                    {
                        ch = Pop();
                        comment += ch;
                    } while (Peek() != "\n");
                    return CreateSyntaxToken(SyntaxTokenType.Comment, "//" + comment);
                }
            }
            #endregion

            #region "Preprocessor Directives"
            if (ch == "#")
            {
                string directive = string.Empty;
                do
                {
                    ch = Pop();
                    directive += ch;
                } while (Peek() != "\n");
                return CreateSyntaxToken(SyntaxTokenType.PreprocessorDirective, "#" + directive);
            }
            #endregion

            #region "Whitespace"
            if (ch == "\r")
            {
                ch = Pop();
            }
            if (ch == "\n")
            {
                _line++;
                _column = 0;
                return CreateSyntaxToken(SyntaxTokenType.NewLine, ch);
            }
            if (ch == "\t")
                return CreateSyntaxToken(SyntaxTokenType.Tab, ch);
            if (ch == " ")
                return CreateSyntaxToken(SyntaxTokenType.Space, ch);
            #endregion

            #region "Integer"
            if (IsNumber(ch))
            {
                var number = ch;
                while (IsNumber(Peek()))
                {
                    number += Pop();
                }
                //NOTE: We have an integer syntax type. We should use it at some point
                return CreateSyntaxToken(SyntaxTokenType.Identifier, number);
            }
            #endregion

            #region "String Literals"
            if (ch == "\"")
            {
                var str = string.Empty;
                while (true)
                {
                    var strCh = Pop();
                    if (strCh == "\"")
                        break;
                    else
                        str += strCh;
                }
                return CreateSyntaxToken(SyntaxTokenType.StringLiteral, str);
            }
            #endregion

            #region "Pointer Operators"
            if (ch == "~")
            {
                return CreateSyntaxToken(SyntaxTokenType.Deref, ch);
            }
            if (ch == "&" && Peek() != "&")
            {
                return CreateSyntaxToken(SyntaxTokenType.AddressOf, ch);
            }
            #endregion

            #region "Math Operators"
            if (ch == "+" && Peek() == "+")
            {
                Pop();
                return CreateSyntaxToken(SyntaxTokenType.Incr, "++");
            }
            if (ch == "-" && Peek() == "-")
            {
                Pop();
                return CreateSyntaxToken(SyntaxTokenType.Decr, "--");
            }
            if (ch == "+")
            {
                return CreateSyntaxToken(SyntaxTokenType.Addition, ch);
            }
            if (ch == "-")
            {
                return CreateSyntaxToken(SyntaxTokenType.Subtraction, ch);
            }
            if (ch == "*")
            {
                return CreateSyntaxToken(SyntaxTokenType.Multiplication, ch);
            }
            if (ch == "/")
            {
                return CreateSyntaxToken(SyntaxTokenType.Division, ch);
            }
            if (ch == "%")
            {
                return CreateSyntaxToken(SyntaxTokenType.Mod, ch);
            }
            #endregion

            #region "Logic Operators"
            if (ch == "=" && Peek() == "=")
            {
                Pop();
                return CreateSyntaxToken(SyntaxTokenType.Equal, "==");
            }
            if (ch == "<" && Peek() != "=")
            {
                return CreateSyntaxToken(SyntaxTokenType.LessThan, ch);
            }
            if (ch == "<" && Peek() == "=")
            {
                Pop();
                return CreateSyntaxToken(SyntaxTokenType.LessThanOrEqual, "==");
            }
            if (ch == ">" && Peek() != "=")
            {
                return CreateSyntaxToken(SyntaxTokenType.GreaterThan, ch);
            }
            if (ch == ">" && Peek() == "=")
            {
                Pop();
                return CreateSyntaxToken(SyntaxTokenType.GreaterThanOrEqual, "==");
            }
            if (ch == "!")
            {
                return CreateSyntaxToken(SyntaxTokenType.Not, ch);
            }
            if (ch == "&" && Peek() == "&")
            {
                Pop();
                return CreateSyntaxToken(SyntaxTokenType.And, "&&");
            }
            if (ch == "|" && Peek() == "|")
            {
                return CreateSyntaxToken(SyntaxTokenType.And, ch);
            }
            #endregion

            #region "Symbols"
            if (ch == "(")
                return CreateSyntaxToken(SyntaxTokenType.LeftParen, ch);
            if (ch == ")")
                return CreateSyntaxToken(SyntaxTokenType.RightParen, ch);
            if (ch == "{")
                return CreateSyntaxToken(SyntaxTokenType.LeftCurly, ch);
            if (ch == "}")
                return CreateSyntaxToken(SyntaxTokenType.RightCurly, ch);
            if (ch == ";")
                return CreateSyntaxToken(SyntaxTokenType.SemiColon, ch);
            #endregion

            #region "Variables"
            if (ch == "=")
            {
                return CreateSyntaxToken(SyntaxTokenType.VariableAssignment, ch);
            }
            #endregion

            #region "Identifiers"
            if (IsLetter(ch))
            {
                var token = ch;
                while (IsLetter(Peek()))
                {
                    token += Pop();
                }
                var tokenMatches = Grammar.Tokens.Where(tkn => tkn.Token == token);
                if (tokenMatches.Count() > 0)
                {
                    return CreateSyntaxToken(tokenMatches.FirstOrDefault().Type, token);
                }
                else
                {
                    return CreateSyntaxToken(SyntaxTokenType.Identifier, token);
                }
            }
            #endregion

            #region "Colon"
            if (ch == ":")
            {
                return CreateSyntaxToken(SyntaxTokenType.Colon, ch);
            }
            #endregion

            #region "casting"
            if (ch == "as")
            {
                return CreateSyntaxToken(SyntaxTokenType.As, ch);
            }
            #endregion

            #region "EOF and Unknown"
            if (ch is null)
                return CreateSyntaxToken(SyntaxTokenType.EOF, "");
            else
                return CreateSyntaxToken(SyntaxTokenType.Unknown, ch);
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
            // A - Z or a -z
            return (ch > 64 && ch < 91) || (ch > 96 && ch < 123) || ch == 95;
            // return (ch > 64 && ch < 123);
        }

        private SyntaxToken CreateSyntaxToken(SyntaxTokenType tokenType, string token)
        {
            _column += token.Length;
            return new SyntaxToken
            {
                Type = tokenType,
                Token = token,
                File = this._fileName,
                Index = _column,
                Line = _line
            };
        }

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
            // _column++;
            return _index < _code.Length ? _code[_index++].ToString() : null;
        }
        private string Peek()
        {
            return _index < _code.Length ? _code[_index].ToString() : null;
        }
        #endregion
    }
}
