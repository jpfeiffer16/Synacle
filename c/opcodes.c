#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "state.h"

void op_halt(state *vm_state) {
    vm_state->stopped = true;
}
void op_set(state *vm_state) {
}
void op_push(state *vm_state) {
}
void op_pop(state *vm_state) {
}
void op_eq(state *vm_state) {
}
void op_gt(state *vm_state) {
}
void op_jmp(state *vm_state) {
}
void op_jt(state *vm_state) {
}
void op_jf(state *vm_state) {
}
void op_add(state *vm_state) {
}
void op_mult(state *vm_state) {
}
void op_mod(state *vm_state) {
}
void op_and(state *vm_state) {
}
void op_or(state *vm_state) {
}
void op_not(state *vm_state) {
}
void op_rmem(state *vm_state) {
}
void op_wmem(state *vm_state) {
}
void op_call(state *vm_state) {
}
void op_ret(state *vm_state) {
}
void op_out(state *vm_state) {
}
void op_in(state *vm_state) {
}
void op_noop(state *vm_state) {
}

void (*opcodes[22])(state*) = {
    op_halt,
    op_set,
    op_push,
    op_pop,
    op_eq,
    op_gt,
    op_jmp,
    op_jt,
    op_jf,
    op_add,
    op_mult,
    op_mod,
    op_and,
    op_or,
    op_not,
    op_rmem,
    op_wmem,
    op_call,
    op_ret,
    op_out,
    op_in,
    op_noop
};

