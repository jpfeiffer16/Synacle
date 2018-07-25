# Synacor Challenge Toolchain
My code for the [Synacor challenge](https://challenge.synacor.com/) and related toolchains I have developed for it.

## VMS

There are two vms. One in witten JS and one in C#. Right now the JS vm is the primary used for testing as it was the first and is the most feature rich (debugging etc).

## Compiler Toolcahin

### Compilers

There is a compiler toolchain included in the repo. There are also two versions of this. The prototype, witten in JS is no longer maintained. The compiler witten in C# is actively maintained.

### The language

The language used in the compiler toolchain is a custom language developed just for the Synacor VM. Files are saved with the .bc extention.


### Examples

Hello World

```javascript
#include "stdlib.bc";

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

### Assembler

There is an assembler written in JS that assembles text files into synacor binaries.
