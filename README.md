# Syancle - A Toolchain for the Synacor Challenge
My code for the [Synacor challenge](https://challenge.synacor.com/) and related toolchains I have developed for it.

## VMs

There are three vms. One in witten JS, one in C# and another in C. Right now the JS vm is the primary used for testing as it was the first and is the most feature rich (debugging etc).

## Assembler

There is an assembler written in JS that assembles text files into synacor binaries.
It is located in the synasm folder. To install the assembler, disassembler, and primary vm,
run `sudo npm install -g .` from the root of the repo. This will install the `syn-asm`,
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

`sudo make install`

This will add the `syncomp` command to your system.

and run:

`sudo make uninstall`

to uninstall it.

### The language

The language used in the compiler toolchain is a custom language developed just for the Synacor VM. Files are saved with the .bc extention.


#### Examples

Hello World

```javascript
#include "./lib/stdlib.bc"

function main(string name) : void {
    print("Hello, ");
    print(name);
    println("!");

}

main("World");
```

This compiles to:

```assembly
jmp >main_end
:main
jmp >var_name_example_3_end
:var_name_example_3
:var_name_example_3_end
wmem >var_name_example_3 reg0
jmp >var__example_4_end
:var__example_4
&e
&l
&l
&o
&,
32
0
:var__example_4_end
wmem >var__example_4 &H
set reg0 >var__example_4
call >print
rmem reg0 >var_name_example_3
call >print
jmp >var__example_6_end
:var__example_6
0
:var__example_6_end
wmem >var__example_6 &!
set reg0 >var__example_6
call >println
ret
:main_end
set reg0 >main
jmp >var__example_10_end
:var__example_10
&o
&r
&l
&d
0
:var__example_10_end
wmem >var__example_10 &W
set reg0 >var__example_10
call >main
halt
```

Library code in the above assembly has been omitted for brevity.

This can then be assembled with the assembler into a binary.
