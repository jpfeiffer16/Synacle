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


module.exports = function(tokens) {
  const ast = [];

  for (let i = 0; i < tokens.length; i++) {
    const token = tokens[i];
    
    if (token.token === 'var') {
      token.identifier = tokens[++i];
      expect('identifier', false, token.identifier.isNumeric());
      token.dimSeparator = tokens[++i];
      expect('dimSeparator', ':', token.dimSeparator.token);      
      token.memoryAddress = tokens[++i];  
      ast.push(token);
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