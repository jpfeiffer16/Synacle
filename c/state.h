#ifndef STATE
#define STATE

#include <stdint.h>

typedef struct vm_stack {
    uint16_t array[256];
    int top;
} vm_stack;

typedef struct state {
    uint16_t *mem;
    uint16_t registers[8];
    vm_stack stack;
    bool stopped;
    int code_pointer;
} state;

void vm_stack_push(vm_stack *stack, uint16_t val);

uint16_t vm_stack_pop(vm_stack *stack);

void set_vmem(state *vm_state, uint16_t source, uint16_t value);

#endif
