jmp >str_len_end
:str_len
jmp >var_04485e56-e59f-4f92-b1be-2b1c488e7b90_end
:var_04485e56-e59f-4f92-b1be-2b1c488e7b90
:var_04485e56-e59f-4f92-b1be-2b1c488e7b90_end
wmem >var_04485e56-e59f-4f92-b1be-2b1c488e7b90 reg0
jmp >var_887c02f4-c261-4c6c-a9ac-3d3c6ee9c74f_end
:var_887c02f4-c261-4c6c-a9ac-3d3c6ee9c74f
:var_887c02f4-c261-4c6c-a9ac-3d3c6ee9c74f_end
set reg0 0
wmem >var_887c02f4-c261-4c6c-a9ac-3d3c6ee9c74f reg0
:while_a7c88195-b837-4a3b-828e-7220e541e325_begin
rmem reg0 >var_04485e56-e59f-4f92-b1be-2b1c488e7b90
rmem reg0 reg0
jf reg0 >while_a7c88195-b837-4a3b-828e-7220e541e325_end
rmem reg0 >var_04485e56-e59f-4f92-b1be-2b1c488e7b90
add reg0 reg0 1
wmem >var_04485e56-e59f-4f92-b1be-2b1c488e7b90 reg0
rmem reg0 >var_887c02f4-c261-4c6c-a9ac-3d3c6ee9c74f
add reg0 reg0 1
wmem >var_887c02f4-c261-4c6c-a9ac-3d3c6ee9c74f reg0
jmp >while_a7c88195-b837-4a3b-828e-7220e541e325_begin
:while_a7c88195-b837-4a3b-828e-7220e541e325_end
rmem reg0 >var_887c02f4-c261-4c6c-a9ac-3d3c6ee9c74f
ret
ret
:str_len_end
jmp >println_end
:println
jmp >var_3890798c-32c2-4050-9402-754ac67dd87c_end
:var_3890798c-32c2-4050-9402-754ac67dd87c
:var_3890798c-32c2-4050-9402-754ac67dd87c_end
wmem >var_3890798c-32c2-4050-9402-754ac67dd87c reg0
rmem reg0 >var_3890798c-32c2-4050-9402-754ac67dd87c
call >print
set reg0 10
out reg0
ret
:println_end
jmp >print_end
:print
jmp >var_7e74ea93-9e70-4bc9-a653-5b2e11db6890_end
:var_7e74ea93-9e70-4bc9-a653-5b2e11db6890
:var_7e74ea93-9e70-4bc9-a653-5b2e11db6890_end
wmem >var_7e74ea93-9e70-4bc9-a653-5b2e11db6890 reg0
:while_c7ce3da2-8ea1-4ec3-a6e2-236a6bea58ab_begin
rmem reg0 >var_7e74ea93-9e70-4bc9-a653-5b2e11db6890
rmem reg0 reg0
jf reg0 >while_c7ce3da2-8ea1-4ec3-a6e2-236a6bea58ab_end
rmem reg0 >var_7e74ea93-9e70-4bc9-a653-5b2e11db6890
rmem reg0 reg0
out reg0
rmem reg0 >var_7e74ea93-9e70-4bc9-a653-5b2e11db6890
add reg0 reg0 1
wmem >var_7e74ea93-9e70-4bc9-a653-5b2e11db6890 reg0
jmp >while_c7ce3da2-8ea1-4ec3-a6e2-236a6bea58ab_begin
:while_c7ce3da2-8ea1-4ec3-a6e2-236a6bea58ab_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_4b6f3110-39ce-4d9d-8156-bd54bbed2044_end
:var_4b6f3110-39ce-4d9d-8156-bd54bbed2044
:var_4b6f3110-39ce-4d9d-8156-bd54bbed2044_end
wmem >var_4b6f3110-39ce-4d9d-8156-bd54bbed2044 reg0
rmem reg0 >var_4b6f3110-39ce-4d9d-8156-bd54bbed2044
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_5b1357a3-c894-46d4-bd02-0c2cc0690957
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_5b1357a3-c894-46d4-bd02-0c2cc0690957
jmp >var_bc05a638-f8a0-4e35-aaf4-3f7a110345b2_end
:var_bc05a638-f8a0-4e35-aaf4-3f7a110345b2
:var_bc05a638-f8a0-4e35-aaf4-3f7a110345b2_end
jmp >var_0dcb0f60-2289-4741-bc10-3915842ac7d9_end
:var_0dcb0f60-2289-4741-bc10-3915842ac7d9
:var_0dcb0f60-2289-4741-bc10-3915842ac7d9_end
set reg0 0
wmem >var_0dcb0f60-2289-4741-bc10-3915842ac7d9 reg0
:while_f019ca96-2793-4d45-899d-31592f03c044_begin
rmem reg0 >var_4b6f3110-39ce-4d9d-8156-bd54bbed2044
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_f019ca96-2793-4d45-899d-31592f03c044_end
rmem reg0 >var_4b6f3110-39ce-4d9d-8156-bd54bbed2044
set reg1 10
mod reg0 reg0 reg1
wmem >var_bc05a638-f8a0-4e35-aaf4-3f7a110345b2 reg0
rmem reg0 >var_bc05a638-f8a0-4e35-aaf4-3f7a110345b2
rmem reg0 >var_bc05a638-f8a0-4e35-aaf4-3f7a110345b2
push reg0
rmem reg0 >var_0dcb0f60-2289-4741-bc10-3915842ac7d9
add reg0 reg0 1
wmem >var_0dcb0f60-2289-4741-bc10-3915842ac7d9 reg0
rmem reg0 >var_4b6f3110-39ce-4d9d-8156-bd54bbed2044
set reg1 10
call >divide
wmem >var_4b6f3110-39ce-4d9d-8156-bd54bbed2044 reg0
jmp >while_f019ca96-2793-4d45-899d-31592f03c044_begin
:while_f019ca96-2793-4d45-899d-31592f03c044_end
rmem reg0 >var_4b6f3110-39ce-4d9d-8156-bd54bbed2044
set reg1 10
mod reg0 reg0 reg1
wmem >var_bc05a638-f8a0-4e35-aaf4-3f7a110345b2 reg0
rmem reg0 >var_bc05a638-f8a0-4e35-aaf4-3f7a110345b2
rmem reg0 >var_bc05a638-f8a0-4e35-aaf4-3f7a110345b2
push reg0
rmem reg0 >var_0dcb0f60-2289-4741-bc10-3915842ac7d9
add reg0 reg0 1
wmem >var_0dcb0f60-2289-4741-bc10-3915842ac7d9 reg0
jmp >var_a1193d7b-6208-4ada-9b32-164840008339_end
:var_a1193d7b-6208-4ada-9b32-164840008339
:var_a1193d7b-6208-4ada-9b32-164840008339_end
set reg0 0
wmem >var_a1193d7b-6208-4ada-9b32-164840008339 reg0
:while_0dd00130-aff3-433a-a052-a3051b9028be_begin
rmem reg0 >var_a1193d7b-6208-4ada-9b32-164840008339
rmem reg1 >var_0dcb0f60-2289-4741-bc10-3915842ac7d9
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_0dd00130-aff3-433a-a052-a3051b9028be_end
rmem reg0 >var_a1193d7b-6208-4ada-9b32-164840008339
set reg1 1
add reg0 reg0 reg1
wmem >var_a1193d7b-6208-4ada-9b32-164840008339 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_0dd00130-aff3-433a-a052-a3051b9028be_begin
:while_0dd00130-aff3-433a-a052-a3051b9028be_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_b7a4c743-6b75-45b9-a71b-e29126a04757_end
:var_b7a4c743-6b75-45b9-a71b-e29126a04757
:var_b7a4c743-6b75-45b9-a71b-e29126a04757_end
set reg0 0
wmem >var_b7a4c743-6b75-45b9-a71b-e29126a04757 reg0
:while_fdd6f8f3-f5cd-443d-8381-e74b3c616a78_begin
rmem reg0 >var_b7a4c743-6b75-45b9-a71b-e29126a04757
rmem reg0 reg0
jf reg0 >while_fdd6f8f3-f5cd-443d-8381-e74b3c616a78_end
rmem reg0 >var_b7a4c743-6b75-45b9-a71b-e29126a04757
add reg0 reg0 1
wmem >var_b7a4c743-6b75-45b9-a71b-e29126a04757 reg0
rmem reg0 >var_b7a4c743-6b75-45b9-a71b-e29126a04757
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_fdd6f8f3-f5cd-443d-8381-e74b3c616a78_begin
:while_fdd6f8f3-f5cd-443d-8381-e74b3c616a78_end
ret
:dump_mem_end
jmp >var_2eca5b05-604c-4415-beb8-d598712c724c_end
:var_2eca5b05-604c-4415-beb8-d598712c724c
:var_2eca5b05-604c-4415-beb8-d598712c724c_end
jmp >var_24e66f77-3c5d-4a4c-bcfa-79a5ce432021_end
:var_24e66f77-3c5d-4a4c-bcfa-79a5ce432021
&e
&l
&l
&o
32
&w
&o
&r
&l
&d
0
:var_24e66f77-3c5d-4a4c-bcfa-79a5ce432021_end
wmem >var_24e66f77-3c5d-4a4c-bcfa-79a5ce432021 &h
set reg0 >var_24e66f77-3c5d-4a4c-bcfa-79a5ce432021
call >str_len
wmem >var_2eca5b05-604c-4415-beb8-d598712c724c reg0
rmem reg0 >var_2eca5b05-604c-4415-beb8-d598712c724c
call >print_number
set reg0 10
out reg0
call >dump_mem

:subtract
add reg0 reg0 32767
add reg1 reg1 32767
jt reg1 >subtract
ret


:not
jf reg0 >not_isfalse
:not_istrue
set reg0 0
ret
:not_isfalse
set reg0 1
ret


:divide
set reg3 0
set reg2 reg1
:divide_loop
set reg1 reg2
gt reg4 reg0 reg1
eq reg5 reg0 reg1
or reg4 reg4 reg5
jf reg4 >divide_loop_end
call >subtract
add reg3 reg3 1
call >divide_loop
:divide_loop_end
set reg0 reg3
ret


:and
jf reg0 >and_isfalse
jf reg1 >and_isfalse
:and_istrue
set reg0 1
ret
:and_isfalse
set reg0 0
ret


:or
jt reg0 >or_istrue
jt reg1 >or_istrue
:or_isfalse
set reg0 0
ret
:or_istrue
set reg0 1
ret

