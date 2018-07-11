jmp >println_end
:println
jmp >var_04aa3c6f-5f6a-4dc5-b141-651d08dc5d2b_end
:var_04aa3c6f-5f6a-4dc5-b141-651d08dc5d2b
:var_04aa3c6f-5f6a-4dc5-b141-651d08dc5d2b_end
wmem >var_04aa3c6f-5f6a-4dc5-b141-651d08dc5d2b reg0
rmem reg0 >var_04aa3c6f-5f6a-4dc5-b141-651d08dc5d2b
rmem reg0 >var_04aa3c6f-5f6a-4dc5-b141-651d08dc5d2b
call >print
set reg0 10
out reg0
ret
:println_end
jmp >print_end
:print
jmp >var_966a5722-3ab2-4062-a098-857931870be9_end
:var_966a5722-3ab2-4062-a098-857931870be9
:var_966a5722-3ab2-4062-a098-857931870be9_end
wmem >var_04aa3c6f-5f6a-4dc5-b141-651d08dc5d2b reg0
:while_b2ad7c95-a73a-4662-bb34-cf6f518ec2b3_begin
rmem reg0 >var_04aa3c6f-5f6a-4dc5-b141-651d08dc5d2b
rmem reg0 reg0
jf reg0 >while_b2ad7c95-a73a-4662-bb34-cf6f518ec2b3_end
rmem reg0 >var_04aa3c6f-5f6a-4dc5-b141-651d08dc5d2b
rmem reg0 reg0
out reg0
rmem reg0 >var_04aa3c6f-5f6a-4dc5-b141-651d08dc5d2b
set reg1 1
add reg0 reg0 reg1
wmem >var_04aa3c6f-5f6a-4dc5-b141-651d08dc5d2b reg0
jmp >while_b2ad7c95-a73a-4662-bb34-cf6f518ec2b3_begin
:while_b2ad7c95-a73a-4662-bb34-cf6f518ec2b3_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_a5d46041-19c4-456b-ba7e-7a298de5c216_end
:var_a5d46041-19c4-456b-ba7e-7a298de5c216
:var_a5d46041-19c4-456b-ba7e-7a298de5c216_end
wmem >var_a5d46041-19c4-456b-ba7e-7a298de5c216 reg0
rmem reg0 >var_a5d46041-19c4-456b-ba7e-7a298de5c216
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_ba7064e4-b3ea-4b75-9a35-4b4fcafebb58
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_ba7064e4-b3ea-4b75-9a35-4b4fcafebb58
jmp >var_aebb030c-4284-42ef-a102-c242bbeb6277_end
:var_aebb030c-4284-42ef-a102-c242bbeb6277
:var_aebb030c-4284-42ef-a102-c242bbeb6277_end
jmp >var_10427b75-ffa6-47c8-82a1-9bee69145a92_end
:var_10427b75-ffa6-47c8-82a1-9bee69145a92
:var_10427b75-ffa6-47c8-82a1-9bee69145a92_end
set reg0 0
wmem >var_10427b75-ffa6-47c8-82a1-9bee69145a92 reg0
:while_3bf8e148-c596-4a0d-9ab0-2474526089c0_begin
rmem reg0 >var_a5d46041-19c4-456b-ba7e-7a298de5c216
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_3bf8e148-c596-4a0d-9ab0-2474526089c0_end
rmem reg0 >var_a5d46041-19c4-456b-ba7e-7a298de5c216
set reg1 10
mod reg0 reg0 reg1
wmem >var_aebb030c-4284-42ef-a102-c242bbeb6277 reg0
rmem reg0 >var_aebb030c-4284-42ef-a102-c242bbeb6277
rmem reg0 >var_aebb030c-4284-42ef-a102-c242bbeb6277
push reg0
rmem reg0 >var_10427b75-ffa6-47c8-82a1-9bee69145a92
set reg1 1
add reg0 reg0 reg1
wmem >var_10427b75-ffa6-47c8-82a1-9bee69145a92 reg0
rmem reg0 >var_a5d46041-19c4-456b-ba7e-7a298de5c216
set reg1 10
call >divide
wmem >var_a5d46041-19c4-456b-ba7e-7a298de5c216 reg0
jmp >while_3bf8e148-c596-4a0d-9ab0-2474526089c0_begin
:while_3bf8e148-c596-4a0d-9ab0-2474526089c0_end
rmem reg0 >var_a5d46041-19c4-456b-ba7e-7a298de5c216
set reg1 10
mod reg0 reg0 reg1
wmem >var_aebb030c-4284-42ef-a102-c242bbeb6277 reg0
rmem reg0 >var_aebb030c-4284-42ef-a102-c242bbeb6277
rmem reg0 >var_aebb030c-4284-42ef-a102-c242bbeb6277
push reg0
rmem reg0 >var_10427b75-ffa6-47c8-82a1-9bee69145a92
set reg1 1
add reg0 reg0 reg1
wmem >var_10427b75-ffa6-47c8-82a1-9bee69145a92 reg0
jmp >var_c24d06ed-07c6-4e5f-8f1d-c09f4bfb0e05_end
:var_c24d06ed-07c6-4e5f-8f1d-c09f4bfb0e05
:var_c24d06ed-07c6-4e5f-8f1d-c09f4bfb0e05_end
set reg0 0
wmem >var_c24d06ed-07c6-4e5f-8f1d-c09f4bfb0e05 reg0
:while_b4e9fa24-741c-41b8-8551-37d13e134901_begin
rmem reg0 >var_c24d06ed-07c6-4e5f-8f1d-c09f4bfb0e05
rmem reg1 >var_10427b75-ffa6-47c8-82a1-9bee69145a92
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_b4e9fa24-741c-41b8-8551-37d13e134901_end
rmem reg0 >var_c24d06ed-07c6-4e5f-8f1d-c09f4bfb0e05
set reg1 1
add reg0 reg0 reg1
wmem >var_c24d06ed-07c6-4e5f-8f1d-c09f4bfb0e05 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_b4e9fa24-741c-41b8-8551-37d13e134901_begin
:while_b4e9fa24-741c-41b8-8551-37d13e134901_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_8e8f0afd-1be4-467e-8b39-05d2d1b99d96_end
:var_8e8f0afd-1be4-467e-8b39-05d2d1b99d96
:var_8e8f0afd-1be4-467e-8b39-05d2d1b99d96_end
set reg0 0
wmem >var_8e8f0afd-1be4-467e-8b39-05d2d1b99d96 reg0
:while_8049bea8-6743-435e-af32-f6ab8698b146_begin
rmem reg0 >var_8e8f0afd-1be4-467e-8b39-05d2d1b99d96
rmem reg0 reg0
jf reg0 >while_8049bea8-6743-435e-af32-f6ab8698b146_end
rmem reg0 >var_8e8f0afd-1be4-467e-8b39-05d2d1b99d96
set reg1 1
add reg0 reg0 reg1
wmem >var_8e8f0afd-1be4-467e-8b39-05d2d1b99d96 reg0
rmem reg0 >var_8e8f0afd-1be4-467e-8b39-05d2d1b99d96
rmem reg0 reg0
rmem reg0 >var_8e8f0afd-1be4-467e-8b39-05d2d1b99d96
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_8049bea8-6743-435e-af32-f6ab8698b146_begin
:while_8049bea8-6743-435e-af32-f6ab8698b146_end
ret
:dump_mem_end
jmp >var_79884ce1-3340-4d09-a093-78ef2ae8cebf_end
:var_79884ce1-3340-4d09-a093-78ef2ae8cebf
:var_79884ce1-3340-4d09-a093-78ef2ae8cebf_end
set reg0 1
wmem >var_8e8f0afd-1be4-467e-8b39-05d2d1b99d96 reg0
:while_4cc816a4-1486-43fe-8a37-9f1340d45673_begin
rmem reg0 >var_8e8f0afd-1be4-467e-8b39-05d2d1b99d96
set reg1 40
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_4cc816a4-1486-43fe-8a37-9f1340d45673_end
jmp >var_a977a9a6-6550-40b1-8ff3-b70a811f3b52_end
:var_a977a9a6-6550-40b1-8ff3-b70a811f3b52
:var_a977a9a6-6550-40b1-8ff3-b70a811f3b52_end
jmp >var_2255c6cf-a81a-4b65-b761-01e78c33f0d1_end
:var_2255c6cf-a81a-4b65-b761-01e78c33f0d1
:var_2255c6cf-a81a-4b65-b761-01e78c33f0d1_end
rmem reg0 >var_8e8f0afd-1be4-467e-8b39-05d2d1b99d96
set reg1 3
mod reg0 reg0 reg1
wmem >var_a977a9a6-6550-40b1-8ff3-b70a811f3b52 reg0
rmem reg0 >var_8e8f0afd-1be4-467e-8b39-05d2d1b99d96
set reg1 5
mod reg0 reg0 reg1
wmem >var_2255c6cf-a81a-4b65-b761-01e78c33f0d1 reg0
rmem reg0 >var_a977a9a6-6550-40b1-8ff3-b70a811f3b52
rmem reg1 >var_2255c6cf-a81a-4b65-b761-01e78c33f0d1
call >and
jf reg0 >end_e7856a73-ce2d-460b-87f0-bf08d163a83d
rmem reg0 >var_8e8f0afd-1be4-467e-8b39-05d2d1b99d96
rmem reg0 >var_8e8f0afd-1be4-467e-8b39-05d2d1b99d96
call >print_number
:end_e7856a73-ce2d-460b-87f0-bf08d163a83d
rmem reg0 >var_a977a9a6-6550-40b1-8ff3-b70a811f3b52
call >not
jf reg0 >end_2a561b74-07d0-44b0-80dc-c515fe66fcd9
jmp >var_6da2545f-ec66-4a57-8556-855d60794849_end
:var_6da2545f-ec66-4a57-8556-855d60794849
&i
&z
&z
0
:var_6da2545f-ec66-4a57-8556-855d60794849_end
wmem >var_6da2545f-ec66-4a57-8556-855d60794849 &f
set reg0 >var_6da2545f-ec66-4a57-8556-855d60794849
jmp >var_af3457b3-4cf7-43bb-a87b-53b3d53f8100_end
:var_af3457b3-4cf7-43bb-a87b-53b3d53f8100
&i
&z
&z
0
:var_af3457b3-4cf7-43bb-a87b-53b3d53f8100_end
wmem >var_af3457b3-4cf7-43bb-a87b-53b3d53f8100 &f
set reg0 >var_af3457b3-4cf7-43bb-a87b-53b3d53f8100
call >print
:end_2a561b74-07d0-44b0-80dc-c515fe66fcd9
rmem reg0 >var_2255c6cf-a81a-4b65-b761-01e78c33f0d1
call >not
jf reg0 >end_32c352b8-3d4a-4cd1-910f-446b7f2e94d8
jmp >var_14fbcdb7-9bf5-483a-94cc-51ab0092cdc6_end
:var_14fbcdb7-9bf5-483a-94cc-51ab0092cdc6
&u
&z
&z
0
:var_14fbcdb7-9bf5-483a-94cc-51ab0092cdc6_end
wmem >var_14fbcdb7-9bf5-483a-94cc-51ab0092cdc6 &b
set reg0 >var_14fbcdb7-9bf5-483a-94cc-51ab0092cdc6
jmp >var_20168d0c-4557-45d9-a7bc-1c6d774c1bdd_end
:var_20168d0c-4557-45d9-a7bc-1c6d774c1bdd
&u
&z
&z
0
:var_20168d0c-4557-45d9-a7bc-1c6d774c1bdd_end
wmem >var_20168d0c-4557-45d9-a7bc-1c6d774c1bdd &b
set reg0 >var_20168d0c-4557-45d9-a7bc-1c6d774c1bdd
call >print
:end_32c352b8-3d4a-4cd1-910f-446b7f2e94d8
rmem reg0 >var_8e8f0afd-1be4-467e-8b39-05d2d1b99d96
set reg1 1
add reg0 reg0 reg1
wmem >var_8e8f0afd-1be4-467e-8b39-05d2d1b99d96 reg0
set reg0 10
out reg0
jmp >while_4cc816a4-1486-43fe-8a37-9f1340d45673_begin
:while_4cc816a4-1486-43fe-8a37-9f1340d45673_end

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

