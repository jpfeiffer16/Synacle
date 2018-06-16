const grammar = require('./grammar');

module.exports = function(code) {
  let currentToken = '';
  const tokens = [];

  for (let i = 0; i < code.length; i++) {
    const char = code[i].trim();
    const match = matchToken(char);
    if (match) {
      if (currentToken.length) {
        const matchedTokens = grammar
          .tokens
          .filter(tkn => tkn.token === currentToken);
        if (matchedTokens.length) {
          tokens.push(matchedTokens[0]);
        } else {
          tokens.push({
            token: currentToken,
            name: 'identifier'
          });
        }
        currentToken = '';
      }
      tokens.push(match);
    } else {
      if (char === '') {
        if (currentToken.length) {
          const matchedTokens = grammar
            .tokens
            .filter(tkn => tkn.token === currentToken);
          if (matchedTokens.length) {
            tokens.push(matchedTokens[0]);
          } else {
            tokens.push({
              token: currentToken,
              name: 'identifier'
            });
          }
          currentToken = '';
        }
      } else {
        currentToken += char;
      }
    }
  }

  return tokens;
}

function matchToken(char) {
  if (!grammar.singleCharTokens) {
    grammar.singleCharTokens = grammar.tokens.filter(tkn => tkn.width === 1)
  }
  let tokens = grammar.tokens.filter(tkn => tkn.token === char);
  return tokens.length ? tokens[0] : undefined;
}

function parse(tokens) {

}