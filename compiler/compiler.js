const fs = require('fs');
const program = require('commander');
const path  = require('path');
const lexer = require('./lexer');
const parser = require('./parser');
const transformer = require('./transformer');
const childProcess = require('child_process');

program
  .option('-p, --program [string]', 'Input program')
  .parse(process.argv);

if (!program.program) {
  console.error('Must pass a program with the -p parameter. Use -h for help');
  process.exit(1);
}

const code = fs.readFileSync(program.program, 'utf8');

const tokens = lexer(code);
const ast = parser(tokens);
const assembly = transformer(ast);
console.log(JSON.stringify(ast, null, 2));


const assemblyCode = assembly.join('\n');

const inputPath = path.parse(program.program);

const asmPath = path.join(inputPath.dir, `${inputPath.name}.asm`);

fs.writeFileSync(
  asmPath,
  assemblyCode,
  'utf8'
);

childProcess.exec(`node path.join(__dirname, '../assembler/asm.js') ${asmPath}`, { cwd: __dirname });