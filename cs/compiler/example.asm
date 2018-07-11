jmp >str_len_end
:str_len
jmp >var_648432d8-64c1-4625-951f-80b1df6cde15_end
:var_648432d8-64c1-4625-951f-80b1df6cde15
:var_648432d8-64c1-4625-951f-80b1df6cde15_end
wmem >var_648432d8-64c1-4625-951f-80b1df6cde15 reg0
jmp >var_e82b388d-db0f-4d1b-bd86-724f105285d8_end
:var_e82b388d-db0f-4d1b-bd86-724f105285d8
:var_e82b388d-db0f-4d1b-bd86-724f105285d8_end
set reg0 0
wmem >var_e82b388d-db0f-4d1b-bd86-724f105285d8 reg0
:while_4826af80-4cb1-4551-93cd-c2b7f5545027_begin
rmem reg0 >var_648432d8-64c1-4625-951f-80b1df6cde15
rmem reg0 reg0
jf reg0 >while_4826af80-4cb1-4551-93cd-c2b7f5545027_end
rmem reg0 >var_648432d8-64c1-4625-951f-80b1df6cde15
set reg1 1
add reg0 reg0 reg1
wmem >var_648432d8-64c1-4625-951f-80b1df6cde15 reg0
rmem reg0 >var_e82b388d-db0f-4d1b-bd86-724f105285d8
set reg1 1
add reg0 reg0 reg1
wmem >var_e82b388d-db0f-4d1b-bd86-724f105285d8 reg0
jmp >while_4826af80-4cb1-4551-93cd-c2b7f5545027_begin
:while_4826af80-4cb1-4551-93cd-c2b7f5545027_end
rmem reg0 >var_e82b388d-db0f-4d1b-bd86-724f105285d8
jf reg0 >end_8d1ca358-4c04-4437-ad59-377cd7cb9c66
rmem reg0 >var_e82b388d-db0f-4d1b-bd86-724f105285d8
set reg1 1
add reg0 reg0 reg1
wmem >var_e82b388d-db0f-4d1b-bd86-724f105285d8 reg0
:end_8d1ca358-4c04-4437-ad59-377cd7cb9c66
rmem reg0 >var_e82b388d-db0f-4d1b-bd86-724f105285d8
ret
ret
:str_len_end
jmp >println_end
:println
jmp >var_b2bac80a-43b2-419f-915b-96bf05b73bc3_end
:var_b2bac80a-43b2-419f-915b-96bf05b73bc3
:var_b2bac80a-43b2-419f-915b-96bf05b73bc3_end
wmem >var_648432d8-64c1-4625-951f-80b1df6cde15 reg0
rmem reg0 >var_648432d8-64c1-4625-951f-80b1df6cde15
rmem reg0 >var_648432d8-64c1-4625-951f-80b1df6cde15
call >print
set reg0 10
out reg0
ret
:println_end
jmp >print_end
:print
jmp >var_4a9f36a4-f6c2-4616-baee-d5bba1799432_end
:var_4a9f36a4-f6c2-4616-baee-d5bba1799432
:var_4a9f36a4-f6c2-4616-baee-d5bba1799432_end
wmem >var_648432d8-64c1-4625-951f-80b1df6cde15 reg0
:while_47d5e6f8-263b-4688-b38d-529f4e9ff096_begin
rmem reg0 >var_648432d8-64c1-4625-951f-80b1df6cde15
rmem reg0 reg0
jf reg0 >while_47d5e6f8-263b-4688-b38d-529f4e9ff096_end
rmem reg0 >var_648432d8-64c1-4625-951f-80b1df6cde15
rmem reg0 reg0
out reg0
rmem reg0 >var_648432d8-64c1-4625-951f-80b1df6cde15
set reg1 1
add reg0 reg0 reg1
wmem >var_648432d8-64c1-4625-951f-80b1df6cde15 reg0
jmp >while_47d5e6f8-263b-4688-b38d-529f4e9ff096_begin
:while_47d5e6f8-263b-4688-b38d-529f4e9ff096_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_7be78d4d-dd37-4574-9849-6bea1c57a13b_end
:var_7be78d4d-dd37-4574-9849-6bea1c57a13b
:var_7be78d4d-dd37-4574-9849-6bea1c57a13b_end
wmem >var_7be78d4d-dd37-4574-9849-6bea1c57a13b reg0
rmem reg0 >var_7be78d4d-dd37-4574-9849-6bea1c57a13b
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_4bd88003-9c9e-46d6-b003-9ba5830dc4d4
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_4bd88003-9c9e-46d6-b003-9ba5830dc4d4
jmp >var_1c59687b-f82f-4ae1-83ce-fdcaa474c741_end
:var_1c59687b-f82f-4ae1-83ce-fdcaa474c741
:var_1c59687b-f82f-4ae1-83ce-fdcaa474c741_end
jmp >var_d74631c0-13e9-4da4-a095-b095b631acdb_end
:var_d74631c0-13e9-4da4-a095-b095b631acdb
:var_d74631c0-13e9-4da4-a095-b095b631acdb_end
set reg0 0
wmem >var_e82b388d-db0f-4d1b-bd86-724f105285d8 reg0
:while_25023c88-bc79-462d-ac5f-8f90ee5a1d7d_begin
rmem reg0 >var_7be78d4d-dd37-4574-9849-6bea1c57a13b
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_25023c88-bc79-462d-ac5f-8f90ee5a1d7d_end
rmem reg0 >var_7be78d4d-dd37-4574-9849-6bea1c57a13b
set reg1 10
mod reg0 reg0 reg1
wmem >var_1c59687b-f82f-4ae1-83ce-fdcaa474c741 reg0
rmem reg0 >var_1c59687b-f82f-4ae1-83ce-fdcaa474c741
rmem reg0 >var_1c59687b-f82f-4ae1-83ce-fdcaa474c741
push reg0
rmem reg0 >var_e82b388d-db0f-4d1b-bd86-724f105285d8
set reg1 1
add reg0 reg0 reg1
wmem >var_e82b388d-db0f-4d1b-bd86-724f105285d8 reg0
rmem reg0 >var_7be78d4d-dd37-4574-9849-6bea1c57a13b
set reg1 10
call >divide
wmem >var_7be78d4d-dd37-4574-9849-6bea1c57a13b reg0
jmp >while_25023c88-bc79-462d-ac5f-8f90ee5a1d7d_begin
:while_25023c88-bc79-462d-ac5f-8f90ee5a1d7d_end
rmem reg0 >var_7be78d4d-dd37-4574-9849-6bea1c57a13b
set reg1 10
mod reg0 reg0 reg1
wmem >var_1c59687b-f82f-4ae1-83ce-fdcaa474c741 reg0
rmem reg0 >var_1c59687b-f82f-4ae1-83ce-fdcaa474c741
rmem reg0 >var_1c59687b-f82f-4ae1-83ce-fdcaa474c741
push reg0
rmem reg0 >var_e82b388d-db0f-4d1b-bd86-724f105285d8
set reg1 1
add reg0 reg0 reg1
wmem >var_e82b388d-db0f-4d1b-bd86-724f105285d8 reg0
jmp >var_5ca7a3ff-bec6-4e92-9f9b-e8323afe5bed_end
:var_5ca7a3ff-bec6-4e92-9f9b-e8323afe5bed
:var_5ca7a3ff-bec6-4e92-9f9b-e8323afe5bed_end
set reg0 0
wmem >var_5ca7a3ff-bec6-4e92-9f9b-e8323afe5bed reg0
:while_7027a6f4-d992-4ae1-aeb3-1e8382821c06_begin
rmem reg0 >var_5ca7a3ff-bec6-4e92-9f9b-e8323afe5bed
rmem reg1 >var_e82b388d-db0f-4d1b-bd86-724f105285d8
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_7027a6f4-d992-4ae1-aeb3-1e8382821c06_end
rmem reg0 >var_5ca7a3ff-bec6-4e92-9f9b-e8323afe5bed
set reg1 1
add reg0 reg0 reg1
wmem >var_5ca7a3ff-bec6-4e92-9f9b-e8323afe5bed reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_7027a6f4-d992-4ae1-aeb3-1e8382821c06_begin
:while_7027a6f4-d992-4ae1-aeb3-1e8382821c06_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_9e1e9167-08c9-45e0-85ce-b5444f0cccfe_end
:var_9e1e9167-08c9-45e0-85ce-b5444f0cccfe
:var_9e1e9167-08c9-45e0-85ce-b5444f0cccfe_end
set reg0 0
wmem >var_9e1e9167-08c9-45e0-85ce-b5444f0cccfe reg0
:while_1d9d3b15-2bdc-469d-9320-9d24d613eea9_begin
rmem reg0 >var_9e1e9167-08c9-45e0-85ce-b5444f0cccfe
rmem reg0 reg0
jf reg0 >while_1d9d3b15-2bdc-469d-9320-9d24d613eea9_end
rmem reg0 >var_9e1e9167-08c9-45e0-85ce-b5444f0cccfe
set reg1 1
add reg0 reg0 reg1
wmem >var_9e1e9167-08c9-45e0-85ce-b5444f0cccfe reg0
rmem reg0 >var_9e1e9167-08c9-45e0-85ce-b5444f0cccfe
rmem reg0 reg0
rmem reg0 >var_9e1e9167-08c9-45e0-85ce-b5444f0cccfe
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_1d9d3b15-2bdc-469d-9320-9d24d613eea9_begin
:while_1d9d3b15-2bdc-469d-9320-9d24d613eea9_end
ret
:dump_mem_end
jmp >var_71f1d3ae-0ed1-40b6-8f83-4bf196313e12_end
:var_71f1d3ae-0ed1-40b6-8f83-4bf196313e12
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
:var_71f1d3ae-0ed1-40b6-8f83-4bf196313e12_end
wmem >var_71f1d3ae-0ed1-40b6-8f83-4bf196313e12 &G
set reg0 >var_71f1d3ae-0ed1-40b6-8f83-4bf196313e12
jmp >var_08233e45-0474-428b-9a42-a2ef732d687c_end
:var_08233e45-0474-428b-9a42-a2ef732d687c
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
:var_08233e45-0474-428b-9a42-a2ef732d687c_end
wmem >var_08233e45-0474-428b-9a42-a2ef732d687c &G
set reg0 >var_08233e45-0474-428b-9a42-a2ef732d687c
call >println
jmp >var_4236d5b2-8e52-442e-9bb5-c02cd4b37ff4_end
:var_4236d5b2-8e52-442e-9bb5-c02cd4b37ff4
:var_4236d5b2-8e52-442e-9bb5-c02cd4b37ff4_end
jmp >var_ef851aec-cd74-4d1f-aea9-c8e78b336fda_end
:var_ef851aec-cd74-4d1f-aea9-c8e78b336fda
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
:var_ef851aec-cd74-4d1f-aea9-c8e78b336fda_end
wmem >var_ef851aec-cd74-4d1f-aea9-c8e78b336fda &H
set reg0 >var_ef851aec-cd74-4d1f-aea9-c8e78b336fda
jmp >var_450b2693-3cb1-42a5-9617-4516618a45f8_end
:var_450b2693-3cb1-42a5-9617-4516618a45f8
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
:var_450b2693-3cb1-42a5-9617-4516618a45f8_end
wmem >var_450b2693-3cb1-42a5-9617-4516618a45f8 &H
set reg0 >var_450b2693-3cb1-42a5-9617-4516618a45f8
call >str_len
wmem >var_e82b388d-db0f-4d1b-bd86-724f105285d8 reg0
rmem reg0 >var_e82b388d-db0f-4d1b-bd86-724f105285d8
rmem reg0 >var_e82b388d-db0f-4d1b-bd86-724f105285d8
call >print_number

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

