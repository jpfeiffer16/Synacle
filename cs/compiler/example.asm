jmp >str_len_end
:str_len
jmp >var_0d557897-59f9-4e87-afc8-0c9da0bb6c40_end
:var_0d557897-59f9-4e87-afc8-0c9da0bb6c40
:var_0d557897-59f9-4e87-afc8-0c9da0bb6c40_end
wmem >var_0d557897-59f9-4e87-afc8-0c9da0bb6c40 reg0
jmp >var_41c5d9a7-dc72-409f-b097-7dabeeb22af9_end
:var_41c5d9a7-dc72-409f-b097-7dabeeb22af9
:var_41c5d9a7-dc72-409f-b097-7dabeeb22af9_end
set reg0 0
wmem >var_41c5d9a7-dc72-409f-b097-7dabeeb22af9 reg0
:while_85572bcd-2168-488a-961c-5a702899ce22_begin
rmem reg0 >var_0d557897-59f9-4e87-afc8-0c9da0bb6c40
rmem reg0 reg0
jf reg0 >while_85572bcd-2168-488a-961c-5a702899ce22_end
rmem reg0 >var_0d557897-59f9-4e87-afc8-0c9da0bb6c40
add reg0 reg0 1
wmem >var_0d557897-59f9-4e87-afc8-0c9da0bb6c40 reg0
rmem reg0 >var_41c5d9a7-dc72-409f-b097-7dabeeb22af9
add reg0 reg0 1
wmem >var_41c5d9a7-dc72-409f-b097-7dabeeb22af9 reg0
jmp >while_85572bcd-2168-488a-961c-5a702899ce22_begin
:while_85572bcd-2168-488a-961c-5a702899ce22_end
rmem reg0 >var_41c5d9a7-dc72-409f-b097-7dabeeb22af9
ret
ret
:str_len_end
jmp >println_end
:println
jmp >var_f6af4ecd-f85d-495b-b35e-661fccb36103_end
:var_f6af4ecd-f85d-495b-b35e-661fccb36103
:var_f6af4ecd-f85d-495b-b35e-661fccb36103_end
wmem >var_f6af4ecd-f85d-495b-b35e-661fccb36103 reg0
rmem reg0 >var_f6af4ecd-f85d-495b-b35e-661fccb36103
call >print
set reg0 10
out reg0
ret
:println_end
jmp >print_end
:print
jmp >var_22ee55a1-e666-4022-8785-0b05bd263da3_end
:var_22ee55a1-e666-4022-8785-0b05bd263da3
:var_22ee55a1-e666-4022-8785-0b05bd263da3_end
wmem >var_22ee55a1-e666-4022-8785-0b05bd263da3 reg0
:while_d2c732be-c1e8-4eaa-b764-8c64e16af269_begin
rmem reg0 >var_22ee55a1-e666-4022-8785-0b05bd263da3
rmem reg0 reg0
jf reg0 >while_d2c732be-c1e8-4eaa-b764-8c64e16af269_end
rmem reg0 >var_22ee55a1-e666-4022-8785-0b05bd263da3
rmem reg0 reg0
out reg0
rmem reg0 >var_22ee55a1-e666-4022-8785-0b05bd263da3
add reg0 reg0 1
wmem >var_22ee55a1-e666-4022-8785-0b05bd263da3 reg0
jmp >while_d2c732be-c1e8-4eaa-b764-8c64e16af269_begin
:while_d2c732be-c1e8-4eaa-b764-8c64e16af269_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_a932a862-9a48-4aef-95bd-a1426064d0f5_end
:var_a932a862-9a48-4aef-95bd-a1426064d0f5
:var_a932a862-9a48-4aef-95bd-a1426064d0f5_end
wmem >var_a932a862-9a48-4aef-95bd-a1426064d0f5 reg0
rmem reg0 >var_a932a862-9a48-4aef-95bd-a1426064d0f5
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_108a2c29-aad6-4766-b874-6fb525788be5
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_108a2c29-aad6-4766-b874-6fb525788be5
jmp >var_0b1e76b6-5929-488a-bffc-8c12f33840ff_end
:var_0b1e76b6-5929-488a-bffc-8c12f33840ff
:var_0b1e76b6-5929-488a-bffc-8c12f33840ff_end
jmp >var_8d1d63d9-b905-426f-abb5-d455ad9b7dde_end
:var_8d1d63d9-b905-426f-abb5-d455ad9b7dde
:var_8d1d63d9-b905-426f-abb5-d455ad9b7dde_end
set reg0 0
wmem >var_8d1d63d9-b905-426f-abb5-d455ad9b7dde reg0
:while_fae096bf-13d0-4a75-9c43-3f3d5371a66d_begin
rmem reg0 >var_a932a862-9a48-4aef-95bd-a1426064d0f5
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_fae096bf-13d0-4a75-9c43-3f3d5371a66d_end
rmem reg0 >var_a932a862-9a48-4aef-95bd-a1426064d0f5
set reg1 10
mod reg0 reg0 reg1
wmem >var_0b1e76b6-5929-488a-bffc-8c12f33840ff reg0
rmem reg0 >var_0b1e76b6-5929-488a-bffc-8c12f33840ff
rmem reg0 >var_0b1e76b6-5929-488a-bffc-8c12f33840ff
push reg0
rmem reg0 >var_8d1d63d9-b905-426f-abb5-d455ad9b7dde
add reg0 reg0 1
wmem >var_8d1d63d9-b905-426f-abb5-d455ad9b7dde reg0
rmem reg0 >var_a932a862-9a48-4aef-95bd-a1426064d0f5
set reg1 10
call >divide
wmem >var_a932a862-9a48-4aef-95bd-a1426064d0f5 reg0
jmp >while_fae096bf-13d0-4a75-9c43-3f3d5371a66d_begin
:while_fae096bf-13d0-4a75-9c43-3f3d5371a66d_end
rmem reg0 >var_a932a862-9a48-4aef-95bd-a1426064d0f5
set reg1 10
mod reg0 reg0 reg1
wmem >var_0b1e76b6-5929-488a-bffc-8c12f33840ff reg0
rmem reg0 >var_0b1e76b6-5929-488a-bffc-8c12f33840ff
rmem reg0 >var_0b1e76b6-5929-488a-bffc-8c12f33840ff
push reg0
rmem reg0 >var_8d1d63d9-b905-426f-abb5-d455ad9b7dde
add reg0 reg0 1
wmem >var_8d1d63d9-b905-426f-abb5-d455ad9b7dde reg0
jmp >var_9c83f837-faac-4928-8cbd-bda9c68c51c8_end
:var_9c83f837-faac-4928-8cbd-bda9c68c51c8
:var_9c83f837-faac-4928-8cbd-bda9c68c51c8_end
set reg0 0
wmem >var_9c83f837-faac-4928-8cbd-bda9c68c51c8 reg0
:while_52a4668b-8692-4cea-87c8-223ea9c97c8f_begin
rmem reg0 >var_9c83f837-faac-4928-8cbd-bda9c68c51c8
rmem reg1 >var_8d1d63d9-b905-426f-abb5-d455ad9b7dde
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_52a4668b-8692-4cea-87c8-223ea9c97c8f_end
rmem reg0 >var_9c83f837-faac-4928-8cbd-bda9c68c51c8
set reg1 1
add reg0 reg0 reg1
wmem >var_9c83f837-faac-4928-8cbd-bda9c68c51c8 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_52a4668b-8692-4cea-87c8-223ea9c97c8f_begin
:while_52a4668b-8692-4cea-87c8-223ea9c97c8f_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_8aea9489-b6ba-4834-9ce5-4c11d830f107_end
:var_8aea9489-b6ba-4834-9ce5-4c11d830f107
:var_8aea9489-b6ba-4834-9ce5-4c11d830f107_end
set reg0 0
wmem >var_8aea9489-b6ba-4834-9ce5-4c11d830f107 reg0
:while_c8065b26-364a-4b89-9926-c4c8700807e7_begin
rmem reg0 >var_8aea9489-b6ba-4834-9ce5-4c11d830f107
rmem reg0 reg0
jf reg0 >while_c8065b26-364a-4b89-9926-c4c8700807e7_end
rmem reg0 >var_8aea9489-b6ba-4834-9ce5-4c11d830f107
add reg0 reg0 1
wmem >var_8aea9489-b6ba-4834-9ce5-4c11d830f107 reg0
rmem reg0 >var_8aea9489-b6ba-4834-9ce5-4c11d830f107
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_c8065b26-364a-4b89-9926-c4c8700807e7_begin
:while_c8065b26-364a-4b89-9926-c4c8700807e7_end
ret
:dump_mem_end
jmp >var_6095d90b-669e-4ffe-bc36-1f13d01be8b9_end
:var_6095d90b-669e-4ffe-bc36-1f13d01be8b9
:var_6095d90b-669e-4ffe-bc36-1f13d01be8b9_end
jmp >var_dc28a87b-9154-4d22-8569-2664b53d4700_end
:var_dc28a87b-9154-4d22-8569-2664b53d4700
&e
&s
&t
0
:var_dc28a87b-9154-4d22-8569-2664b53d4700_end
wmem >var_dc28a87b-9154-4d22-8569-2664b53d4700 &t
set reg0 >var_dc28a87b-9154-4d22-8569-2664b53d4700
call >str_len
wmem >var_6095d90b-669e-4ffe-bc36-1f13d01be8b9 reg0
rmem reg0 >var_6095d90b-669e-4ffe-bc36-1f13d01be8b9
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

