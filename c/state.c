#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

#define STACK_SIZE 1024

extern void cleanup_and_exit(int exit_code);

typedef struct vm_stack {
    uint16_t array[STACK_SIZE];
    int top;
} vm_stack;

typedef struct state {
    uint16_t *mem;
    uint16_t registers[8];
    vm_stack stack;
    bool stopped;
    uint16_t code_pointer;
} state;

void vm_stack_push(vm_stack *stack, uint16_t val) {
    if (stack->top == STACK_SIZE - 1) {
        fprintf(stderr, "Stack overflow!");
        cleanup_and_exit(1);
    }
    stack->array[stack->top++] = val;
}

uint16_t vm_stack_pop(vm_stack *stack) {
    if (stack->top == 0) {
        fprintf(stderr, "Stack underflow!");
        //TODO: Cleanup resource
        cleanup_and_exit(1);
    }
    return stack->array[--stack->top];
}

uint16_t get_vmem(state *vm_state, uint16_t source) {
    if (source > 32767) {
        return vm_state->registers[source - 32768];
    } else {
        return source;
    }
}

void set_vmem(state *vm_state, uint16_t source, uint16_t value) {
    if (source > 32767) {
        vm_state->registers[source - 32768] = get_vmem(vm_state, value);
    } else {
        vm_state->mem[source] = value;
    }
}
