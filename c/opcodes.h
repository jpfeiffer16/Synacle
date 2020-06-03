#ifndef OPCODES
#define OPCODES

#include "state.h"

extern void (*opcodes[23])(state*);

extern char* opcode_names[23];

#endif
