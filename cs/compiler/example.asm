jmp >str_len_end
:str_len
jmp >var_bad7219d-6c95-42ad-aa0e-12465a22cc40_end
:var_bad7219d-6c95-42ad-aa0e-12465a22cc40
:var_bad7219d-6c95-42ad-aa0e-12465a22cc40_end
wmem >var_bad7219d-6c95-42ad-aa0e-12465a22cc40 reg0
jmp >var_aac7fe75-e059-415d-b9dd-a404cb8641de_end
:var_aac7fe75-e059-415d-b9dd-a404cb8641de
:var_aac7fe75-e059-415d-b9dd-a404cb8641de_end
set reg0 0
wmem >var_aac7fe75-e059-415d-b9dd-a404cb8641de reg0
:while_f3b35bcf-87c2-4e69-82d0-7efd15583d8a_begin
rmem reg0 >var_bad7219d-6c95-42ad-aa0e-12465a22cc40
rmem reg0 reg0
jf reg0 >while_f3b35bcf-87c2-4e69-82d0-7efd15583d8a_end
rmem reg0 >var_bad7219d-6c95-42ad-aa0e-12465a22cc40
set reg1 1
add reg0 reg0 reg1
wmem >var_bad7219d-6c95-42ad-aa0e-12465a22cc40 reg0
rmem reg0 >var_aac7fe75-e059-415d-b9dd-a404cb8641de
set reg1 1
add reg0 reg0 reg1
wmem >var_aac7fe75-e059-415d-b9dd-a404cb8641de reg0
jmp >while_f3b35bcf-87c2-4e69-82d0-7efd15583d8a_begin
:while_f3b35bcf-87c2-4e69-82d0-7efd15583d8a_end
rmem reg0 >var_aac7fe75-e059-415d-b9dd-a404cb8641de
jf reg0 >end_24717a2f-1de5-4a8f-b360-d209ee143b5b
rmem reg0 >var_aac7fe75-e059-415d-b9dd-a404cb8641de
set reg1 1
add reg0 reg0 reg1
wmem >var_aac7fe75-e059-415d-b9dd-a404cb8641de reg0
:end_24717a2f-1de5-4a8f-b360-d209ee143b5b
rmem reg0 >var_aac7fe75-e059-415d-b9dd-a404cb8641de
ret
ret
:str_len_end
jmp >println_end
:println
jmp >var_01a0b6c6-a0ec-4a74-854d-ca07e1848797_end
:var_01a0b6c6-a0ec-4a74-854d-ca07e1848797
:var_01a0b6c6-a0ec-4a74-854d-ca07e1848797_end
wmem >var_bad7219d-6c95-42ad-aa0e-12465a22cc40 reg0
rmem reg0 >var_bad7219d-6c95-42ad-aa0e-12465a22cc40
rmem reg0 >var_bad7219d-6c95-42ad-aa0e-12465a22cc40
call >print
set reg0 10
out reg0
ret
:println_end
jmp >print_end
:print
jmp >var_9ba9441f-1c38-460c-b0fd-1e9edb7bb7d4_end
:var_9ba9441f-1c38-460c-b0fd-1e9edb7bb7d4
:var_9ba9441f-1c38-460c-b0fd-1e9edb7bb7d4_end
wmem >var_bad7219d-6c95-42ad-aa0e-12465a22cc40 reg0
:while_59b60147-81b5-44d7-b0a1-1c1962e58399_begin
rmem reg0 >var_bad7219d-6c95-42ad-aa0e-12465a22cc40
rmem reg0 reg0
jf reg0 >while_59b60147-81b5-44d7-b0a1-1c1962e58399_end
rmem reg0 >var_bad7219d-6c95-42ad-aa0e-12465a22cc40
rmem reg0 reg0
out reg0
rmem reg0 >var_bad7219d-6c95-42ad-aa0e-12465a22cc40
set reg1 1
add reg0 reg0 reg1
wmem >var_bad7219d-6c95-42ad-aa0e-12465a22cc40 reg0
jmp >while_59b60147-81b5-44d7-b0a1-1c1962e58399_begin
:while_59b60147-81b5-44d7-b0a1-1c1962e58399_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_c297900c-c865-4b10-87e8-f09c154a8b47_end
:var_c297900c-c865-4b10-87e8-f09c154a8b47
:var_c297900c-c865-4b10-87e8-f09c154a8b47_end
wmem >var_c297900c-c865-4b10-87e8-f09c154a8b47 reg0
rmem reg0 >var_c297900c-c865-4b10-87e8-f09c154a8b47
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_6b23b272-cb7e-4b09-9249-af3957633a96
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_6b23b272-cb7e-4b09-9249-af3957633a96
jmp >var_6e45ceb2-f2cd-4346-acc4-21356d647819_end
:var_6e45ceb2-f2cd-4346-acc4-21356d647819
:var_6e45ceb2-f2cd-4346-acc4-21356d647819_end
jmp >var_646f041b-ed12-4c16-9cf6-bcc4f2df2bee_end
:var_646f041b-ed12-4c16-9cf6-bcc4f2df2bee
:var_646f041b-ed12-4c16-9cf6-bcc4f2df2bee_end
set reg0 0
wmem >var_aac7fe75-e059-415d-b9dd-a404cb8641de reg0
:while_fd0c63bc-0724-467e-8184-6d5d6007d752_begin
rmem reg0 >var_c297900c-c865-4b10-87e8-f09c154a8b47
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_fd0c63bc-0724-467e-8184-6d5d6007d752_end
rmem reg0 >var_c297900c-c865-4b10-87e8-f09c154a8b47
set reg1 10
mod reg0 reg0 reg1
wmem >var_6e45ceb2-f2cd-4346-acc4-21356d647819 reg0
rmem reg0 >var_6e45ceb2-f2cd-4346-acc4-21356d647819
rmem reg0 >var_6e45ceb2-f2cd-4346-acc4-21356d647819
push reg0
rmem reg0 >var_aac7fe75-e059-415d-b9dd-a404cb8641de
set reg1 1
add reg0 reg0 reg1
wmem >var_aac7fe75-e059-415d-b9dd-a404cb8641de reg0
rmem reg0 >var_c297900c-c865-4b10-87e8-f09c154a8b47
set reg1 10
call >divide
wmem >var_c297900c-c865-4b10-87e8-f09c154a8b47 reg0
jmp >while_fd0c63bc-0724-467e-8184-6d5d6007d752_begin
:while_fd0c63bc-0724-467e-8184-6d5d6007d752_end
rmem reg0 >var_c297900c-c865-4b10-87e8-f09c154a8b47
set reg1 10
mod reg0 reg0 reg1
wmem >var_6e45ceb2-f2cd-4346-acc4-21356d647819 reg0
rmem reg0 >var_6e45ceb2-f2cd-4346-acc4-21356d647819
rmem reg0 >var_6e45ceb2-f2cd-4346-acc4-21356d647819
push reg0
rmem reg0 >var_aac7fe75-e059-415d-b9dd-a404cb8641de
set reg1 1
add reg0 reg0 reg1
wmem >var_aac7fe75-e059-415d-b9dd-a404cb8641de reg0
jmp >var_551984a0-1028-40fe-8bf2-f92671987428_end
:var_551984a0-1028-40fe-8bf2-f92671987428
:var_551984a0-1028-40fe-8bf2-f92671987428_end
set reg0 0
wmem >var_551984a0-1028-40fe-8bf2-f92671987428 reg0
:while_96cfd6f5-8fb9-4dc2-8c50-250a937da4e4_begin
rmem reg0 >var_551984a0-1028-40fe-8bf2-f92671987428
rmem reg1 >var_aac7fe75-e059-415d-b9dd-a404cb8641de
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_96cfd6f5-8fb9-4dc2-8c50-250a937da4e4_end
rmem reg0 >var_551984a0-1028-40fe-8bf2-f92671987428
set reg1 1
add reg0 reg0 reg1
wmem >var_551984a0-1028-40fe-8bf2-f92671987428 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_96cfd6f5-8fb9-4dc2-8c50-250a937da4e4_begin
:while_96cfd6f5-8fb9-4dc2-8c50-250a937da4e4_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_e0b3b66f-d266-4c84-b167-efe0127dd319_end
:var_e0b3b66f-d266-4c84-b167-efe0127dd319
:var_e0b3b66f-d266-4c84-b167-efe0127dd319_end
set reg0 0
wmem >var_e0b3b66f-d266-4c84-b167-efe0127dd319 reg0
:while_d7155cbe-1d85-4f3f-bc7c-ac2357a4c5ee_begin
rmem reg0 >var_e0b3b66f-d266-4c84-b167-efe0127dd319
rmem reg0 reg0
jf reg0 >while_d7155cbe-1d85-4f3f-bc7c-ac2357a4c5ee_end
rmem reg0 >var_e0b3b66f-d266-4c84-b167-efe0127dd319
set reg1 1
add reg0 reg0 reg1
wmem >var_e0b3b66f-d266-4c84-b167-efe0127dd319 reg0
rmem reg0 >var_e0b3b66f-d266-4c84-b167-efe0127dd319
rmem reg0 reg0
rmem reg0 >var_e0b3b66f-d266-4c84-b167-efe0127dd319
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_d7155cbe-1d85-4f3f-bc7c-ac2357a4c5ee_begin
:while_d7155cbe-1d85-4f3f-bc7c-ac2357a4c5ee_end
ret
:dump_mem_end
jmp >var_bdaaa5c8-27f0-4db8-a57b-8ad0bd585321_end
:var_bdaaa5c8-27f0-4db8-a57b-8ad0bd585321
&e
&t
&t
&i
&n
&g
&h
&e
&r
&e
0
:var_bdaaa5c8-27f0-4db8-a57b-8ad0bd585321_end
wmem >var_bdaaa5c8-27f0-4db8-a57b-8ad0bd585321 &G
set reg0 >var_bdaaa5c8-27f0-4db8-a57b-8ad0bd585321
jmp >var_648d304c-4726-43be-a812-63cc7102fd67_end
:var_648d304c-4726-43be-a812-63cc7102fd67
&e
&t
&t
&i
&n
&g
&h
&e
&r
&e
0
:var_648d304c-4726-43be-a812-63cc7102fd67_end
wmem >var_648d304c-4726-43be-a812-63cc7102fd67 &G
set reg0 >var_648d304c-4726-43be-a812-63cc7102fd67
call >println
jmp >var_6be4ffa1-397a-46b6-8977-ad618e416d4e_end
:var_6be4ffa1-397a-46b6-8977-ad618e416d4e
:var_6be4ffa1-397a-46b6-8977-ad618e416d4e_end
jmp >var_e99d53c1-654c-48d3-bd73-32f538ae724f_end
:var_e99d53c1-654c-48d3-bd73-32f538ae724f
&e
&l
&l
&o
&W
&o
&r
&l
&d
&!
0
:var_e99d53c1-654c-48d3-bd73-32f538ae724f_end
wmem >var_e99d53c1-654c-48d3-bd73-32f538ae724f &H
set reg0 >var_e99d53c1-654c-48d3-bd73-32f538ae724f
jmp >var_8f69e09d-2e41-4029-a614-f725e9231af8_end
:var_8f69e09d-2e41-4029-a614-f725e9231af8
&e
&l
&l
&o
&W
&o
&r
&l
&d
&!
0
:var_8f69e09d-2e41-4029-a614-f725e9231af8_end
wmem >var_8f69e09d-2e41-4029-a614-f725e9231af8 &H
set reg0 >var_8f69e09d-2e41-4029-a614-f725e9231af8
call >str_len
wmem >var_aac7fe75-e059-415d-b9dd-a404cb8641de reg0
rmem reg0 >var_aac7fe75-e059-415d-b9dd-a404cb8641de
rmem reg0 >var_aac7fe75-e059-415d-b9dd-a404cb8641de
call >print_number
rmem reg0 >var_aac7fe75-e059-415d-b9dd-a404cb8641de
rmem reg0 >var_aac7fe75-e059-415d-b9dd-a404cb8641de
call >print_number
call >println

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

