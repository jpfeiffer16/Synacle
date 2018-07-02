#!/bin/bash

cwd=$(pwd)

alias compiler="node $cwd/compiler/compiler.js $0"
alias vm="node $cwd/vm.js $0"
alias asm="node $cwd/assembler/asm.js $0"
alias disasm="node $cwd/assembler/disasm.js $0"