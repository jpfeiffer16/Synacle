#!/bin/bash

cwd=$(pwd)

alias compiler="dotnet $cwd/cs/syncomp/bin/Debug/netcoreapp2.0/syncomp.dll $@"
alias vm="node $cwd/synvm/vm.js $@"
alias asm="node $cwd/synasm/asm.js $@"
alias disasm="node $cwd/synasm/disasm.js $@"