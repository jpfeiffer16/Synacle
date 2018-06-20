

module.exports = function transform(ast, variables = []) {
  // const variables = [];
  let memory = [];
  for (let i = 0; i < ast.length; i++) {
    const astNode = ast[i];

    if (astNode.type === 'VARIABLE_DECLARATION') {
      variables.push(astNode);
    }

    if (astNode.type === 'VARIABLE_ASSIGNMENT') {
      const variable = variables.find(variable => variable.identifier.token === astNode.name);
      console.log(variable);
      memory.push(`wmem ${variable.memoryAddress.token} ${astNode.value}`);
    }

    if (astNode.type === 'FUNCTION_CALL' && astNode.name === 'out') {
      const parameter = astNode.parameters[0];
      if (parameter.type === 'IDENTIFIER') {
        const variable = variables.find(variable => variable.identifier.token === parameter.name);
        memory.push(`rmem reg0 ${variable.memoryAddress.token}`);
        memory.push(`out reg0`);
      }
    } else if (astNode.type === 'FUNCTION_CALL') {
      memory.push(`call >${astNode.name}`);
    }

    if (astNode.type === 'FUNCTION_DECLARATION') {
      memory.push(`:${astNode.identifier.token}`);
      memory = memory.concat(transform(astNode.body, variables));
      memory.push('ret');
    }

    if (astNode.type === 'RETURN') {
      memory.push('ret');
    }
  }

  return memory;
}