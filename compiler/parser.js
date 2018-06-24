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

const expect = require('./expect');

module.exports = function parse(tokens) {
  const ast = [];

  for (let i = 0; i < tokens.length; i++) {
    const token = tokens[i];

    if (token.type === 'VARIABLE_DECLARATION') {
      const identifier = tokens[++i];
      expect('identifier', false, token.isNumeric());
      const node = new AstNode('VARIABLE_DECLARATION');
      node.identifier = identifier;
      const dimSeparator = tokens[++i];
      if (dimSeparator.token === ':') {
        node.dimSeparator = dimSeparator;
        node.memoryAddress = tokens[++i];
      }
      // expect('dimSeparator', ':', token.dimSeparator.token);
      
      ast.push(node);
    }

    if (token.type === 'IDENTIFIER') {
      //Do stuff with identifiers here
      if (!token.isNumeric()) {
          // see if it's a function call
          if (tokens[i + 1] && tokens[i + 1].type === 'LEFT_PAREN') {
              i += 2;
              const orignialI = i;
              i = getMatching(tokens, i, 'PAREN');
              --i;
              //TODO recurse here
              const node = new AstNode('FUNCTION_CALL');
              node.parameters = parse(tokens.slice(orignialI, i));
              node.name = token.token;
              node.isFunctionCall = true;
              ast.push(node);
          } else {
              const node = new AstNode('IDENTIFIER');
              node.name = token.token;
              ast.push(node);
          }
      } else if (token.isNumeric()) {
        const astNode = new AstNode('INTEGER_LITTERAL');
        astNode.value = token.token;
        ast.push(astNode);
      }
    }

    if (token.type === 'ADD') {
        const previousAstNode = ast.pop();
        const nextToken = tokens[++i];
        const node = new AstNode('ADD');
        node.operand = previousAstNode;
        node.operator = parse([nextToken])[0];
        ast.push(node);
    }

    if (token.type === 'LESS_THAN') {
        const previousAstNode = ast.pop();
        const nextToken = tokens[++i];
        const node = new AstNode('LESS_THAN');
        node.operand = previousAstNode;
        node.operator = parse([nextToken])[0];
        ast.push(node);
    }

    if (token.type === 'GREATER_THAN') {
        const previousAstNode = ast.pop();
        const nextToken = tokens[++i];
        const node = new AstNode('GREATER_THAN');
        node.operand = previousAstNode;
        node.operator = parse([nextToken])[0];
        ast.push(node);
    }

    if (token.type === 'SUBTRACT') {
        const previousAstNode = ast.pop();
        const nextToken = tokens[++i];
        const node = new AstNode('SUBTRACT');
        node.operand = previousAstNode;
        node.operator = parse([nextToken])[0];
        ast.push(node);
    }

    if (token.type === 'VARIABLE_ASSIGNMENT') {
        const identifierNode = ast.pop();
        expect(
            'VARIABLE_ASSIGNMENT: typeof identifier node', 'IDENTIFIER',
            identifierNode.type
        );

        const orignialI = ++i;
        i = getNext(tokens, i, 'SEMI_COLON');

        const valueAst = parse(tokens.slice(orignialI, i));

        // const valueToken = tokens[++i];
        // expect(
        //     'VARIABLE_ASSIGNMENT: typeof valueToken',
        //     'IDENTIFIER',
        //     valueToken.type
        // );

        const node = new AstNode('VARIABLE_ASSIGNMENT');
        node.name = identifierNode.name;
        node.value = valueAst;
        ast.push(node);
    }

    if (token.type === 'FUNCTION_DECLARATION') {
        const identifier = tokens[++i]
        expect('function identifier', false, identifier.isNumeric());
        const leftParen = tokens[++i];
        expect('function parameter list start', '(', leftParen.token);
        ++i;
        let orignialI = i;
        i = getMatching(tokens, i, 'PAREN');
        const params = parse(tokens.slice(orignialI, i - 1));

        const leftCurly = tokens[i];
        expect('leftCurly start', '{', leftCurly.token);
        i++;
        orignialI = i;
        i = getMatching(tokens, i, 'CURLY');
        const body = parse(tokens.slice(orignialI, i - 1));
        const node = new AstNode('FUNCTION_DECLARATION');
        node.identifier = identifier;
        node.params = params;
        node.body = body;
        ast.push(node);
    }

    if (token.type === 'WHILE') {
        const leftParen = tokens[++i];
        expect('leftParen start', '(', leftParen.token);
        i++;
        let orignialI = i;
        i = getMatching(tokens, i, 'PAREN');
        const condition = parse(tokens.slice(orignialI, i - 1));
        
        const leftCurly = tokens[i];
        expect('leftCurly start', '{', leftCurly.token);
        i++;
        orignialI = i;
        i = getMatching(tokens, i, 'CURLY');
        const body = parse(tokens.slice(orignialI, i - 1));

        const node = new AstNode('WHILE');
        node.condition = condition;
        node.body = body;
        ast.push(node);
    }

    if (token.type === 'RETURN') {
        const nextToken = tokens[++i];
        const node = new AstNode('RETURN');
        if (nextToken && nextToken.type === 'IDENTIFIER') {
            node.value = nextToken;
        }
        ast.push(node);
    }

    if (token.type === 'ADDRESSOF') {
        const nextToken = tokens[++i];
        expect('ADDRESSOF: typeof nextToken', 'IDENTIFIER', nextToken.type);
        expect('ADDRESSOF: typeof nextToken', false, nextToken.isNumeric());
        const node = new AstNode('ADDRESSOF');
        node.operand = nextToken;
        ast.push(node);
    }

    if (token.type === 'DEREF') {
        const nextToken = tokens[++i];
        expect('DEREF: typeof nextToken', 'IDENTIFIER', nextToken.type);
        const node = new AstNode('DEREF');
        node.operand = parse([nextToken])[0];
        ast.push(node);
    }
  }

  return ast;
}

function getMatching(tokens, index, charTypeToMatch) {
    let nestingLevel = 1;
    while (nestingLevel !== 0) {
        if (tokens[index].type === `LEFT_${charTypeToMatch}`) ++nestingLevel;
        if (tokens[index].type === `RIGHT_${charTypeToMatch}`) --nestingLevel;
        ++index;
    }
    return index;
}

function getNext(tokens, index, charTypeToMatch) {
    while (tokens[index].type !== charTypeToMatch) {
        ++index;
    }
    return index;
}

function AstNode(type) {
    this.type = type;
}