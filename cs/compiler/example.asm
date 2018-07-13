jmp >str_len_end
:str_len
jmp >var_210a3c67-8341-4e39-b112-96c5f0352267_end
:var_210a3c67-8341-4e39-b112-96c5f0352267
:var_210a3c67-8341-4e39-b112-96c5f0352267_end
wmem >var_210a3c67-8341-4e39-b112-96c5f0352267 reg0
jmp >var_7c7220f7-9d56-4a91-90de-8ed4bef7de47_end
:var_7c7220f7-9d56-4a91-90de-8ed4bef7de47
:var_7c7220f7-9d56-4a91-90de-8ed4bef7de47_end
set reg0 0
wmem >var_7c7220f7-9d56-4a91-90de-8ed4bef7de47 reg0
:while_2fa599d6-3b45-487f-ab6f-5f535fc07181_begin
rmem reg0 >var_210a3c67-8341-4e39-b112-96c5f0352267
rmem reg0 reg0
jf reg0 >while_2fa599d6-3b45-487f-ab6f-5f535fc07181_end
rmem reg0 >var_210a3c67-8341-4e39-b112-96c5f0352267
add reg0 reg0 1
wmem >var_210a3c67-8341-4e39-b112-96c5f0352267 reg0
rmem reg0 >var_7c7220f7-9d56-4a91-90de-8ed4bef7de47
add reg0 reg0 1
wmem >var_7c7220f7-9d56-4a91-90de-8ed4bef7de47 reg0
jmp >while_2fa599d6-3b45-487f-ab6f-5f535fc07181_begin
:while_2fa599d6-3b45-487f-ab6f-5f535fc07181_end
rmem reg0 >var_7c7220f7-9d56-4a91-90de-8ed4bef7de47
ret
ret
:str_len_end
jmp >println_end
:println
jmp >var_e9303702-3d45-4c32-8c78-fad1169123ab_end
:var_e9303702-3d45-4c32-8c78-fad1169123ab
:var_e9303702-3d45-4c32-8c78-fad1169123ab_end
wmem >var_e9303702-3d45-4c32-8c78-fad1169123ab reg0
rmem reg0 >var_e9303702-3d45-4c32-8c78-fad1169123ab
rmem reg0 >var_e9303702-3d45-4c32-8c78-fad1169123ab
call >print
set reg0 10
out reg0
ret
:println_end
jmp >print_end
:print
jmp >var_1234de44-4208-433f-8de3-4d4748b4d766_end
:var_1234de44-4208-433f-8de3-4d4748b4d766
:var_1234de44-4208-433f-8de3-4d4748b4d766_end
wmem >var_1234de44-4208-433f-8de3-4d4748b4d766 reg0
:while_c78b8532-03b9-4f7c-9576-9bd47781c2e5_begin
rmem reg0 >var_1234de44-4208-433f-8de3-4d4748b4d766
rmem reg0 reg0
jf reg0 >while_c78b8532-03b9-4f7c-9576-9bd47781c2e5_end
rmem reg0 >var_1234de44-4208-433f-8de3-4d4748b4d766
rmem reg0 reg0
out reg0
rmem reg0 >var_1234de44-4208-433f-8de3-4d4748b4d766
add reg0 reg0 1
wmem >var_1234de44-4208-433f-8de3-4d4748b4d766 reg0
jmp >while_c78b8532-03b9-4f7c-9576-9bd47781c2e5_begin
:while_c78b8532-03b9-4f7c-9576-9bd47781c2e5_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_8cbe7e72-f8e4-4d87-9275-5d41216c2636_end
:var_8cbe7e72-f8e4-4d87-9275-5d41216c2636
:var_8cbe7e72-f8e4-4d87-9275-5d41216c2636_end
wmem >var_8cbe7e72-f8e4-4d87-9275-5d41216c2636 reg0
rmem reg0 >var_8cbe7e72-f8e4-4d87-9275-5d41216c2636
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_a49949c0-e51e-43bf-90e3-e453bbf05b8b
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_a49949c0-e51e-43bf-90e3-e453bbf05b8b
jmp >var_079bfbe1-2e32-436d-abf1-8cfdc40dc4d5_end
:var_079bfbe1-2e32-436d-abf1-8cfdc40dc4d5
:var_079bfbe1-2e32-436d-abf1-8cfdc40dc4d5_end
jmp >var_f47732ff-5abe-44ef-8656-562cfafc65fb_end
:var_f47732ff-5abe-44ef-8656-562cfafc65fb
:var_f47732ff-5abe-44ef-8656-562cfafc65fb_end
set reg0 0
wmem >var_f47732ff-5abe-44ef-8656-562cfafc65fb reg0
:while_6b0dee49-4070-4af2-9249-a1d03fb5c96f_begin
rmem reg0 >var_8cbe7e72-f8e4-4d87-9275-5d41216c2636
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_6b0dee49-4070-4af2-9249-a1d03fb5c96f_end
rmem reg0 >var_8cbe7e72-f8e4-4d87-9275-5d41216c2636
set reg1 10
mod reg0 reg0 reg1
wmem >var_079bfbe1-2e32-436d-abf1-8cfdc40dc4d5 reg0
rmem reg0 >var_079bfbe1-2e32-436d-abf1-8cfdc40dc4d5
rmem reg0 >var_079bfbe1-2e32-436d-abf1-8cfdc40dc4d5
push reg0
rmem reg0 >var_f47732ff-5abe-44ef-8656-562cfafc65fb
add reg0 reg0 1
wmem >var_f47732ff-5abe-44ef-8656-562cfafc65fb reg0
rmem reg0 >var_8cbe7e72-f8e4-4d87-9275-5d41216c2636
set reg1 10
call >divide
wmem >var_8cbe7e72-f8e4-4d87-9275-5d41216c2636 reg0
jmp >while_6b0dee49-4070-4af2-9249-a1d03fb5c96f_begin
:while_6b0dee49-4070-4af2-9249-a1d03fb5c96f_end
rmem reg0 >var_8cbe7e72-f8e4-4d87-9275-5d41216c2636
set reg1 10
mod reg0 reg0 reg1
wmem >var_079bfbe1-2e32-436d-abf1-8cfdc40dc4d5 reg0
rmem reg0 >var_079bfbe1-2e32-436d-abf1-8cfdc40dc4d5
rmem reg0 >var_079bfbe1-2e32-436d-abf1-8cfdc40dc4d5
push reg0
rmem reg0 >var_f47732ff-5abe-44ef-8656-562cfafc65fb
add reg0 reg0 1
wmem >var_f47732ff-5abe-44ef-8656-562cfafc65fb reg0
jmp >var_75220d7e-e2a2-4475-b0b8-b95d3b2794bc_end
:var_75220d7e-e2a2-4475-b0b8-b95d3b2794bc
:var_75220d7e-e2a2-4475-b0b8-b95d3b2794bc_end
set reg0 0
wmem >var_75220d7e-e2a2-4475-b0b8-b95d3b2794bc reg0
:while_4227aec8-09f0-47d0-9e52-75145497fa64_begin
rmem reg0 >var_75220d7e-e2a2-4475-b0b8-b95d3b2794bc
rmem reg1 >var_f47732ff-5abe-44ef-8656-562cfafc65fb
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_4227aec8-09f0-47d0-9e52-75145497fa64_end
rmem reg0 >var_75220d7e-e2a2-4475-b0b8-b95d3b2794bc
set reg1 1
add reg0 reg0 reg1
wmem >var_75220d7e-e2a2-4475-b0b8-b95d3b2794bc reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_4227aec8-09f0-47d0-9e52-75145497fa64_begin
:while_4227aec8-09f0-47d0-9e52-75145497fa64_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_eab2f144-71f0-4ae8-8f94-2d1dbf1e23cc_end
:var_eab2f144-71f0-4ae8-8f94-2d1dbf1e23cc
:var_eab2f144-71f0-4ae8-8f94-2d1dbf1e23cc_end
set reg0 0
wmem >var_eab2f144-71f0-4ae8-8f94-2d1dbf1e23cc reg0
:while_e9b6ee88-72bd-4b4d-bd19-5b9fa1005e92_begin
rmem reg0 >var_eab2f144-71f0-4ae8-8f94-2d1dbf1e23cc
rmem reg0 reg0
jf reg0 >while_e9b6ee88-72bd-4b4d-bd19-5b9fa1005e92_end
rmem reg0 >var_eab2f144-71f0-4ae8-8f94-2d1dbf1e23cc
add reg0 reg0 1
wmem >var_eab2f144-71f0-4ae8-8f94-2d1dbf1e23cc reg0
rmem reg0 >var_eab2f144-71f0-4ae8-8f94-2d1dbf1e23cc
rmem reg0 reg0
rmem reg0 >var_eab2f144-71f0-4ae8-8f94-2d1dbf1e23cc
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_e9b6ee88-72bd-4b4d-bd19-5b9fa1005e92_begin
:while_e9b6ee88-72bd-4b4d-bd19-5b9fa1005e92_end
ret
:dump_mem_end
jmp >var_454387ab-f6e3-4101-8d3b-573484cab040_end
:var_454387ab-f6e3-4101-8d3b-573484cab040
:var_454387ab-f6e3-4101-8d3b-573484cab040_end
jmp >var_c29d2c9b-7f6d-4134-9c61-acf2bdfafc39_end
:var_c29d2c9b-7f6d-4134-9c61-acf2bdfafc39
&e
&s
&t
0
:var_c29d2c9b-7f6d-4134-9c61-acf2bdfafc39_end
wmem >var_c29d2c9b-7f6d-4134-9c61-acf2bdfafc39 &t
set reg0 >var_c29d2c9b-7f6d-4134-9c61-acf2bdfafc39
jmp >var_5a712f99-5741-439f-8a20-af38c3cb43f4_end
:var_5a712f99-5741-439f-8a20-af38c3cb43f4
&e
&s
&t
0
:var_5a712f99-5741-439f-8a20-af38c3cb43f4_end
wmem >var_5a712f99-5741-439f-8a20-af38c3cb43f4 &t
set reg0 >var_5a712f99-5741-439f-8a20-af38c3cb43f4
call >str_len
wmem >var_454387ab-f6e3-4101-8d3b-573484cab040 reg0
rmem reg0 >var_454387ab-f6e3-4101-8d3b-573484cab040
rmem reg0 >var_454387ab-f6e3-4101-8d3b-573484cab040
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

