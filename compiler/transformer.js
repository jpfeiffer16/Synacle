const expect = require('./expect');

const ctxDefaults = {
  variables: [],
  registerLevel: 0
};

module.exports = function transform(ast, ctx = ctxDefaults) {
  let memory = [];
  for (let i = 0; i < ast.length; i++) {
    const astNode = ast[i];

    if (astNode.type === 'IDENTIFIER') {
      const variable = ctx.variables.find(variable => variable.identifier.token === astNode.name);
      
      memory.push(`rmem reg${ctx.registerLevel} ${variable.memoryAddress.token}`);
    }

    if (astNode.type === 'INTEGER_LITTERAL') {
      memory.push(`set reg${ctx.registerLevel} ${astNode.value}`);
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
      const parameter = astNode.parameters[0];
      memory = memory.concat(transform([parameter], ctx));
      memory.push(`out reg0`);
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
      const originalRegisterLevel = ctx.registerLevel;
      memory = memory.concat(transform([astNode.operand], ctx));
      ctx.registerLevel += 1;
      memory = memory.concat(transform([astNode.operator], ctx));
      ctx.registerLevel = originalRegisterLevel;
      memory.push(`add reg0 reg0 reg1`);
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