const fs = require('fs');
const lexer = require('./lexer');
const parser = require('./parser');

const code = fs.readFileSync('./test.bc', 'utf8');

const tokens = lexer(code);
console.log(tokens);
console.log(parser(tokens));

