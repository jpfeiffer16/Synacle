const syntaxTokenTypes = {
  VARIABLE_DECLARATION: {
    name: 'var'
  },
  VARIABLE_ASSIGNMENT: {
    name: '='
  },
  SEMI_COLON: {
    name: ';'
  },
  LEFT_PAREN: {
    name: '('
  },
  RIGHT_PAREN: {
    name: ')'
  },
  IDENTIFIER: {}
}

module.exports = {
  syntaxTokenTypes,
  SyntaxToken
}

function SyntaxToken(tknString) {
  var matchedTokens = Object.keys(syntaxTokensTypes).filter(tknType => tknType.name === tknString);
  if (matchedTokens.length) this.type = matchedTokens[0];
  else this.type = syntaxTokenTypes.IDENTIFIER;
  this.token = tknString;
}

SyntaxToken.prototype.isNumeric = function() {
  return parseInt(this.syntaxToken) ? true : false;
}