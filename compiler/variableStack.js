module.exports = function VariableStack() {
    this.variables = [];
    this.scopeStack = [];

    this.push = () => {
        this.scopeStack.push({});
    }

    this.pop = () => {
        return this.scopeStack.pop();
    }

    this.add = (variable) => {
        this.variables.push(variable);
        this.scopeStack[this.scopeStack.length - 1][variable.identifier.token] = variable;
    }

    this.remove = () => {
        delete this.scopeStack[this.scopeStack.length - 1][variable.identifier.token];
    }

    this.setRef = (variableName, memoryAddress) => {
        const variable = this.variables.find(variable => variable.memoryAddress.token === memoryAddress);
        if (variable) {
            this.scopeStack[this.scopeStack.length - 1][variableName] = variable;
        }
    }

    this.getVariable = (name) => {
        const stacksReversed = this
            .scopeStack
            .reverse();

        for(const i = 0; i < stacksReversed; i++) {
            const stack = stacksReversed[i];

            const varStackInstance = stack[name];
            if (varStackInstance) {
                return varStackInstance;
            }
        }
    }

    this.push();
}