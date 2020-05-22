#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include "state.h"

#define INPUT_BUFFER_SIZE 256

extern bool should_trace;
extern FILE *trace_file;

uint16_t get_next_param(state *vm_state) {
    uint16_t param = vm_state->mem[++vm_state->code_pointer];
    if (should_trace)
    {
        fprintf(trace_file, " %u", param);
        fflush(trace_file);
    }
    return param;
}

uint16_t normalize_next_param(state *vm_state) {
    return get_vmem(vm_state, get_next_param(vm_state));
}

void op_halt(state *vm_state) {
    vm_state->stopped = true;
}
void op_set(state *vm_state) {
    uint16_t a = get_next_param(vm_state);
    uint16_t b = normalize_next_param(vm_state);
    set_vmem(vm_state, a, b);
}
void op_push(state *vm_state) {
    vm_stack_push(&(vm_state->stack), normalize_next_param(vm_state));
}
void op_pop(state *vm_state) {
    set_vmem(
        vm_state, get_next_param(vm_state),
        vm_stack_pop(&(vm_state->stack)));
}
void op_eq(state *vm_state) {
    uint16_t a = get_next_param(vm_state);
    uint16_t b = normalize_next_param(vm_state);
    uint16_t c = normalize_next_param(vm_state);
    set_vmem(vm_state, a, b == c ? 1 : 0);
}
void op_gt(state *vm_state) {
    uint16_t a = get_next_param(vm_state);
    uint16_t b = normalize_next_param(vm_state);
    uint16_t c = normalize_next_param(vm_state);
    set_vmem(vm_state, a, b > c ? 1 : 0);
}
void op_jmp(state *vm_state) {
    uint16_t a = get_next_param(vm_state);
    vm_state->code_pointer = a - 1;
}
void op_jt(state *vm_state) {
    uint16_t a = normalize_next_param(vm_state);
    uint16_t b = normalize_next_param(vm_state);
    if (a != 0) {
        vm_state->code_pointer = b - 1;
    }
}
void op_jf(state *vm_state) {
    uint16_t a = normalize_next_param(vm_state);
    uint16_t b = normalize_next_param(vm_state);
    if (a == 0) {
        vm_state->code_pointer = b - 1;
    }
}
void op_add(state *vm_state) {
    uint16_t a = get_next_param(vm_state);
    uint16_t b = normalize_next_param(vm_state);
    uint16_t c = normalize_next_param(vm_state);
    set_vmem(vm_state, a, (uint16_t)(((uint16_t)(b + c)) % 32768));
}
void op_mult(state *vm_state) {
    uint16_t a = get_next_param(vm_state);
    uint16_t b = normalize_next_param(vm_state);
    uint16_t c = normalize_next_param(vm_state);
    set_vmem(vm_state, a, (uint16_t)(((uint16_t)(b * c)) % 32768));
}
void op_mod(state *vm_state) {
    uint16_t a = get_next_param(vm_state);
    uint16_t b = normalize_next_param(vm_state);
    uint16_t c = normalize_next_param(vm_state);
    set_vmem(vm_state, a, (b % c) % 32768);
}
void op_and(state *vm_state) {
    uint16_t a = get_next_param(vm_state);
    uint16_t b = normalize_next_param(vm_state);
    uint16_t c = normalize_next_param(vm_state);
    set_vmem(vm_state, a, b & c);
}
void op_or(state *vm_state) {
    uint16_t a = get_next_param(vm_state);
    uint16_t b = normalize_next_param(vm_state);
    uint16_t c = normalize_next_param(vm_state);
    set_vmem(vm_state, a, b | c);
}
void op_not(state *vm_state) {
    uint16_t a = get_next_param(vm_state);
    uint16_t b = normalize_next_param(vm_state);
    set_vmem(vm_state, a, (uint16_t)((uint16_t)(~b) % 32768));
}
void op_rmem(state *vm_state) {
    uint16_t a = get_next_param(vm_state);
    uint16_t norm_param = normalize_next_param(vm_state);
    uint16_t b = vm_state->mem[norm_param];
    set_vmem(vm_state, a, b);
}
void op_wmem(state *vm_state) {
    uint16_t a = normalize_next_param(vm_state);
    uint16_t b = normalize_next_param(vm_state);
    set_vmem(vm_state, a, b);
}
void op_call(state *vm_state) {
    uint16_t a = normalize_next_param(vm_state);
    vm_stack_push(&(vm_state->stack), vm_state->code_pointer + 1);
    vm_state->code_pointer = a - 1;
}
void op_ret(state *vm_state) {
    uint16_t jmp_addr = get_vmem(vm_state, vm_stack_pop(&(vm_state->stack)));
    vm_state->code_pointer = (uint16_t)(jmp_addr - 1);
}
void op_out(state *vm_state) {
    uint16_t a = normalize_next_param(vm_state);
    putchar(a);
}
char input_buff[INPUT_BUFFER_SIZE] = {0};
int input_ptr = 0;
void op_in(state *vm_state) {
    uint16_t a = get_next_param(vm_state);
    if (input_buff[input_ptr] == 0) {
        char *input_line = NULL;
        unsigned long int length = sizeof(input_buff);
        for (int i = 0; i < INPUT_BUFFER_SIZE; i++) {
            input_buff[i] = 0;
        }
        int line_length = getline(&input_line, &length, stdin);
        if (line_length > INPUT_BUFFER_SIZE) {
            fprintf(stderr, "Input buffer overflow!\n");
            vm_state->stopped = true;
        } else {
            sprintf(input_buff, "%s", input_line);
            printf(input_buff);
            input_ptr = 0;
        }
        free(input_line);
    }
    set_vmem(vm_state, a, input_buff[input_ptr++]);
}
void op_noop(state *vm_state) {
    // NOOP
}

void (*opcodes[23])(state*) = {
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
    op_noop,
    // For now we will just do a noop for non-standard breakpoint op
    op_noop
};


char* opcode_names[23] = {
    "halt",
    "set",
    "push",
    "pop",
    "eq",
    "gt",
    "jmp",
    "jt",
    "jf",
    "add",
    "mult",
    "mod",
    "and",
    "or",
    "not",
    "rmem",
    "wmem",
    "call",
    "ret",
    "out",
    "in",
    "noop",
    "breakpoint"
};
