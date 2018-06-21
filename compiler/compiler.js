const fs = require('fs');
const lexer = require('./lexer');
const parser = require('./parser');
const transformer = require('./transformer');

const code = fs.readFileSync('./testexpression.bc', 'utf8');

const tokens = lexer(code);
const ast = parser(tokens);
const assembly = transformer(ast);
console.log(JSON.stringify(ast, null, 2));
fs.writeFileSync('./testexpression.asm', assembly.join('\n'),'utf8');

