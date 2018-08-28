#!/bin/bash

cwd=$(pwd)

alias compiler="dotnet $cwd/cs/compiler/bin/Debug/netcoreapp2.0/compiler.dll $@"
alias vm="node $cwd/vm.js $@"
alias asm="node $cwd/assembler/asm.js $@"
alias disasm="node $cwd/assembler/disasm.js $@"