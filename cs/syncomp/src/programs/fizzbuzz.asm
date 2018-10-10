jmp >str_equal_end
:str_equal
jmp >var_3dfbb667057e_end
:var_3dfbb667057e
:var_3dfbb667057e_end
jmp >var_733fe049a54a_end
:var_733fe049a54a
:var_733fe049a54a_end
wmem >var_3dfbb667057e reg0
wmem >var_733fe049a54a reg1
jmp >var_3cf83f17bb50_end
:var_3cf83f17bb50
:var_3cf83f17bb50_end
rmem reg0 >var_3dfbb667057e
call >str_len
wmem >var_3cf83f17bb50 reg0
jmp >var_b301a219fb0f_end
:var_b301a219fb0f
:var_b301a219fb0f_end
rmem reg0 >var_733fe049a54a
call >str_len
wmem >var_b301a219fb0f reg0
rmem reg0 >var_3cf83f17bb50
rmem reg1 >var_b301a219fb0f
eq reg0 reg0 reg1
call >not
jf reg0 >end_417a49305aec
set reg0 0
ret
:end_417a49305aec
jmp >var_41c58b4435e0_end
:var_41c58b4435e0
:var_41c58b4435e0_end
set reg0 0
wmem >var_41c58b4435e0 reg0
:for_0db68d0b0a66_begin
rmem reg0 >var_41c58b4435e0
rmem reg1 >var_3cf83f17bb50
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_3cf83f17bb50
jf reg0 >for_0db68d0b0a66_end
jmp >var_fce2cdaad20d_end
:var_fce2cdaad20d
:var_fce2cdaad20d_end
rmem reg0 >var_3dfbb667057e
rmem reg1 >var_41c58b4435e0
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_fce2cdaad20d reg0
jmp >var_49ef4036c014_end
:var_49ef4036c014
:var_49ef4036c014_end
rmem reg0 >var_733fe049a54a
rmem reg1 >var_41c58b4435e0
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_49ef4036c014 reg0
rmem reg0 >var_fce2cdaad20d
rmem reg1 >var_49ef4036c014
eq reg0 reg0 reg1
call >not
jf reg0 >end_f7db64a4ac10
set reg0 0
ret
:end_f7db64a4ac10
rmem reg0 >var_41c58b4435e0
add reg0 reg0 1
wmem >var_41c58b4435e0 reg0
jmp >for_0db68d0b0a66_begin
:for_0db68d0b0a66_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_5c04b28d90f2_end
:var_5c04b28d90f2
:var_5c04b28d90f2_end
set reg0 16382
wmem >var_5c04b28d90f2 reg0
:while_8b745f9d4564_begin
rmem reg0 >var_5c04b28d90f2
rmem reg0 reg0
call >not
jf reg0 >while_8b745f9d4564_end
rmem reg0 >var_5c04b28d90f2
set reg1 1
call >subtract
wmem >var_5c04b28d90f2 reg0
jmp >while_8b745f9d4564_begin
:while_8b745f9d4564_end
rmem reg0 >var_5c04b28d90f2
set reg1 2
add reg0 reg0 reg1
wmem >var_5c04b28d90f2 reg0
rmem reg0 >var_5c04b28d90f2
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_843aa2795e9f_end
:var_843aa2795e9f
:var_843aa2795e9f_end
wmem >var_843aa2795e9f reg0
jmp >var_19fda8b27888_end
:var_19fda8b27888
:var_19fda8b27888_end
call >alloc
wmem >var_19fda8b27888 reg0
jmp >var_f9effea3b48c_end
:var_f9effea3b48c
:var_f9effea3b48c_end
rmem reg0 >var_19fda8b27888
rmem reg1 >var_843aa2795e9f
add reg0 reg0 reg1
wmem >var_f9effea3b48c reg0
rmem reg0 >var_f9effea3b48c
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_19fda8b27888
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_665d29ea4c89_end
:var_665d29ea4c89
:var_665d29ea4c89_end
jmp >var_d29329f5f64b_end
:var_d29329f5f64b
:var_d29329f5f64b_end
jmp >var_4aa10ee94a10_end
:var_4aa10ee94a10
:var_4aa10ee94a10_end
wmem >var_665d29ea4c89 reg0
wmem >var_d29329f5f64b reg1
wmem >var_4aa10ee94a10 reg2
jmp >var_aa666b7a15fc_end
:var_aa666b7a15fc
:var_aa666b7a15fc_end
set reg0 0
wmem >var_aa666b7a15fc reg0
:while_6c93e2eaa4ab_begin
rmem reg0 >var_aa666b7a15fc
rmem reg1 >var_4aa10ee94a10
gt reg0 reg0 reg1
call >not
rmem reg0 >var_4aa10ee94a10
jf reg0 >while_6c93e2eaa4ab_end
jmp >var_a510262fcef3_end
:var_a510262fcef3
:var_a510262fcef3_end
rmem reg0 >var_665d29ea4c89
rmem reg1 >var_aa666b7a15fc
add reg0 reg0 reg1
wmem >var_a510262fcef3 reg0
jmp >var_179f75a4eadd_end
:var_179f75a4eadd
:var_179f75a4eadd_end
rmem reg0 >var_d29329f5f64b
rmem reg1 >var_aa666b7a15fc
add reg0 reg0 reg1
wmem >var_179f75a4eadd reg0
rmem reg0 >var_179f75a4eadd
rmem reg1 >var_a510262fcef3
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_aa666b7a15fc
add reg0 reg0 1
wmem >var_aa666b7a15fc reg0
jmp >while_6c93e2eaa4ab_begin
:while_6c93e2eaa4ab_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_dbf3d6cddd56_end
:var_dbf3d6cddd56
:var_dbf3d6cddd56_end
wmem >var_dbf3d6cddd56 reg0
jmp >var_2198b54e9ea5_end
:var_2198b54e9ea5
:var_2198b54e9ea5_end
set reg0 0
wmem >var_2198b54e9ea5 reg0
:while_2791a95e0f72_begin
rmem reg0 >var_dbf3d6cddd56
rmem reg0 reg0
jf reg0 >while_2791a95e0f72_end
rmem reg0 >var_dbf3d6cddd56
add reg0 reg0 1
wmem >var_dbf3d6cddd56 reg0
rmem reg0 >var_2198b54e9ea5
add reg0 reg0 1
wmem >var_2198b54e9ea5 reg0
jmp >while_2791a95e0f72_begin
:while_2791a95e0f72_end
rmem reg0 >var_2198b54e9ea5
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_1576ab0a6ccd_end
:var_1576ab0a6ccd
:var_1576ab0a6ccd_end
jmp >var_92cde4db5d34_end
:var_92cde4db5d34
:var_92cde4db5d34_end
wmem >var_1576ab0a6ccd reg0
wmem >var_92cde4db5d34 reg1
jmp >var_78583a008ac9_end
:var_78583a008ac9
:var_78583a008ac9_end
rmem reg0 >var_1576ab0a6ccd
call >str_len
wmem >var_78583a008ac9 reg0
jmp >var_8a886c83a0d6_end
:var_8a886c83a0d6
:var_8a886c83a0d6_end
rmem reg0 >var_92cde4db5d34
call >str_len
wmem >var_8a886c83a0d6 reg0
jmp >var_7968c0f1f6a7_end
:var_7968c0f1f6a7
:var_7968c0f1f6a7_end
call >alloc
wmem >var_7968c0f1f6a7 reg0
rmem reg0 >var_1576ab0a6ccd
rmem reg1 >var_7968c0f1f6a7
rmem reg2 >var_78583a008ac9
call >mem_cp
jmp >var_c53de2961d92_end
:var_c53de2961d92
:var_c53de2961d92_end
rmem reg0 >var_7968c0f1f6a7
rmem reg1 >var_78583a008ac9
add reg0 reg0 reg1
wmem >var_c53de2961d92 reg0
rmem reg0 >var_8a886c83a0d6
add reg0 reg0 1
wmem >var_8a886c83a0d6 reg0
rmem reg0 >var_92cde4db5d34
rmem reg1 >var_c53de2961d92
rmem reg2 >var_8a886c83a0d6
call >mem_cp
rmem reg0 >var_7968c0f1f6a7
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_962872f8f8d1_end
:var_962872f8f8d1
:var_962872f8f8d1_end
wmem >var_962872f8f8d1 reg0
jmp >var_adc61deb3fe7_end
:var_adc61deb3fe7
:var_adc61deb3fe7_end
call >alloc
wmem >var_adc61deb3fe7 reg0
jmp >var_8461bfca3c90_end
:var_8461bfca3c90
:var_8461bfca3c90_end
rmem reg0 >var_962872f8f8d1
call >str_len
wmem >var_8461bfca3c90 reg0
jmp >var_184c0b20273f_end
:var_184c0b20273f
:var_184c0b20273f_end
set reg0 0
wmem >var_184c0b20273f reg0
:while_97e8c56b19a4_begin
rmem reg0 >var_184c0b20273f
rmem reg1 >var_8461bfca3c90
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_8461bfca3c90
jf reg0 >while_97e8c56b19a4_end
jmp >var_14e9226d1e7f_end
:var_14e9226d1e7f
:var_14e9226d1e7f_end
rmem reg0 >var_962872f8f8d1
rmem reg1 >var_184c0b20273f
add reg0 reg0 reg1
wmem >var_14e9226d1e7f reg0
rmem reg0 >var_14e9226d1e7f
rmem reg0 reg0
rmem reg0 >var_14e9226d1e7f
rmem reg0 reg0
push reg0
rmem reg0 >var_184c0b20273f
add reg0 reg0 1
wmem >var_184c0b20273f reg0
jmp >while_97e8c56b19a4_begin
:while_97e8c56b19a4_end
jmp >var_c356b5eca553_end
:var_c356b5eca553
:var_c356b5eca553_end
pop reg0
wmem >var_c356b5eca553 reg0
set reg0 0
wmem >var_184c0b20273f reg0
:while_006e9172d0a0_begin
rmem reg0 >var_184c0b20273f
rmem reg1 >var_8461bfca3c90
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_8461bfca3c90
jf reg0 >while_006e9172d0a0_end
jmp >var_0d2b239d50fc_end
:var_0d2b239d50fc
:var_0d2b239d50fc_end
rmem reg0 >var_adc61deb3fe7
rmem reg1 >var_184c0b20273f
add reg0 reg0 reg1
wmem >var_0d2b239d50fc reg0
rmem reg0 >var_0d2b239d50fc
rmem reg1 >var_c356b5eca553
wmem reg0 reg1
rmem reg0 >var_184c0b20273f
add reg0 reg0 1
wmem >var_184c0b20273f reg0
pop reg0
wmem >var_c356b5eca553 reg0
jmp >while_006e9172d0a0_begin
:while_006e9172d0a0_end
rmem reg0 >var_c356b5eca553
rmem reg0 >var_c356b5eca553
push reg0
rmem reg0 >var_adc61deb3fe7
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_cd9383aadda6_end
:var_cd9383aadda6
:var_cd9383aadda6_end
set reg0 16384
wmem >var_cd9383aadda6 reg0
jmp >var_066a8485b30c_end
:var_066a8485b30c
:var_066a8485b30c_end
in reg0
wmem >var_066a8485b30c reg0
jmp >var_b278d093108f_end
:var_b278d093108f
:var_b278d093108f_end
rmem reg0 >var_066a8485b30c
set reg1 10
eq reg0 reg0 reg1
wmem >var_b278d093108f reg0
:while_04feaf85efd3_begin
rmem reg0 >var_b278d093108f
rmem reg1 >var_066a8485b30c
call >and
call >not
jf reg0 >while_04feaf85efd3_end
rmem reg0 >var_cd9383aadda6
rmem reg1 >var_066a8485b30c
wmem reg0 reg1
rmem reg0 >var_cd9383aadda6
add reg0 reg0 1
wmem >var_cd9383aadda6 reg0
in reg0
wmem >var_066a8485b30c reg0
rmem reg0 >var_066a8485b30c
set reg1 10
eq reg0 reg0 reg1
wmem >var_b278d093108f reg0
jmp >while_04feaf85efd3_begin
:while_04feaf85efd3_end
rmem reg0 >var_cd9383aadda6
set reg1 0
wmem reg0 reg1
jmp >var_a78cf8c1f105_end
:var_a78cf8c1f105
:var_a78cf8c1f105_end
call >alloc
wmem >var_a78cf8c1f105 reg0
jmp >var_f2f27c258a95_end
:var_f2f27c258a95
:var_f2f27c258a95_end
set reg0 16384
call >str_len
wmem >var_f2f27c258a95 reg0
set reg0 16384
rmem reg1 >var_a78cf8c1f105
rmem reg2 >var_f2f27c258a95
call >mem_cp
rmem reg0 >var_a78cf8c1f105
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_177c72f131ae_end
:var_177c72f131ae
:var_177c72f131ae_end
wmem >var_177c72f131ae reg0
:while_4db2bd2f4a8b_begin
rmem reg0 >var_177c72f131ae
rmem reg0 reg0
jf reg0 >while_4db2bd2f4a8b_end
rmem reg0 >var_177c72f131ae
rmem reg0 reg0
out reg0
rmem reg0 >var_177c72f131ae
add reg0 reg0 1
wmem >var_177c72f131ae reg0
jmp >while_4db2bd2f4a8b_begin
:while_4db2bd2f4a8b_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_e5c2f03e3fda_end
:var_e5c2f03e3fda
:var_e5c2f03e3fda_end
wmem >var_e5c2f03e3fda reg0
rmem reg0 >var_e5c2f03e3fda
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_b7cd8dcc0be0_end
:var_b7cd8dcc0be0
:var_b7cd8dcc0be0_end
wmem >var_b7cd8dcc0be0 reg0
rmem reg0 >var_b7cd8dcc0be0
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_7453b63cb559
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_7453b63cb559
jmp >var_4a32de8104ab_end
:var_4a32de8104ab
:var_4a32de8104ab_end
jmp >var_4b5daf17e40f_end
:var_4b5daf17e40f
:var_4b5daf17e40f_end
set reg0 0
wmem >var_4b5daf17e40f reg0
:while_d45fd962e309_begin
rmem reg0 >var_b7cd8dcc0be0
set reg1 10
gt reg0 reg0 reg1
set reg0 10
jf reg0 >while_d45fd962e309_end
rmem reg0 >var_b7cd8dcc0be0
set reg1 10
mod reg0 reg0 reg1
wmem >var_4a32de8104ab reg0
rmem reg0 >var_4a32de8104ab
rmem reg0 >var_4a32de8104ab
push reg0
rmem reg0 >var_4b5daf17e40f
add reg0 reg0 1
wmem >var_4b5daf17e40f reg0
rmem reg0 >var_b7cd8dcc0be0
set reg1 10
call >divide
wmem >var_b7cd8dcc0be0 reg0
jmp >while_d45fd962e309_begin
:while_d45fd962e309_end
rmem reg0 >var_b7cd8dcc0be0
set reg1 10
mod reg0 reg0 reg1
wmem >var_4a32de8104ab reg0
rmem reg0 >var_4a32de8104ab
rmem reg0 >var_4a32de8104ab
push reg0
rmem reg0 >var_4b5daf17e40f
add reg0 reg0 1
wmem >var_4b5daf17e40f reg0
jmp >var_370f5a488cb5_end
:var_370f5a488cb5
:var_370f5a488cb5_end
set reg0 0
wmem >var_370f5a488cb5 reg0
:while_2b5a7495aab9_begin
rmem reg0 >var_370f5a488cb5
rmem reg1 >var_4b5daf17e40f
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_4b5daf17e40f
jf reg0 >while_2b5a7495aab9_end
rmem reg0 >var_370f5a488cb5
set reg1 1
add reg0 reg0 reg1
wmem >var_370f5a488cb5 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_2b5a7495aab9_begin
:while_2b5a7495aab9_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_67d86a1764f2_end
:var_67d86a1764f2
:var_67d86a1764f2_end
set reg0 0
wmem >var_67d86a1764f2 reg0
:while_add286b71c91_begin
rmem reg0 >var_67d86a1764f2
rmem reg0 reg0
jf reg0 >while_add286b71c91_end
rmem reg0 >var_67d86a1764f2
add reg0 reg0 1
wmem >var_67d86a1764f2 reg0
rmem reg0 >var_67d86a1764f2
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_add286b71c91_begin
:while_add286b71c91_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_43676107c277_end
:var_43676107c277
:var_43676107c277_end
wmem >var_43676107c277 reg0
jmp >var_f942c04bdedf_end
:var_f942c04bdedf
:var_f942c04bdedf_end
rmem reg0 >var_43676107c277
call >flip_str
wmem >var_f942c04bdedf reg0
jmp >var_d6bcd6faac43_end
:var_d6bcd6faac43
:var_d6bcd6faac43_end
rmem reg0 >var_f942c04bdedf
call >str_len
wmem >var_d6bcd6faac43 reg0
rmem reg0 >var_d6bcd6faac43
set reg1 1
call >subtract
wmem >var_d6bcd6faac43 reg0
jmp >var_f4e680225d35_end
:var_f4e680225d35
:var_f4e680225d35_end
set reg0 0
wmem >var_f4e680225d35 reg0
jmp >var_9846fede9387_end
:var_9846fede9387
:var_9846fede9387_end
set reg0 0
wmem >var_9846fede9387 reg0
:while_5fac1e1aad7b_begin
rmem reg0 >var_f4e680225d35
rmem reg1 >var_d6bcd6faac43
gt reg0 reg0 reg1
call >not
rmem reg0 >var_d6bcd6faac43
jf reg0 >while_5fac1e1aad7b_end
jmp >var_6e21960c2ba6_end
:var_6e21960c2ba6
:var_6e21960c2ba6_end
rmem reg0 >var_f942c04bdedf
rmem reg1 >var_f4e680225d35
add reg0 reg0 reg1
wmem >var_6e21960c2ba6 reg0
rmem reg0 >var_6e21960c2ba6
rmem reg0 reg0
wmem >var_6e21960c2ba6 reg0
jmp >var_75bdfea3f9d8_end
:var_75bdfea3f9d8
:var_75bdfea3f9d8_end
rmem reg0 >var_6e21960c2ba6
set reg1 47
gt reg0 reg0 reg1
wmem >var_75bdfea3f9d8 reg0
jmp >var_86b5083174bc_end
:var_86b5083174bc
:var_86b5083174bc_end
rmem reg0 >var_6e21960c2ba6
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_86b5083174bc reg0
rmem reg0 >var_75bdfea3f9d8
rmem reg1 >var_86b5083174bc
call >and
jf reg0 >end_7f810eae6764
jmp >var_bd69011a92b3_end
:var_bd69011a92b3
:var_bd69011a92b3_end
rmem reg0 >var_6e21960c2ba6
set reg1 48
call >subtract
wmem >var_bd69011a92b3 reg0
rmem reg0 >var_bd69011a92b3
call >print_number
set reg0 10
out reg0
jmp >var_bd6b3d5a7c25_end
:var_bd6b3d5a7c25
:var_bd6b3d5a7c25_end
set reg0 0
wmem >var_bd6b3d5a7c25 reg0
jmp >var_e1bc503fe8a0_end
:var_e1bc503fe8a0
:var_e1bc503fe8a0_end
rmem reg0 >var_f4e680225d35
set reg1 1
call >subtract
wmem >var_e1bc503fe8a0 reg0
:while_d95666637f24_begin
rmem reg0 >var_bd6b3d5a7c25
rmem reg1 >var_e1bc503fe8a0
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_e1bc503fe8a0
jf reg0 >while_d95666637f24_end
rmem reg0 >var_bd69011a92b3
set reg1 10
call >subtract
wmem >var_bd69011a92b3 reg0
rmem reg0 >var_bd6b3d5a7c25
add reg0 reg0 1
wmem >var_bd6b3d5a7c25 reg0
jmp >while_d95666637f24_begin
:while_d95666637f24_end
rmem reg0 >var_9846fede9387
rmem reg1 >var_bd69011a92b3
add reg0 reg0 reg1
wmem >var_9846fede9387 reg0
:end_7f810eae6764
rmem reg0 >var_f4e680225d35
add reg0 reg0 1
wmem >var_f4e680225d35 reg0
jmp >while_5fac1e1aad7b_begin
:while_5fac1e1aad7b_end
rmem reg0 >var_9846fede9387
call >print_number
rmem reg0 >var_9846fede9387
ret
ret
:int_end
set reg0 >int
jmp >var_c92a4ea837fa_end
:var_c92a4ea837fa
:var_c92a4ea837fa_end
set reg0 1
wmem >var_c92a4ea837fa reg0
:for_cf62e1322ac8_begin
rmem reg0 >var_c92a4ea837fa
set reg1 40
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
set reg0 40
jf reg0 >for_cf62e1322ac8_end
jmp >var_780ad467c21a_end
:var_780ad467c21a
:var_780ad467c21a_end
rmem reg0 >var_c92a4ea837fa
set reg1 3
mod reg0 reg0 reg1
wmem >var_780ad467c21a reg0
jmp >var_ed67cb1f0cb2_end
:var_ed67cb1f0cb2
:var_ed67cb1f0cb2_end
rmem reg0 >var_c92a4ea837fa
set reg1 5
mod reg0 reg0 reg1
wmem >var_ed67cb1f0cb2 reg0
rmem reg0 >var_780ad467c21a
rmem reg1 >var_ed67cb1f0cb2
call >and
jf reg0 >end_97a8ee7f2137
rmem reg0 >var_c92a4ea837fa
call >print_number
:end_97a8ee7f2137
rmem reg0 >var_780ad467c21a
call >not
jf reg0 >end_a4c63782b41f
jmp >var_a5d4a9bc99c8_end
:var_a5d4a9bc99c8
&i
&z
&z
0
:var_a5d4a9bc99c8_end
wmem >var_a5d4a9bc99c8 &f
set reg0 >var_a5d4a9bc99c8
call >print
:end_a4c63782b41f
rmem reg0 >var_ed67cb1f0cb2
call >not
jf reg0 >end_d296ac499710
jmp >var_c87c50068f99_end
:var_c87c50068f99
&u
&z
&z
0
:var_c87c50068f99_end
wmem >var_c87c50068f99 &b
set reg0 >var_c87c50068f99
call >print
:end_d296ac499710
set reg0 10
out reg0
rmem reg0 >var_c92a4ea837fa
add reg0 reg0 1
wmem >var_c92a4ea837fa reg0
jmp >for_cf62e1322ac8_begin
:for_cf62e1322ac8_end
halt

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

