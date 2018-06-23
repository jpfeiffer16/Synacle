const expect = require('./expect');

module.exports = function transform(ast, ctx = { variables: [] }) {
  let memory = [];
  for (let i = 0; i < ast.length; i++) {
    const astNode = ast[i];

    if (astNode.type === 'IDENTIFIER') {
      const variable = ctx.variables.find(variable => variable.identifier.token === astNode.name);
      
      memory.push(`rmem reg0 ${variable.memoryAddress.token}`);
    }

    if (astNode.type === 'INTEGER_LITERAL') {
      memory.push(`set reg0 ${astNode.value}`);
    }

    if (astNode.type === 'VARIABLE_DECLARATION') {
      ctx.variables.push(astNode);
    }

    if (astNode.type === 'VARIABLE_ASSIGNMENT') {
      const variable = ctx.variables.find(variable => variable.identifier.token === astNode.name);
      if (astNode.value[0].type !== 'INTEGER_LITTERAL') {
        memory = memory.concat(transform(astNode.value, ctx));
      } else {
        memory.push(`set reg0 ${astNode.value[0].value}`);
      }
      memory.push(`wmem ${variable.memoryAddress.token} reg0`);
    }

    if (astNode.type === 'FUNCTION_CALL' && astNode.name === 'out') {
      // const parameter = astNode.parameters[0];
      // if (parameter.type === 'IDENTIFIER') {
      //   const variable = ctx.variables.find(variable => variable.identifier.token === parameter.name);
      //   memory.push(`rmem reg0 ${variable.memoryAddress.token}`);
      //   memory.push(`out reg0`);
      // } else if(parameter.type === 'INTEGER_LITTERAL') {
      //   memory.push(`out ${parameter.value}`);
      // }
    }
    // else if (astNode.type === 'FUNCTION_CALL') {
    //   memory.push(`call >${astNode.name}`);
    // }

    if (astNode.type === 'FUNCTION_DECLARATION') {
      memory.push(`:${astNode.identifier.token}`);
      memory = memory.concat(transform(astNode.body, ctx));
      memory.push('ret');
    }

    if (astNode.type === 'ADD') {
      // let operandValue;
      // if (astNode.operand.type === 'IDENTIFIER') {
      //   const variable = ctx.variables.find(variable => variable.identifier.token === astNode.operand.name);
      //   memory.push(`rmem reg0 ${variable.memoryAddress.token}`);
      //   operandValue = 'reg0'
      // } else if (astNode.operand.type === 'INTEGER_LITTERAL') {
      //   operandValue = astNode.operand.value;
      // } else {
      //   //TODO: Transform the next node in the tree. Assume it is another expression
      // }

      // let operatorValue;
      // if (astNode.operator.type === 'IDENTIFIER') {
      //   const variable = ctx.variables.find(variable => variable.identifier.token === astNode.operator.name);
      //   memory.push(`rmem reg1 ${variable.memoryAddress.token}`);
      //   operatorValue = 'reg1'
      // } else if (astNode.operator.type === 'INTEGER_LITTERAL') {
      //   operatorValue = astNode.operator.value;
      // } else {
      //   //TODO: Transform the next node in the tree. Assume it is another expression
      // }

      // memory.push(`add reg0 ${operandValue} ${operatorValue}`);
    }

    if (astNode.type === 'DEREF') {
      const operand = astNode.operand;
      memory = memory.concat(transform([operand], ctx));
      memory.push(`rmem reg0 reg0`);
    }

    if (astNode.type === 'ADDRESSOF') {
      const operand = astNode.operand;
      const variable = ctx.variables.find(variable => variable.identifier.token === operand.token);

      memory.push(`rmem reg0 ${variable.memoryAddress.token}`);
    }

    if (astNode.type === 'RETURN') {
      memory.push('ret');
    }
  }

  return memory;
}