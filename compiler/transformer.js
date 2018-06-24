const expect = require('./expect');

const ctxDefaults = {
  variables: [],
  registerLevel: 0,
  // hasNotSupport: 0
};

module.exports = function(ast, ctx = ctxDefaults) {
  let mem = transform(ast, ctx);
  mem = ensureNotSupport(mem, ctx);
  return mem;
}

function transform(ast, ctx) {
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

    if (astNode.type === 'LESS_THAN') {
      const originalRegisterLevel = ctx.registerLevel;
      memory = memory.concat(transform([astNode.operand], ctx));
      ctx.registerLevel += 1;
      memory = memory.concat(transform([astNode.operator], ctx));
      ctx.registerLevel = originalRegisterLevel;
      memory.push(`eq reg2 reg0 reg1`);
      memory.push(`gt reg3 reg0 reg1`);
      memory.push(`or reg0 reg2 reg3`);
      memory.push(`call >not`);
    }

    if (astNode.type === 'WHILE') {
      const rand = Math.round(Math.random() * 100);
      memory.push(`:begin_while_${rand}`);
      memory = memory.concat(transform([astNode.condition][0], ctx));
      memory.push(`jf reg0 >end_while_${rand}`);
      memory = memory.concat(transform([astNode.body][0], ctx));
      memory.push(`jmp >begin_while_${rand}`);
      memory.push(`:end_while_${rand}`);
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

function ensureNotSupport(memory, ctx) {
  ctx.hasNotSupport = true;
  return memory.concat(
    `:not
    jf reg0 >isfalse
    :istrue
    set reg0 0
    ret
    :isfalse
    set reg0 1
    ret`
    .split('\n')
    .map(ln => ln.trim())
  );
}