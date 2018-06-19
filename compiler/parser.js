/*
    Rules:
        Generally c-style syntax
        All variables are byte types.
        All lines end in semicolons except expression bodies like function
            declarations and scope blocks.

    Examples:

    Variable declaration: var <name>: <memory_address>;
    Variable assignment: <name> = <value;
    Function definition:
        write(arg) {
            out(arg);
        }
    Function calls:
        write(2 + 2);
    Nested scope blocks:
        
*/


module.exports = function parse(tokens) {
  const ast = [];

  for (let i = 0; i < tokens.length; i++) {
    const token = tokens[i];

    if (token.type === 'VARIABLE_DECLARATION') {
      token.identifier = tokens[++i];
      expect('identifier', false, token.identifier.isNumeric());
      const dimSeparator = tokens[++i];
      if (dimSeparator.token === ':') {
        token.dimSeparator = dimSeparator;
        token.memoryAddress = tokens[++i];  
      }
      // expect('dimSeparator', ':', token.dimSeparator.token);      
      
      ast.push(token);
    }

    if (token.type === 'IDENTIFIER') {
      //Do stuff with identifiers here
      if (!token.isNumeric()) {
          // see if it's a function call
          if (tokens[i + 1] && tokens[i + 1].type === 'LEFT_PAREN') {
              i += 2;
              const orignialI = i;
              let nestingLevel = 1;
              while (nestingLevel !== 0) {
                  if (tokens[i].type === 'LEFT_PAREN') ++nestingLevel;
                  if (tokens[i].type === 'RIGHT_PAREN') --nestingLevel;
                  ++i;
              }
              --i;
              //TODO recurse here
              token.parameters = parse(tokens.slice(orignialI, i));
              token.isFunctionCall = true;
              ast.push(token);
          } else {
              ast.push(token);
          }
      }
  }
  }

  return ast;
}

function expect(description, value, condition) {
  if (value !== condition) {
    console.error(`Expected value for ${ description } to be ${ value }, but it was ${ condition }`);
    process.exit(1);
  }
}