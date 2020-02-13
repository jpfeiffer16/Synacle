#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>
#include <unistd.h>
#include "state.h"
#include "opcodes.h"

FILE *trace_file;
bool should_trace = false;

uint16_t* get_code(FILE* file) {
    uint16_t *code_buffer = calloc(32768, sizeof(uint16_t));
    /* uint8_t file_buffer[32768] = {0}; */
    fread(code_buffer, 1, 32768 * sizeof(uint16_t), file);

    return code_buffer;
}

void run(state *vm_state) {
    unsigned int diag_counter = 0;
    while (!vm_state->stopped) {
        uint16_t op = vm_state->mem[vm_state->code_pointer];
        if (op > 21) {
            //TODO: Make sure we do resource cleanup here
            fprintf(stderr, "Illegal opcode: %d\n", op);
            exit(1);
        }
        if (should_trace)
        {
            fprintf(trace_file, "%u: %s", vm_state->code_pointer, opcode_names[vm_state->mem[vm_state->code_pointer]]);
            fflush(trace_file);
        }
        diag_counter = diag_counter + 1;
        (opcodes[op])(vm_state);
        vm_state->code_pointer++;

        if (should_trace)
        {
            fprintf(trace_file, "\t|");
            for (int reg_idx = 0; reg_idx < 7; reg_idx++) {
                fprintf(trace_file, "%u\t", vm_state->registers[reg_idx]);
            }
            fprintf(trace_file, "%u", vm_state->registers[7]);
            fprintf(trace_file, "\n");
            fflush(trace_file);
        }
    }
}

int main(int argc, char **argv) {
    FILE *bin;
    should_trace = getopt(argc, argv, "t") == 't';
    if (should_trace) {
        trace_file = fopen("./out.txt", "w");
    }
    if ((bin = fopen("./program.bin", "r")) > 0) {
        uint16_t *buff = get_code(bin);
        fclose(bin);
        state vm_state = {buff, { 0, 0, 0, 0, 0, 0, 0, 0 }};
        vm_state.stopped = false;
        run(&vm_state);
        if (should_trace) fclose(trace_file);
        free(buff);
    } else {
        printf("Error opening file");
    }
}
