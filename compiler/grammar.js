const syntaxTokenTypes = {
  VARIABLE_DECLARATION: {
    name: 'var'
  },
  VARIABLE_ASSIGNMENT: {
    name: '='
  },
  ADD: {
    name: '+'
  },
  SUBTRACT: {
    name: '-'
  },
  MOD: {
    name: '%'
  },
  NOT: {
    name: '!'
  },
  EQUALS: {
    name: '=='
  },
  AND: {
    name: '&&'
  },
  OR: {
    name: '||'
  },
  LESS_THAN: {
    name: '<'
  },
  GREATER_THAN: {
    name: '>'
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
  LEFT_CURLY: {
    name: '{'
  },
  RIGHT_CURLY: {
    name: '}'
  },
  FUNCTION_DECLARATION: {
    name: 'function'
  },
  IF: {
    name: 'if'
  },
  WHILE: {
    name: 'while'
  },
  RETURN: {
    name: 'return'
  },
  ADDRESSOF: {
    name: '&'
  },
  DEREF: {
    name: '*'
  },
  //Were letting this one fall through the parser
  //on purpose for now.
  COMMA: {
    name: ','
  },
  IDENTIFIER: {}
}

module.exports = {
  syntaxTokenTypes,
  SyntaxToken
}

function SyntaxToken(tknString) {
  var matchedTokens = Object.keys(syntaxTokenTypes).filter(tknType => syntaxTokenTypes[tknType].name === tknString);
  if (matchedTokens.length) this.type = matchedTokens[0];
  else this.type = 'IDENTIFIER';
  this.token = tknString;
}

SyntaxToken.prototype.isNumeric = function() {
  return !isNaN(parseInt(this.token));
}