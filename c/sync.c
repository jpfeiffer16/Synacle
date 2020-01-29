#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>
#include "state.h"
#include "opcodes.h"


uint16_t* get_code(FILE* file) {
    uint16_t *code_buffer = malloc(32767);
    long code_ptr = 0;
    int count;
    uint8_t buff[4];
    while((count = fread(buff, 2, 2, file)) > 0) {
        if (count != 2) {
            fprintf(stderr, "Unable to read two 8 bit integers. Data is miss-aligned!\n");
            exit(1);
        }
        uint8_t little_end = buff[0];
        uint8_t big_end = buff[1];
        uint16_t opnum = little_end;
        opnum = opnum | big_end;
        code_buffer[code_ptr] = opnum;
        code_ptr++;
    }

    return code_buffer;
}

void run(state *vm_state) {
    /* for (int i = 0; i < 32767; i++) { */
    while (!vm_state->stopped) {
        uint16_t op = vm_state->mem[vm_state->code_pointer];
        if (op > 21) {
            fprintf(stderr, "Illegal opcode: %d\n", op);
            exit(1);
        }
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

