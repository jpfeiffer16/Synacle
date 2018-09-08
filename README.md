# Synacor Challenge Toolchain
My code for the [Synacor challenge](https://challenge.synacor.com/) and related toolchains I have developed for it.

## VMs

There are two vms. One in witten JS and one in C#. Right now the JS vm is the primary used for testing as it was the first and is the most feature rich (debugging etc).

## Assembler

There is an assembler written in JS that assembles text files into synacor binaries.
It is located in the synvm folder. To install the assembler, disassembler, and primary vm,
run `npm install -g .` from the root of the repo. This will install the `syn-asm`,
`syn-disasm`, and `syn-vm` commands.

## Compiler

There is a compiler toolchain included in the repo. It is written in C# and is located at
cs/syncomp.

The compiler compiles a language called bc down to synacor assembly that can then be 
assembled by the synasm JS utility in this repo.

It works in two ways:
* You can give it a file that it will compile and emit assembly for alongside the source
file

* You can pipe utf-8 source code to it and specify the `-` option as the only parameter
and it will compile from stdin to stdout. This can then be piped straight to the assembler
in order to get a binary without an intermediary .asm file.

To install the compiler on Linux, make sure you have the dotnet core sdk version 2.1
or later, and some make program.

Then from cs/syncomp run:

`make install`

This will add the syncomp command to your system.

and run:

`make uninstall`

to uninstall it.

### The language

The language used in the compiler toolchain is a custom language developed just for the Synacor VM. Files are saved with the .bc extention.


#### Examples

Hello World

```javascript
#include "lib/stdlib.bc"

function main() {
  println("Hello, World!");
}

main();
```

This compiles to:

```assembly
jmp >main_end
:main
jmp >var_df09edc2309d_end
:var_df09edc2309d
&e
&l
&l
&o
&,
32
&W
&o
&r
&l
&d
&!
0
:var_df09edc2309d_end
wmem >var_df09edc2309d &H
set reg0 >var_df09edc2309d
call >println
ret
:main_end
call >main
```

Library code in the above assembly has been omitted for brevity.

This can then be assembled with the assembler to a binary.

There is only one type in the language, int. Strings for example are just contiguous ascii codes in memory terminated by a null byte.
