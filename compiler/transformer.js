const expect = require('./expect');
const VariableStack = require('./variableStack');

const ctxDefaults = {
  variables: new VariableStack(),
  // variables: [],
  // refs: [],
  registerLevel: 0,
  hasNotSupport: false,
  hasAndSupport: false,
  hasOrSupport: false,
  hasSubtractSupport: false
};

module.exports = function(ast, ctx = ctxDefaults) {
  let mem = transform(ast, ctx);
  mem = ensureNotSupport(mem, ctx);
  mem = ensureAndSupport(mem, ctx);
  mem = ensureOrSupport(mem, ctx);
  mem = ensureSubtractSupport(mem, ctx);
  return mem;
}

function transform(ast, ctx) {
  let memory = [];
  for (let i = 0; i < ast.length; i++) {
    const astNode = ast[i];

    if (astNode.type === 'IDENTIFIER') {
      // const variable = ctx.variables.find(variable => variable.identifier.token === astNode.name);
      const variable = ctx.variables.getVariable(astNode.name);
      
      memory.push(`rmem reg${ctx.registerLevel} ${variable.memoryAddress.token}`);
    }

    if (astNode.type === 'INTEGER_LITTERAL') {
      memory.push(`set reg${ctx.registerLevel} ${astNode.value}`);
    }

    if (astNode.type === 'VARIABLE_DECLARATION') {
      // ctx.variables.push(astNode);
      ctx.variables.add(astNode);
    }

    if (astNode.type === 'VARIABLE_ASSIGNMENT') {
      //TODO: Need to make this a method
      // const variable = ctx.variables.find(variable => variable.identifier.token === astNode.name);
      const variable = ctx.variables.getVariable(astNode.name);
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
    } else if (astNode.type === 'FUNCTION_CALL' && astNode.name === 'in') {
      memory.push(`in reg0`);
    } else if (astNode.type === 'FUNCTION_CALL' && astNode.name === 'exit') {
      memory.push(`halt`);
    } else if (astNode.type === 'FUNCTION_CALL') {
      // const originalRegisterLevel = ctx.registerLevel;
      const originalRegisterLevel = ctx.registerLevel;
      astNode.parameters.forEach((parameterAstNode, index) => {
        memory = memory.concat(transform([astNode.parameters[index]], ctx));
        ctx.registerLevel += 1;
        // const variable = ctx.variables.find(variable => variable.identifier.token === parameterAstNode.name);
        // const variable = ctx.variables.getVariable(parameterAstNode.name);
        // if (variable) {
        //   memory.push(`rmem reg${index} ${variable.memoryAddress.token}`);
        //   // memory.push(`set reg${index} ${variable.memoryAddress.token}`);
        // } else {
        //   throw 'Must pass params';
        // }
        
        // ctx.registerLevel += 1;
      });
      ctx.registerLevel = originalRegisterLevel;

      // ctx.registerLevel = originalRegisterLevel;

      memory.push(`call >${astNode.name}`);
    }

    if (astNode.type === 'FUNCTION_DECLARATION') {
      memory.push(`:${astNode.identifier.token}`);
      ctx.variables.push();
      memory = memory.concat(transform(astNode.params, ctx));
      astNode.params.forEach((parameterNode, index) => {
        memory.push(`wmem ${parameterNode.memoryAddress.token} reg${index}`);
        ctx.variables.setRef(parameterNode, );
      });
      memory = memory.concat(transform(astNode.body, ctx));
      ctx.variables.pop();
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

    if (astNode.type === 'SUBTRACT') {
      const originalRegisterLevel = ctx.registerLevel;
      memory = memory.concat(transform([astNode.operand], ctx));
      ctx.registerLevel += 1;
      memory = memory.concat(transform([astNode.operator], ctx));
      ctx.registerLevel = originalRegisterLevel;
      memory.push(`call >subtract`);
    }

    if (astNode.type === 'MOD') {
      const originalRegisterLevel = ctx.registerLevel;
      memory = memory.concat(transform([astNode.operand], ctx));
      ctx.registerLevel += 1;
      memory = memory.concat(transform([astNode.operator], ctx));
      ctx.registerLevel = originalRegisterLevel;
      memory.push(`mod reg0 reg0 reg1`);
    }

    if (astNode.type === 'NOT') {
      const originalRegisterLevel = ctx.registerLevel;
      memory = memory.concat(transform([astNode.operand], ctx));
      ctx.registerLevel = originalRegisterLevel;
      memory.push(`call >not`);
    }

    if (astNode.type === 'EQUALS') {
      const originalRegisterLevel = ctx.registerLevel;
      memory = memory.concat(transform([astNode.operand], ctx));
      ctx.registerLevel += 1;
      memory = memory.concat(transform([astNode.operator], ctx));
      ctx.registerLevel = originalRegisterLevel;
      memory.push('eq reg0 reg0 reg1');
    }

    if (astNode.type === 'AND') {
      const originalRegisterLevel = ctx.registerLevel;
      memory = memory.concat(transform([astNode.operand], ctx));
      ctx.registerLevel += 1;
      memory = memory.concat(transform([astNode.operator], ctx));
      ctx.registerLevel = originalRegisterLevel;
      memory.push('call >and');
    }

    if (astNode.type === 'OR') {
      const originalRegisterLevel = ctx.registerLevel;
      memory = memory.concat(transform([astNode.operand], ctx));
      ctx.registerLevel += 1;
      memory = memory.concat(transform([astNode.operator], ctx));
      ctx.registerLevel = originalRegisterLevel;
      memory.push('call >or');
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

    if (astNode.type === 'GREATER_THAN') {
      const originalRegisterLevel = ctx.registerLevel;
      memory = memory.concat(transform([astNode.operand], ctx));
      ctx.registerLevel += 1;
      memory = memory.concat(transform([astNode.operator], ctx));
      ctx.registerLevel = originalRegisterLevel;
      memory.push(`gt reg0 reg0 reg1`);
    }

    if (astNode.type === 'IF') {
      const rand = Math.round(Math.random() * 100);
      memory = memory.concat(transform([astNode.condition][0], ctx));
      memory.push(`jf reg0 >end_if_${rand}`);
      memory = memory.concat(transform([astNode.body][0], ctx));
      memory.push(`:end_if_${rand}`);
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
      // const variable = ctx.variables.find(variable => variable.identifier.token === operand.token);
      const variable = ctx.variables.getVariable(operand.token);

      memory.push(`rmem reg0 ${variable.memoryAddress.token}`);
    }

    if (astNode.type === 'RETURN') {
      memory.push('ret');
    }
  }

  return memory;
}

function ensureNotSupport(memory, ctx) {
  if (!ctx.hasNotSupport) {
    ctx.hasNotSupport = true;
    return memory.concat(
      `:not
      jf reg0 >not_isfalse
      :not_istrue
      set reg0 0
      ret
      :not_isfalse
      set reg0 1
      ret`
      .split('\n')
      .map(ln => ln.trim())
    );
  }
}

function ensureAndSupport(memory, ctx) {
  if (!ctx.hasAndSupport) {
    ctx.hasAndSupport = true;
    return memory.concat(
      `:and
      jf reg0 >and_isfalse
      jf reg1 >and_isfalse
      :and_istrue
      set reg0 1
      ret
      :and_isfalse
      set reg0 0
      ret`
      .split('\n')
      .map(ln => ln.trim())
    );
  }
}

function ensureOrSupport(memory, ctx) {
  if (!ctx.hasOrSupport) {
    ctx.hasOrSupport = true;
    return memory.concat(
      `:or
      jt reg0 >or_istrue
      jt reg1 >or_istrue
      :or_isfalse
      set reg0 0
      ret
      :or_istrue
      set reg0 1
      ret`
      .split('\n')
      .map(ln => ln.trim())
    );
  }
}

function ensureSubtractSupport(memory, ctx) {
  if (!ctx.hasSubtractSupport) {
    ctx.hasSubtractSupport = true;
    return memory.concat(
      `:subtract
      add reg0 reg0 32767
      add reg1 reg1 32767
      jt reg1 >subtract
      ret`
      .split('\n')
      .map(ln => ln.trim())
    );
  }
}