#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "state.h"

void op_halt(state *vm_state) {
    vm_state->stopped = true;
    printf("exiting");
}
void op_set(state *vm_state) {
    uint16_t a = vm_state->mem[++vm_state->code_pointer];
    uint16_t b = vm_state->mem[++vm_state->code_pointer];
    set_vmem(vm_state, a, b);
}
void op_push(state *vm_state) {
    vm_stack_push(&(vm_state->stack), vm_state->mem[++vm_state->code_pointer]);
}
void op_pop(state *vm_state) {
    set_vmem(
        vm_state, vm_state->mem[++vm_state->code_pointer],
        vm_stack_pop(&(vm_state->stack)));
}
void op_eq(state *vm_state) {
    uint16_t a = vm_state->mem[++vm_state->code_pointer];
    uint16_t b = vm_state->mem[++vm_state->code_pointer];
    uint16_t c = vm_state->mem[++vm_state->code_pointer];
    set_vmem(vm_state, a, b == c ? 1 : 0);
}
void op_gt(state *vm_state) {
    uint16_t a = vm_state->mem[++vm_state->code_pointer];
    uint16_t b = vm_state->mem[++vm_state->code_pointer];
    uint16_t c = vm_state->mem[++vm_state->code_pointer];
    set_vmem(vm_state, a, b > c ? 1 : 0);
}
void op_jmp(state *vm_state) {
    uint16_t a = vm_state->mem[++vm_state->code_pointer];
    vm_state->code_pointer = a - 1;
}
void op_jt(state *vm_state) {
    uint16_t a = vm_state->mem[++vm_state->code_pointer];
    uint16_t b = vm_state->mem[++vm_state->code_pointer];
    if (a) {
        vm_state->code_pointer = b - 1;
    }
}
void op_jf(state *vm_state) {
    uint16_t a = vm_state->mem[++vm_state->code_pointer];
    uint16_t b = vm_state->mem[++vm_state->code_pointer];
    if (!a) {
        vm_state->code_pointer = b - 1;
    }
}
void op_add(state *vm_state) {
    uint16_t a = vm_state->mem[++vm_state->code_pointer];
    uint16_t b = vm_state->mem[++vm_state->code_pointer];
    uint16_t c = vm_state->mem[++vm_state->code_pointer];
    set_vmem(vm_state, a, b + b);
}
void op_mult(state *vm_state) {
    uint16_t a = vm_state->mem[++vm_state->code_pointer];
    uint16_t b = vm_state->mem[++vm_state->code_pointer];
    uint16_t c = vm_state->mem[++vm_state->code_pointer];
    set_vmem(vm_state, a, b * c);
}
void op_mod(state *vm_state) {
    uint16_t a = vm_state->mem[++vm_state->code_pointer];
    uint16_t b = vm_state->mem[++vm_state->code_pointer];
    uint16_t c = vm_state->mem[++vm_state->code_pointer];
    set_vmem(vm_state, a, b % c);
}
void op_and(state *vm_state) {
    uint16_t a = vm_state->mem[++vm_state->code_pointer];
    uint16_t b = vm_state->mem[++vm_state->code_pointer];
    uint16_t c = vm_state->mem[++vm_state->code_pointer];
    set_vmem(vm_state, a, b & c);
}
void op_or(state *vm_state) {
    uint16_t a = vm_state->mem[++vm_state->code_pointer];
    uint16_t b = vm_state->mem[++vm_state->code_pointer];
    uint16_t c = vm_state->mem[++vm_state->code_pointer];
    set_vmem(vm_state, a, b | c);
}
void op_not(state *vm_state) {
    uint16_t a = vm_state->mem[++vm_state->code_pointer];
    uint16_t b = vm_state->mem[++vm_state->code_pointer];
    set_vmem(vm_state, a, ~b);
}
void op_rmem(state *vm_state) {
    uint16_t a = vm_state->mem[++vm_state->code_pointer];
    uint16_t b = vm_state->mem[++vm_state->code_pointer];
    set_vmem(vm_state, a, b);
}
void op_wmem(state *vm_state) {
    uint16_t a = vm_state->mem[++vm_state->code_pointer];
    uint16_t b = vm_state->mem[++vm_state->code_pointer];
    set_vmem(vm_state, a, b);
}
void op_call(state *vm_state) {
    uint16_t a = vm_state->mem[++vm_state->code_pointer];
    vm_stack_push(&(vm_state->stack), vm_state->code_pointer + 1);
    vm_state->code_pointer = a - 1;
}
void op_ret(state *vm_state) {
    uint16_t jmp_addr = vm_stack_pop(&(vm_state->stack));
    vm_state->code_pointer = jmp_addr - 1;
}
void op_out(state *vm_state) {
    uint16_t temp = vm_state->mem[vm_state->code_pointer];
    uint16_t a = vm_state->mem[++vm_state->code_pointer];
    putchar(a);
}
char input_buff[256] = {0};
int input_ptr = 0;
void op_in(state *vm_state) {
    uint16_t a = vm_state->mem[++vm_state->code_pointer];
    if (input_buff[input_ptr] == 0) {
        fgets(input_buff, sizeof(input_buff), stdin);
        input_ptr = 0;
    }
    set_vmem(vm_state, a, input_buff[input_ptr]);
}
void op_noop(state *vm_state) {
    // NOOP
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

