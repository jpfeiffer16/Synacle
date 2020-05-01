#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>
#include <getopt.h>
#include <string.h>
#include "state.h"
#include "opcodes.h"

FILE *trace_file;
uint16_t *memory_buffer;
bool should_trace = false;
char bin_file_path[256] = {0};

void cleanup_and_exit(int status_code) {
    if (should_trace) fclose(trace_file);
    free(memory_buffer);
    exit(status_code);
}

uint16_t* get_code(FILE* file) {
    uint16_t *code_buffer = calloc(32768, sizeof(uint16_t));
    fread(code_buffer, 1, 32768 * sizeof(uint16_t), file);

    return code_buffer;
}

void run(state *vm_state) {
    while (!vm_state->stopped) {
        uint16_t op = vm_state->mem[vm_state->code_pointer];
        if (op > 21) {
            //TODO: Make sure we do resource cleanup here
            fprintf(stderr, "Illegal opcode: %d\n", op);
            cleanup_and_exit(1);
        }
        if (should_trace)
        {
            fprintf(trace_file, "%u: %s", vm_state->code_pointer, opcode_names[vm_state->mem[vm_state->code_pointer]]);
            fflush(trace_file);
        }
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

void set_options(int argc, char **argv) {
    int opt;
    while ((opt = getopt(argc, argv, "tb:")) != -1) {
        switch (opt) {
            case 't':
                should_trace = true;
                break;
            case 'b':
                sprintf(bin_file_path, "%s", optarg);
                break;
        }
    }
    if (!strlen(bin_file_path)) {
        fprintf(stderr, "Error: binary path required. Pass it with -b <binary path>\n");
        // We have no resources to clean up here since we haven't allocated anything
        exit(EXIT_FAILURE);
    }
}

int main(int argc, char **argv) {
    set_options(argc, argv);
    FILE *bin;
    if (should_trace) {
        trace_file = fopen("./out.txt", "w");
    }
    if ((bin = fopen(bin_file_path, "r")) > 0) {
        memory_buffer = get_code(bin);
        fclose(bin);
        state vm_state = {memory_buffer, { 0, 0, 0, 0, 0, 0, 0, 0 }};
        vm_state.stopped = false;
        run(&vm_state);
        cleanup_and_exit(EXIT_SUCCESS);
    } else {
        fprintf(stderr, "Error opening file");
        exit(EXIT_FAILURE);
    }
}
