jmp >str_len_end
:str_len
jmp >var_7c416a69-c1a5-40c6-9434-e2284f3efc25_end
:var_7c416a69-c1a5-40c6-9434-e2284f3efc25
:var_7c416a69-c1a5-40c6-9434-e2284f3efc25_end
wmem >var_7c416a69-c1a5-40c6-9434-e2284f3efc25 reg0
jmp >var_7c01ff40-4466-49c8-83e5-5c68ec7dc7ff_end
:var_7c01ff40-4466-49c8-83e5-5c68ec7dc7ff
:var_7c01ff40-4466-49c8-83e5-5c68ec7dc7ff_end
set reg0 0
wmem >var_7c01ff40-4466-49c8-83e5-5c68ec7dc7ff reg0
:while_7c283d3c-40b2-45c2-93aa-2f29549d2f46_begin
rmem reg0 >var_7c416a69-c1a5-40c6-9434-e2284f3efc25
rmem reg0 reg0
jf reg0 >while_7c283d3c-40b2-45c2-93aa-2f29549d2f46_end
rmem reg0 >var_7c416a69-c1a5-40c6-9434-e2284f3efc25
set reg1 1
add reg0 reg0 reg1
wmem >var_7c416a69-c1a5-40c6-9434-e2284f3efc25 reg0
rmem reg0 >var_7c01ff40-4466-49c8-83e5-5c68ec7dc7ff
set reg1 1
add reg0 reg0 reg1
wmem >var_7c01ff40-4466-49c8-83e5-5c68ec7dc7ff reg0
jmp >while_7c283d3c-40b2-45c2-93aa-2f29549d2f46_begin
:while_7c283d3c-40b2-45c2-93aa-2f29549d2f46_end
rmem reg0 >var_7c01ff40-4466-49c8-83e5-5c68ec7dc7ff
ret
ret
:str_len_end
jmp >println_end
:println
jmp >var_78254026-8bb8-4d85-a661-d3a614f3616b_end
:var_78254026-8bb8-4d85-a661-d3a614f3616b
:var_78254026-8bb8-4d85-a661-d3a614f3616b_end
wmem >var_78254026-8bb8-4d85-a661-d3a614f3616b reg0
rmem reg0 >var_78254026-8bb8-4d85-a661-d3a614f3616b
rmem reg0 >var_78254026-8bb8-4d85-a661-d3a614f3616b
call >print
set reg0 10
out reg0
ret
:println_end
jmp >print_end
:print
jmp >var_f8e9a096-0834-4a13-9d90-721550b3ce47_end
:var_f8e9a096-0834-4a13-9d90-721550b3ce47
:var_f8e9a096-0834-4a13-9d90-721550b3ce47_end
wmem >var_f8e9a096-0834-4a13-9d90-721550b3ce47 reg0
:while_c04a9a66-b152-43dc-a060-936558f1574b_begin
rmem reg0 >var_f8e9a096-0834-4a13-9d90-721550b3ce47
rmem reg0 reg0
jf reg0 >while_c04a9a66-b152-43dc-a060-936558f1574b_end
rmem reg0 >var_f8e9a096-0834-4a13-9d90-721550b3ce47
rmem reg0 reg0
out reg0
rmem reg0 >var_f8e9a096-0834-4a13-9d90-721550b3ce47
set reg1 1
add reg0 reg0 reg1
wmem >var_f8e9a096-0834-4a13-9d90-721550b3ce47 reg0
jmp >while_c04a9a66-b152-43dc-a060-936558f1574b_begin
:while_c04a9a66-b152-43dc-a060-936558f1574b_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_55af7e6c-ac39-4322-a1f7-ca6a5a2d3641_end
:var_55af7e6c-ac39-4322-a1f7-ca6a5a2d3641
:var_55af7e6c-ac39-4322-a1f7-ca6a5a2d3641_end
wmem >var_55af7e6c-ac39-4322-a1f7-ca6a5a2d3641 reg0
rmem reg0 >var_55af7e6c-ac39-4322-a1f7-ca6a5a2d3641
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_8ec411f5-af60-43e5-bb00-5f4c9b342e76
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_8ec411f5-af60-43e5-bb00-5f4c9b342e76
jmp >var_8f915f53-6191-48d7-a0f3-4636a79a573b_end
:var_8f915f53-6191-48d7-a0f3-4636a79a573b
:var_8f915f53-6191-48d7-a0f3-4636a79a573b_end
jmp >var_bb6abaa6-4230-4da2-b17f-31a69b3c731f_end
:var_bb6abaa6-4230-4da2-b17f-31a69b3c731f
:var_bb6abaa6-4230-4da2-b17f-31a69b3c731f_end
set reg0 0
wmem >var_bb6abaa6-4230-4da2-b17f-31a69b3c731f reg0
:while_c65b929c-8003-4567-ad68-642628efac89_begin
rmem reg0 >var_55af7e6c-ac39-4322-a1f7-ca6a5a2d3641
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_c65b929c-8003-4567-ad68-642628efac89_end
rmem reg0 >var_55af7e6c-ac39-4322-a1f7-ca6a5a2d3641
set reg1 10
mod reg0 reg0 reg1
wmem >var_8f915f53-6191-48d7-a0f3-4636a79a573b reg0
rmem reg0 >var_8f915f53-6191-48d7-a0f3-4636a79a573b
rmem reg0 >var_8f915f53-6191-48d7-a0f3-4636a79a573b
push reg0
rmem reg0 >var_bb6abaa6-4230-4da2-b17f-31a69b3c731f
set reg1 1
add reg0 reg0 reg1
wmem >var_bb6abaa6-4230-4da2-b17f-31a69b3c731f reg0
rmem reg0 >var_55af7e6c-ac39-4322-a1f7-ca6a5a2d3641
set reg1 10
call >divide
wmem >var_55af7e6c-ac39-4322-a1f7-ca6a5a2d3641 reg0
jmp >while_c65b929c-8003-4567-ad68-642628efac89_begin
:while_c65b929c-8003-4567-ad68-642628efac89_end
rmem reg0 >var_55af7e6c-ac39-4322-a1f7-ca6a5a2d3641
set reg1 10
mod reg0 reg0 reg1
wmem >var_8f915f53-6191-48d7-a0f3-4636a79a573b reg0
rmem reg0 >var_8f915f53-6191-48d7-a0f3-4636a79a573b
rmem reg0 >var_8f915f53-6191-48d7-a0f3-4636a79a573b
push reg0
rmem reg0 >var_bb6abaa6-4230-4da2-b17f-31a69b3c731f
set reg1 1
add reg0 reg0 reg1
wmem >var_bb6abaa6-4230-4da2-b17f-31a69b3c731f reg0
jmp >var_e7c0c389-f892-475d-8a0f-52236658b486_end
:var_e7c0c389-f892-475d-8a0f-52236658b486
:var_e7c0c389-f892-475d-8a0f-52236658b486_end
set reg0 0
wmem >var_e7c0c389-f892-475d-8a0f-52236658b486 reg0
:while_a84df7e1-d70f-48f5-a25f-0232fba4a734_begin
rmem reg0 >var_e7c0c389-f892-475d-8a0f-52236658b486
rmem reg1 >var_bb6abaa6-4230-4da2-b17f-31a69b3c731f
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_a84df7e1-d70f-48f5-a25f-0232fba4a734_end
rmem reg0 >var_e7c0c389-f892-475d-8a0f-52236658b486
set reg1 1
add reg0 reg0 reg1
wmem >var_e7c0c389-f892-475d-8a0f-52236658b486 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_a84df7e1-d70f-48f5-a25f-0232fba4a734_begin
:while_a84df7e1-d70f-48f5-a25f-0232fba4a734_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_1ab78f9a-fc73-43d9-9dff-1ab3326eed15_end
:var_1ab78f9a-fc73-43d9-9dff-1ab3326eed15
:var_1ab78f9a-fc73-43d9-9dff-1ab3326eed15_end
set reg0 0
wmem >var_1ab78f9a-fc73-43d9-9dff-1ab3326eed15 reg0
:while_b720f3b2-5072-4ff4-ba0b-25e6ce24cd61_begin
rmem reg0 >var_1ab78f9a-fc73-43d9-9dff-1ab3326eed15
rmem reg0 reg0
jf reg0 >while_b720f3b2-5072-4ff4-ba0b-25e6ce24cd61_end
rmem reg0 >var_1ab78f9a-fc73-43d9-9dff-1ab3326eed15
set reg1 1
add reg0 reg0 reg1
wmem >var_1ab78f9a-fc73-43d9-9dff-1ab3326eed15 reg0
rmem reg0 >var_1ab78f9a-fc73-43d9-9dff-1ab3326eed15
rmem reg0 reg0
rmem reg0 >var_1ab78f9a-fc73-43d9-9dff-1ab3326eed15
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_b720f3b2-5072-4ff4-ba0b-25e6ce24cd61_begin
:while_b720f3b2-5072-4ff4-ba0b-25e6ce24cd61_end
ret
:dump_mem_end
jmp >var_bd2d59a6-32f4-425a-b7cc-a0e2ef13f212_end
:var_bd2d59a6-32f4-425a-b7cc-a0e2ef13f212
:var_bd2d59a6-32f4-425a-b7cc-a0e2ef13f212_end
set reg0 200
wmem >var_bd2d59a6-32f4-425a-b7cc-a0e2ef13f212 reg0
:while_d0d4fcf1-7b57-44c8-9271-3ae9ae632aa0_begin
rmem reg0 >var_bd2d59a6-32f4-425a-b7cc-a0e2ef13f212
set reg1 1
gt reg0 reg0 reg1
jf reg0 >while_d0d4fcf1-7b57-44c8-9271-3ae9ae632aa0_end
rmem reg0 >var_bd2d59a6-32f4-425a-b7cc-a0e2ef13f212
set reg1 1
call >subtract
wmem >var_bd2d59a6-32f4-425a-b7cc-a0e2ef13f212 reg0
rmem reg0 >var_bd2d59a6-32f4-425a-b7cc-a0e2ef13f212
rmem reg0 >var_bd2d59a6-32f4-425a-b7cc-a0e2ef13f212
call >print_number
set reg0 10
out reg0
jmp >while_d0d4fcf1-7b57-44c8-9271-3ae9ae632aa0_begin
:while_d0d4fcf1-7b57-44c8-9271-3ae9ae632aa0_end

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

