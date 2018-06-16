
module.exports = function(tokens) {
  let current = 0;
  
  function walk() {
    const token = tokens[current];

    if (token.token === 'var') {
      const identifier = tokens[++current];
      if (identifier.name != 'identifier') {
        throw 'Expected identifier';
      }
      return {
        type: 'variable_declaration',
        identifier: identifier.token,
      }
    }

    if (token.token === '=') {
      const variable = tokens[current - 1];
      const value = tokens[++current];
      if (variable && variable.name === 'identifier' &&
          value && value.name === 'identifier') {
        return {
          type: 'variable_assignment',
          variable: variable.token,
          value: value.token
        }
      } else {
        throw 'Expected variable or value'
      }
    }

    current++;
  }

  const ast = [];

  while (current < tokens.length) {
    const result = walk();
    if (result)
      ast.push(result);
  }

  return ast;
}