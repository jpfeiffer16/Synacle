const grammar = require('./grammar');

module.exports = function(code) {
  code = code
    .split('\n')
    .filter(line => line.length && !line.trim().startsWith('//'))
    .join('\n');
  const tokens = [];
  let currentToken = '';
  let currentTokenType;

  for (let i = 0; i < code.length; i++) {
    const char = code[i].trim();
    let charType;
    //First see if it's a number
    if (isNumber(char))  charType = 'number';
    //See if it's a word char
    else if (isWordChar(char)) charType = 'word';
    //Then it's a symbol
    else charType = 'symbol';

    if (currentTokenType !== charType || charType === 'symbol' || i === code.length - 1) {
      if (currentToken.length) {
        tokens.push(new grammar.SyntaxToken(currentToken));
        currentToken = '';
      }
    }
    currentTokenType = charType;
    currentToken += char;
  }
  if (currentToken.length) tokens.push(new grammar.SyntaxToken(currentToken));

  return agregateLikeTokens(tokens);
}

function isNumber(char) {
  return !isNaN(parseInt(char));
}

function isWordChar(char) {
  return char.match(/\w/) ? true : false;
}

function agregateLikeTokens(tokens) {
  const nonOneCharTokens = Object.keys(grammar.syntaxTokenTypes)
    .map(type => grammar.syntaxTokenTypes[type])
    .filter(token => token.name ? token.name.length > 1 : false);
  for(let i = 0; i < tokens.length; i++) {
    const currentToken = tokens[i];
    const nextToken = tokens[i + 1];

    nonOneCharTokens.forEach(grammarToken => {
      const to = i + grammarToken.name.length;
      if (i < tokens.length) {
        const agrTokens = tokens.slice(i, to).map(tkn => tkn.token).join('');
        if (agrTokens === grammarToken.name) {
          tokens.splice(i, to - i, new grammar.SyntaxToken(agrTokens));
        }
      }
    });
  }

  return tokens;
}