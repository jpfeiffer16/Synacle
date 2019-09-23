jmp >str_equal_end
:str_equal
jmp >var_49c6021aa55f_end
:var_49c6021aa55f
:var_49c6021aa55f_end
jmp >var_d49c866f39d9_end
:var_d49c866f39d9
:var_d49c866f39d9_end
wmem >var_49c6021aa55f reg0
wmem >var_d49c866f39d9 reg1
jmp >var_4b37df64e700_end
:var_4b37df64e700
:var_4b37df64e700_end
rmem reg0 >var_49c6021aa55f
call >str_len
wmem >var_4b37df64e700 reg0
jmp >var_2bc373ef38d3_end
:var_2bc373ef38d3
:var_2bc373ef38d3_end
rmem reg0 >var_d49c866f39d9
call >str_len
wmem >var_2bc373ef38d3 reg0
rmem reg0 >var_4b37df64e700
rmem reg1 >var_2bc373ef38d3
eq reg0 reg0 reg1
call >not
jf reg0 >end_98163a626f32
set reg0 0
ret
:end_98163a626f32
jmp >var_c5aef2f94376_end
:var_c5aef2f94376
:var_c5aef2f94376_end
set reg0 0
wmem >var_c5aef2f94376 reg0
:for_ac6a57f0a733_begin
rmem reg0 >var_c5aef2f94376
rmem reg1 >var_4b37df64e700
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_ac6a57f0a733_end
jmp >var_9008ff72ffda_end
:var_9008ff72ffda
:var_9008ff72ffda_end
rmem reg0 >var_49c6021aa55f
rmem reg1 >var_c5aef2f94376
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_9008ff72ffda reg0
jmp >var_1f76b6cc8f9a_end
:var_1f76b6cc8f9a
:var_1f76b6cc8f9a_end
rmem reg0 >var_d49c866f39d9
rmem reg1 >var_c5aef2f94376
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_1f76b6cc8f9a reg0
rmem reg0 >var_9008ff72ffda
rmem reg1 >var_1f76b6cc8f9a
eq reg0 reg0 reg1
call >not
jf reg0 >end_3fd1e72f1972
set reg0 0
ret
:end_3fd1e72f1972
rmem reg0 >var_c5aef2f94376
add reg0 reg0 1
wmem >var_c5aef2f94376 reg0
jmp >for_ac6a57f0a733_begin
:for_ac6a57f0a733_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_49bf37db3fa7_end
:var_49bf37db3fa7
:var_49bf37db3fa7_end
set reg0 16382
wmem >var_49bf37db3fa7 reg0
:while_0c4cfe2c8430_begin
rmem reg0 >var_49bf37db3fa7
rmem reg0 reg0
call >not
jf reg0 >while_0c4cfe2c8430_end
rmem reg0 >var_49bf37db3fa7
set reg1 1
call >subtract
wmem >var_49bf37db3fa7 reg0
jmp >while_0c4cfe2c8430_begin
:while_0c4cfe2c8430_end
rmem reg0 >var_49bf37db3fa7
set reg1 2
add reg0 reg0 reg1
wmem >var_49bf37db3fa7 reg0
rmem reg0 >var_49bf37db3fa7
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_6d7a667a7be9_end
:var_6d7a667a7be9
:var_6d7a667a7be9_end
wmem >var_6d7a667a7be9 reg0
jmp >var_e12e5a2fe714_end
:var_e12e5a2fe714
:var_e12e5a2fe714_end
call >alloc
wmem >var_e12e5a2fe714 reg0
jmp >var_f367dddae258_end
:var_f367dddae258
:var_f367dddae258_end
rmem reg0 >var_e12e5a2fe714
rmem reg1 >var_6d7a667a7be9
add reg0 reg0 reg1
wmem >var_f367dddae258 reg0
rmem reg0 >var_f367dddae258
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_e12e5a2fe714
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_f3c89a6d767c_end
:var_f3c89a6d767c
:var_f3c89a6d767c_end
jmp >var_6fd775f21363_end
:var_6fd775f21363
:var_6fd775f21363_end
jmp >var_8b8fa4e4c249_end
:var_8b8fa4e4c249
:var_8b8fa4e4c249_end
wmem >var_f3c89a6d767c reg0
wmem >var_6fd775f21363 reg1
wmem >var_8b8fa4e4c249 reg2
jmp >var_cedbce7b9c41_end
:var_cedbce7b9c41
:var_cedbce7b9c41_end
set reg0 0
wmem >var_cedbce7b9c41 reg0
:while_6a0bc39a5d74_begin
rmem reg0 >var_cedbce7b9c41
rmem reg1 >var_8b8fa4e4c249
gt reg0 reg0 reg1
call >not
jf reg0 >while_6a0bc39a5d74_end
jmp >var_6c0216955872_end
:var_6c0216955872
:var_6c0216955872_end
rmem reg0 >var_f3c89a6d767c
rmem reg1 >var_cedbce7b9c41
add reg0 reg0 reg1
wmem >var_6c0216955872 reg0
jmp >var_b0b49431c554_end
:var_b0b49431c554
:var_b0b49431c554_end
rmem reg0 >var_6fd775f21363
rmem reg1 >var_cedbce7b9c41
add reg0 reg0 reg1
wmem >var_b0b49431c554 reg0
rmem reg0 >var_b0b49431c554
rmem reg1 >var_6c0216955872
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_cedbce7b9c41
add reg0 reg0 1
wmem >var_cedbce7b9c41 reg0
jmp >while_6a0bc39a5d74_begin
:while_6a0bc39a5d74_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_59f92a826e2e_end
:var_59f92a826e2e
:var_59f92a826e2e_end
wmem >var_59f92a826e2e reg0
jmp >var_4315b8f84323_end
:var_4315b8f84323
:var_4315b8f84323_end
set reg0 0
wmem >var_4315b8f84323 reg0
:while_ce3f109305d5_begin
rmem reg0 >var_59f92a826e2e
rmem reg0 reg0
jf reg0 >while_ce3f109305d5_end
rmem reg0 >var_59f92a826e2e
add reg0 reg0 1
wmem >var_59f92a826e2e reg0
rmem reg0 >var_4315b8f84323
add reg0 reg0 1
wmem >var_4315b8f84323 reg0
jmp >while_ce3f109305d5_begin
:while_ce3f109305d5_end
rmem reg0 >var_4315b8f84323
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_cc5a92df3171_end
:var_cc5a92df3171
:var_cc5a92df3171_end
jmp >var_8fcb804cb5aa_end
:var_8fcb804cb5aa
:var_8fcb804cb5aa_end
wmem >var_cc5a92df3171 reg0
wmem >var_8fcb804cb5aa reg1
jmp >var_8f01c489ffb8_end
:var_8f01c489ffb8
:var_8f01c489ffb8_end
rmem reg0 >var_cc5a92df3171
call >str_len
wmem >var_8f01c489ffb8 reg0
jmp >var_2f015c7b091f_end
:var_2f015c7b091f
:var_2f015c7b091f_end
rmem reg0 >var_8fcb804cb5aa
call >str_len
wmem >var_2f015c7b091f reg0
jmp >var_4ccdde8bce35_end
:var_4ccdde8bce35
:var_4ccdde8bce35_end
call >alloc
wmem >var_4ccdde8bce35 reg0
rmem reg0 >var_cc5a92df3171
rmem reg1 >var_4ccdde8bce35
rmem reg2 >var_8f01c489ffb8
call >mem_cp
jmp >var_d87fc0b6ee1b_end
:var_d87fc0b6ee1b
:var_d87fc0b6ee1b_end
rmem reg0 >var_4ccdde8bce35
rmem reg1 >var_8f01c489ffb8
add reg0 reg0 reg1
wmem >var_d87fc0b6ee1b reg0
rmem reg0 >var_2f015c7b091f
add reg0 reg0 1
wmem >var_2f015c7b091f reg0
rmem reg0 >var_8fcb804cb5aa
rmem reg1 >var_d87fc0b6ee1b
rmem reg2 >var_2f015c7b091f
call >mem_cp
rmem reg0 >var_4ccdde8bce35
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_d69757bfd6d7_end
:var_d69757bfd6d7
:var_d69757bfd6d7_end
wmem >var_d69757bfd6d7 reg0
jmp >var_6d5c92228007_end
:var_6d5c92228007
:var_6d5c92228007_end
call >alloc
wmem >var_6d5c92228007 reg0
jmp >var_021a13f5897b_end
:var_021a13f5897b
:var_021a13f5897b_end
rmem reg0 >var_d69757bfd6d7
call >str_len
wmem >var_021a13f5897b reg0
jmp >var_66030fe3f1ec_end
:var_66030fe3f1ec
:var_66030fe3f1ec_end
set reg0 0
wmem >var_66030fe3f1ec reg0
:while_b5afdd2c225f_begin
rmem reg0 >var_66030fe3f1ec
rmem reg1 >var_021a13f5897b
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_b5afdd2c225f_end
jmp >var_9e4d1d0c20b3_end
:var_9e4d1d0c20b3
:var_9e4d1d0c20b3_end
rmem reg0 >var_d69757bfd6d7
rmem reg1 >var_66030fe3f1ec
add reg0 reg0 reg1
wmem >var_9e4d1d0c20b3 reg0
rmem reg0 >var_9e4d1d0c20b3
rmem reg0 reg0
rmem reg0 >var_9e4d1d0c20b3
rmem reg0 reg0
push reg0
rmem reg0 >var_66030fe3f1ec
add reg0 reg0 1
wmem >var_66030fe3f1ec reg0
jmp >while_b5afdd2c225f_begin
:while_b5afdd2c225f_end
jmp >var_3dcf80f9f0bc_end
:var_3dcf80f9f0bc
:var_3dcf80f9f0bc_end
pop reg0
wmem >var_3dcf80f9f0bc reg0
set reg0 0
wmem >var_66030fe3f1ec reg0
:while_7ada526ce0e4_begin
rmem reg0 >var_66030fe3f1ec
rmem reg1 >var_021a13f5897b
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_7ada526ce0e4_end
jmp >var_90030253898f_end
:var_90030253898f
:var_90030253898f_end
rmem reg0 >var_6d5c92228007
rmem reg1 >var_66030fe3f1ec
add reg0 reg0 reg1
wmem >var_90030253898f reg0
rmem reg0 >var_90030253898f
rmem reg1 >var_3dcf80f9f0bc
wmem reg0 reg1
rmem reg0 >var_66030fe3f1ec
add reg0 reg0 1
wmem >var_66030fe3f1ec reg0
pop reg0
wmem >var_3dcf80f9f0bc reg0
jmp >while_7ada526ce0e4_begin
:while_7ada526ce0e4_end
rmem reg0 >var_3dcf80f9f0bc
rmem reg0 >var_3dcf80f9f0bc
push reg0
rmem reg0 >var_6d5c92228007
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_db692da93dd5_end
:var_db692da93dd5
:var_db692da93dd5_end
set reg0 16384
wmem >var_db692da93dd5 reg0
jmp >var_acb5ec522b57_end
:var_acb5ec522b57
:var_acb5ec522b57_end
in reg0
wmem >var_acb5ec522b57 reg0
jmp >var_1a8fb29de925_end
:var_1a8fb29de925
:var_1a8fb29de925_end
rmem reg0 >var_acb5ec522b57
set reg1 10
eq reg0 reg0 reg1
wmem >var_1a8fb29de925 reg0
:while_de8cafc5623e_begin
rmem reg0 >var_1a8fb29de925
rmem reg1 >var_acb5ec522b57
call >and
call >not
jf reg0 >while_de8cafc5623e_end
rmem reg0 >var_db692da93dd5
rmem reg1 >var_acb5ec522b57
wmem reg0 reg1
rmem reg0 >var_db692da93dd5
add reg0 reg0 1
wmem >var_db692da93dd5 reg0
in reg0
wmem >var_acb5ec522b57 reg0
rmem reg0 >var_acb5ec522b57
set reg1 10
eq reg0 reg0 reg1
wmem >var_1a8fb29de925 reg0
jmp >while_de8cafc5623e_begin
:while_de8cafc5623e_end
rmem reg0 >var_db692da93dd5
set reg1 0
wmem reg0 reg1
jmp >var_d4b9999b2e70_end
:var_d4b9999b2e70
:var_d4b9999b2e70_end
call >alloc
wmem >var_d4b9999b2e70 reg0
jmp >var_5534856b24ba_end
:var_5534856b24ba
:var_5534856b24ba_end
set reg0 16384
call >str_len
wmem >var_5534856b24ba reg0
set reg0 16384
rmem reg1 >var_d4b9999b2e70
rmem reg2 >var_5534856b24ba
call >mem_cp
rmem reg0 >var_d4b9999b2e70
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_f5e21f0713e5_end
:var_f5e21f0713e5
:var_f5e21f0713e5_end
wmem >var_f5e21f0713e5 reg0
:while_2d9e1798c31a_begin
rmem reg0 >var_f5e21f0713e5
rmem reg0 reg0
jf reg0 >while_2d9e1798c31a_end
rmem reg0 >var_f5e21f0713e5
rmem reg0 reg0
out reg0
rmem reg0 >var_f5e21f0713e5
add reg0 reg0 1
wmem >var_f5e21f0713e5 reg0
jmp >while_2d9e1798c31a_begin
:while_2d9e1798c31a_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_200dae327406_end
:var_200dae327406
:var_200dae327406_end
wmem >var_200dae327406 reg0
rmem reg0 >var_200dae327406
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_e8c0be327b71_end
:var_e8c0be327b71
:var_e8c0be327b71_end
wmem >var_e8c0be327b71 reg0
rmem reg0 >var_e8c0be327b71
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_b011d81b5f65
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_b011d81b5f65
jmp >var_7fd4dc702c50_end
:var_7fd4dc702c50
:var_7fd4dc702c50_end
jmp >var_102fc12f657a_end
:var_102fc12f657a
:var_102fc12f657a_end
set reg0 0
wmem >var_102fc12f657a reg0
:while_0a0f5c62ae78_begin
rmem reg0 >var_e8c0be327b71
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_0a0f5c62ae78_end
rmem reg0 >var_e8c0be327b71
set reg1 10
mod reg0 reg0 reg1
wmem >var_7fd4dc702c50 reg0
rmem reg0 >var_7fd4dc702c50
rmem reg0 >var_7fd4dc702c50
push reg0
rmem reg0 >var_102fc12f657a
add reg0 reg0 1
wmem >var_102fc12f657a reg0
rmem reg0 >var_e8c0be327b71
set reg1 10
call >divide
wmem >var_e8c0be327b71 reg0
jmp >while_0a0f5c62ae78_begin
:while_0a0f5c62ae78_end
rmem reg0 >var_e8c0be327b71
set reg1 10
mod reg0 reg0 reg1
wmem >var_7fd4dc702c50 reg0
rmem reg0 >var_7fd4dc702c50
rmem reg0 >var_7fd4dc702c50
push reg0
rmem reg0 >var_102fc12f657a
add reg0 reg0 1
wmem >var_102fc12f657a reg0
jmp >var_e956a05f1be8_end
:var_e956a05f1be8
:var_e956a05f1be8_end
set reg0 0
wmem >var_e956a05f1be8 reg0
:while_d20eb8b04e70_begin
rmem reg0 >var_e956a05f1be8
rmem reg1 >var_102fc12f657a
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_d20eb8b04e70_end
rmem reg0 >var_e956a05f1be8
set reg1 1
add reg0 reg0 reg1
wmem >var_e956a05f1be8 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_d20eb8b04e70_begin
:while_d20eb8b04e70_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_31c484d40e13_end
:var_31c484d40e13
:var_31c484d40e13_end
set reg0 0
wmem >var_31c484d40e13 reg0
:while_e57086cc1e23_begin
rmem reg0 >var_31c484d40e13
rmem reg0 reg0
jf reg0 >while_e57086cc1e23_end
rmem reg0 >var_31c484d40e13
add reg0 reg0 1
wmem >var_31c484d40e13 reg0
rmem reg0 >var_31c484d40e13
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_e57086cc1e23_begin
:while_e57086cc1e23_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_5d334999c900_end
:var_5d334999c900
:var_5d334999c900_end
wmem >var_5d334999c900 reg0
jmp >var_d4290ebb5a0a_end
:var_d4290ebb5a0a
:var_d4290ebb5a0a_end
rmem reg0 >var_5d334999c900
call >flip_str
wmem >var_d4290ebb5a0a reg0
jmp >var_f58a7653badf_end
:var_f58a7653badf
:var_f58a7653badf_end
rmem reg0 >var_d4290ebb5a0a
call >str_len
wmem >var_f58a7653badf reg0
rmem reg0 >var_f58a7653badf
set reg1 1
call >subtract
wmem >var_f58a7653badf reg0
jmp >var_0a31fae702d7_end
:var_0a31fae702d7
:var_0a31fae702d7_end
set reg0 0
wmem >var_0a31fae702d7 reg0
jmp >var_8c0957c02fe5_end
:var_8c0957c02fe5
:var_8c0957c02fe5_end
set reg0 0
wmem >var_8c0957c02fe5 reg0
:while_6cfe62fa3a4f_begin
rmem reg0 >var_0a31fae702d7
rmem reg1 >var_f58a7653badf
gt reg0 reg0 reg1
call >not
jf reg0 >while_6cfe62fa3a4f_end
jmp >var_2933179f8bc3_end
:var_2933179f8bc3
:var_2933179f8bc3_end
rmem reg0 >var_d4290ebb5a0a
rmem reg1 >var_0a31fae702d7
add reg0 reg0 reg1
wmem >var_2933179f8bc3 reg0
rmem reg0 >var_2933179f8bc3
rmem reg0 reg0
wmem >var_2933179f8bc3 reg0
jmp >var_798676cf0fac_end
:var_798676cf0fac
:var_798676cf0fac_end
rmem reg0 >var_2933179f8bc3
set reg1 47
gt reg0 reg0 reg1
wmem >var_798676cf0fac reg0
jmp >var_d6d553a3eaba_end
:var_d6d553a3eaba
:var_d6d553a3eaba_end
rmem reg0 >var_2933179f8bc3
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_d6d553a3eaba reg0
rmem reg0 >var_798676cf0fac
rmem reg1 >var_d6d553a3eaba
call >and
jf reg0 >end_ce5f655c5942
jmp >var_3607a77b0cbb_end
:var_3607a77b0cbb
:var_3607a77b0cbb_end
rmem reg0 >var_2933179f8bc3
set reg1 48
call >subtract
wmem >var_3607a77b0cbb reg0
rmem reg0 >var_3607a77b0cbb
call >print_number
set reg0 10
out reg0
jmp >var_928b432c1945_end
:var_928b432c1945
:var_928b432c1945_end
set reg0 0
wmem >var_928b432c1945 reg0
jmp >var_95516aead334_end
:var_95516aead334
:var_95516aead334_end
rmem reg0 >var_0a31fae702d7
set reg1 1
call >subtract
wmem >var_95516aead334 reg0
:while_df447c917a15_begin
rmem reg0 >var_928b432c1945
rmem reg1 >var_95516aead334
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_df447c917a15_end
rmem reg0 >var_3607a77b0cbb
set reg1 10
mult reg0 reg0 reg1
wmem >var_3607a77b0cbb reg0
rmem reg0 >var_928b432c1945
add reg0 reg0 1
wmem >var_928b432c1945 reg0
jmp >while_df447c917a15_begin
:while_df447c917a15_end
rmem reg0 >var_8c0957c02fe5
rmem reg1 >var_3607a77b0cbb
add reg0 reg0 reg1
wmem >var_8c0957c02fe5 reg0
:end_ce5f655c5942
rmem reg0 >var_0a31fae702d7
add reg0 reg0 1
wmem >var_0a31fae702d7 reg0
jmp >while_6cfe62fa3a4f_begin
:while_6cfe62fa3a4f_end
rmem reg0 >var_8c0957c02fe5
call >print_number
rmem reg0 >var_8c0957c02fe5
ret
ret
:int_end
set reg0 >int
jmp >main_end
:main
jmp >var_34b60f726f41_end
:var_34b60f726f41
&n
&t
&e
&r
32
&y
&o
&u
&r
32
&n
&a
&m
&e
32
&o
&r
32
&'
&e
&x
&i
&t
&'
32
&t
&o
32
&s
&t
&o
&p
&:
32
0
:var_34b60f726f41_end
wmem >var_34b60f726f41 &E
set reg0 >var_34b60f726f41
call >print
jmp >var_8aee2c16ebd4_end
:var_8aee2c16ebd4
:var_8aee2c16ebd4_end
call >input
wmem >var_8aee2c16ebd4 reg0
rmem reg0 >var_8aee2c16ebd4
jmp >var_62e00779f1c7_end
:var_62e00779f1c7
&x
&i
&t
0
:var_62e00779f1c7_end
wmem >var_62e00779f1c7 &e
set reg1 >var_62e00779f1c7
call >str_equal
jf reg0 >end_bfc079cc6a28
ret
:end_bfc079cc6a28
jmp >var_64992ffdb789_end
:var_64992ffdb789
:var_64992ffdb789_end
call >alloc
wmem >var_64992ffdb789 reg0
rmem reg0 >var_64992ffdb789
rmem reg1 >var_8aee2c16ebd4
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_8aee2c16ebd4
add reg0 reg0 1
wmem >var_8aee2c16ebd4 reg0
rmem reg0 >var_8aee2c16ebd4
rmem reg1 >var_64992ffdb789
call >str_cat
jmp >var_e11fae057535_end
:var_e11fae057535
&y
0
:var_e11fae057535_end
wmem >var_e11fae057535 &a
set reg1 >var_e11fae057535
call >str_cat
call >println
call >main
ret
:main_end
set reg0 >main
call >main
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

