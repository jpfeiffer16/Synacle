#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>
#include "state.h"
#include "opcodes.h"


uint16_t* get_code(FILE* file) {
    uint16_t *code_buffer = malloc(32767);
    fread(code_buffer, 1, 32767, file);

    return code_buffer;
}

void run(state *vm_state) {
    while (!vm_state->stopped) {
        uint16_t op = vm_state->mem[vm_state->code_pointer];
        if (op > 21) {
            fprintf(stderr, "Illegal opcode: %d\n", op);
            exit(1);
        }
        /* printf("%d: %d\n", vm_state->code_pointer, op); */
        printf("%d\n", vm_state->code_pointer);
        (opcodes[op])(vm_state);
        vm_state->code_pointer++;
    }
}

int main() {
    FILE *bin;
    if ((bin = fopen("./program.bin", "r")) > 0) {
        uint16_t *buff = get_code(bin);
        fclose(bin);
        state vm_state = {buff, { 0, 0, 0, 0, 0, 0, 0, 0 }};
        vm_state.stopped = false;
        run(&vm_state);
        free(buff);
    } else {
        printf("Error opening file");
    }
}

