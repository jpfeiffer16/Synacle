jmp >str_equal_end
:str_equal
jmp >var_c9c01cde17ce_end
:var_c9c01cde17ce
:var_c9c01cde17ce_end
jmp >var_62ba11143574_end
:var_62ba11143574
:var_62ba11143574_end
wmem >var_c9c01cde17ce reg0
wmem >var_62ba11143574 reg1
jmp >var_021bdc4a6e39_end
:var_021bdc4a6e39
:var_021bdc4a6e39_end
rmem reg0 >var_c9c01cde17ce
call >str_len
wmem >var_021bdc4a6e39 reg0
jmp >var_fcdf82565c3e_end
:var_fcdf82565c3e
:var_fcdf82565c3e_end
rmem reg0 >var_62ba11143574
call >str_len
wmem >var_fcdf82565c3e reg0
rmem reg0 >var_021bdc4a6e39
rmem reg1 >var_fcdf82565c3e
eq reg0 reg0 reg1
call >not
jf reg0 >end_df9e5405ffae
set reg0 0
ret
:end_df9e5405ffae
jmp >var_67e9a078a2ff_end
:var_67e9a078a2ff
:var_67e9a078a2ff_end
set reg0 0
wmem >var_67e9a078a2ff reg0
:for_62461d28bb34_begin
rmem reg0 >var_67e9a078a2ff
rmem reg1 >var_021bdc4a6e39
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_62461d28bb34_end
jmp >var_eac882dc6205_end
:var_eac882dc6205
:var_eac882dc6205_end
rmem reg0 >var_c9c01cde17ce
rmem reg1 >var_67e9a078a2ff
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_eac882dc6205 reg0
jmp >var_7152ba238430_end
:var_7152ba238430
:var_7152ba238430_end
rmem reg0 >var_62ba11143574
rmem reg1 >var_67e9a078a2ff
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_7152ba238430 reg0
rmem reg0 >var_eac882dc6205
rmem reg1 >var_7152ba238430
eq reg0 reg0 reg1
call >not
jf reg0 >end_b8c6893e59a7
set reg0 0
ret
:end_b8c6893e59a7
rmem reg0 >var_67e9a078a2ff
add reg0 reg0 1
wmem >var_67e9a078a2ff reg0
jmp >for_62461d28bb34_begin
:for_62461d28bb34_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_4dff39d5dd0b_end
:var_4dff39d5dd0b
:var_4dff39d5dd0b_end
set reg0 16382
wmem >var_4dff39d5dd0b reg0
:while_05f91e06e782_begin
rmem reg0 >var_4dff39d5dd0b
rmem reg0 reg0
call >not
jf reg0 >while_05f91e06e782_end
rmem reg0 >var_4dff39d5dd0b
set reg1 1
call >subtract
wmem >var_4dff39d5dd0b reg0
jmp >while_05f91e06e782_begin
:while_05f91e06e782_end
rmem reg0 >var_4dff39d5dd0b
set reg1 2
add reg0 reg0 reg1
wmem >var_4dff39d5dd0b reg0
rmem reg0 >var_4dff39d5dd0b
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_6018f0a5489d_end
:var_6018f0a5489d
:var_6018f0a5489d_end
wmem >var_6018f0a5489d reg0
jmp >var_aa450e5bc21a_end
:var_aa450e5bc21a
:var_aa450e5bc21a_end
call >alloc
wmem >var_aa450e5bc21a reg0
jmp >var_57093b45107a_end
:var_57093b45107a
:var_57093b45107a_end
rmem reg0 >var_aa450e5bc21a
rmem reg1 >var_6018f0a5489d
add reg0 reg0 reg1
wmem >var_57093b45107a reg0
rmem reg0 >var_57093b45107a
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_aa450e5bc21a
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_ffe9441f4932_end
:var_ffe9441f4932
:var_ffe9441f4932_end
jmp >var_822cb3d61c3e_end
:var_822cb3d61c3e
:var_822cb3d61c3e_end
jmp >var_5ecd78808d57_end
:var_5ecd78808d57
:var_5ecd78808d57_end
wmem >var_ffe9441f4932 reg0
wmem >var_822cb3d61c3e reg1
wmem >var_5ecd78808d57 reg2
jmp >var_1347a0e5dab2_end
:var_1347a0e5dab2
:var_1347a0e5dab2_end
set reg0 0
wmem >var_1347a0e5dab2 reg0
:while_0c6cbd699136_begin
rmem reg0 >var_1347a0e5dab2
rmem reg1 >var_5ecd78808d57
gt reg0 reg0 reg1
call >not
jf reg0 >while_0c6cbd699136_end
jmp >var_e32aca62d123_end
:var_e32aca62d123
:var_e32aca62d123_end
rmem reg0 >var_ffe9441f4932
rmem reg1 >var_1347a0e5dab2
add reg0 reg0 reg1
wmem >var_e32aca62d123 reg0
jmp >var_d0856f684f61_end
:var_d0856f684f61
:var_d0856f684f61_end
rmem reg0 >var_822cb3d61c3e
rmem reg1 >var_1347a0e5dab2
add reg0 reg0 reg1
wmem >var_d0856f684f61 reg0
rmem reg0 >var_d0856f684f61
rmem reg1 >var_e32aca62d123
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_1347a0e5dab2
add reg0 reg0 1
wmem >var_1347a0e5dab2 reg0
jmp >while_0c6cbd699136_begin
:while_0c6cbd699136_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_e87493704de8_end
:var_e87493704de8
:var_e87493704de8_end
wmem >var_e87493704de8 reg0
jmp >var_2652dc857962_end
:var_2652dc857962
:var_2652dc857962_end
set reg0 0
wmem >var_2652dc857962 reg0
:while_4b03bc881095_begin
rmem reg0 >var_e87493704de8
rmem reg0 reg0
jf reg0 >while_4b03bc881095_end
rmem reg0 >var_e87493704de8
add reg0 reg0 1
wmem >var_e87493704de8 reg0
rmem reg0 >var_2652dc857962
add reg0 reg0 1
wmem >var_2652dc857962 reg0
jmp >while_4b03bc881095_begin
:while_4b03bc881095_end
rmem reg0 >var_2652dc857962
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_f2d3b52e4c24_end
:var_f2d3b52e4c24
:var_f2d3b52e4c24_end
jmp >var_715e4b506cb8_end
:var_715e4b506cb8
:var_715e4b506cb8_end
wmem >var_f2d3b52e4c24 reg0
wmem >var_715e4b506cb8 reg1
jmp >var_eed7f0a46c65_end
:var_eed7f0a46c65
:var_eed7f0a46c65_end
rmem reg0 >var_f2d3b52e4c24
call >str_len
wmem >var_eed7f0a46c65 reg0
jmp >var_44524e0230c7_end
:var_44524e0230c7
:var_44524e0230c7_end
rmem reg0 >var_715e4b506cb8
call >str_len
wmem >var_44524e0230c7 reg0
jmp >var_fb260ff4a769_end
:var_fb260ff4a769
:var_fb260ff4a769_end
call >alloc
wmem >var_fb260ff4a769 reg0
rmem reg0 >var_f2d3b52e4c24
rmem reg1 >var_fb260ff4a769
rmem reg2 >var_eed7f0a46c65
call >mem_cp
jmp >var_aaa631dbb225_end
:var_aaa631dbb225
:var_aaa631dbb225_end
rmem reg0 >var_fb260ff4a769
rmem reg1 >var_eed7f0a46c65
add reg0 reg0 reg1
wmem >var_aaa631dbb225 reg0
rmem reg0 >var_44524e0230c7
add reg0 reg0 1
wmem >var_44524e0230c7 reg0
rmem reg0 >var_715e4b506cb8
rmem reg1 >var_aaa631dbb225
rmem reg2 >var_44524e0230c7
call >mem_cp
rmem reg0 >var_fb260ff4a769
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_f1b8e5753bf2_end
:var_f1b8e5753bf2
:var_f1b8e5753bf2_end
wmem >var_f1b8e5753bf2 reg0
jmp >var_f790d88587c4_end
:var_f790d88587c4
:var_f790d88587c4_end
call >alloc
wmem >var_f790d88587c4 reg0
jmp >var_a90d945f9dbb_end
:var_a90d945f9dbb
:var_a90d945f9dbb_end
rmem reg0 >var_f1b8e5753bf2
call >str_len
wmem >var_a90d945f9dbb reg0
jmp >var_a9206715b007_end
:var_a9206715b007
:var_a9206715b007_end
set reg0 0
wmem >var_a9206715b007 reg0
:while_4a8be09c5f90_begin
rmem reg0 >var_a9206715b007
rmem reg1 >var_a90d945f9dbb
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_4a8be09c5f90_end
jmp >var_2b314dcf477f_end
:var_2b314dcf477f
:var_2b314dcf477f_end
rmem reg0 >var_f1b8e5753bf2
rmem reg1 >var_a9206715b007
add reg0 reg0 reg1
wmem >var_2b314dcf477f reg0
rmem reg0 >var_2b314dcf477f
rmem reg0 reg0
rmem reg0 >var_2b314dcf477f
rmem reg0 reg0
push reg0
rmem reg0 >var_a9206715b007
add reg0 reg0 1
wmem >var_a9206715b007 reg0
jmp >while_4a8be09c5f90_begin
:while_4a8be09c5f90_end
jmp >var_30028f729acc_end
:var_30028f729acc
:var_30028f729acc_end
pop reg0
wmem >var_30028f729acc reg0
set reg0 0
wmem >var_a9206715b007 reg0
:while_4ba20a4dd624_begin
rmem reg0 >var_a9206715b007
rmem reg1 >var_a90d945f9dbb
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_4ba20a4dd624_end
jmp >var_930122ce937a_end
:var_930122ce937a
:var_930122ce937a_end
rmem reg0 >var_f790d88587c4
rmem reg1 >var_a9206715b007
add reg0 reg0 reg1
wmem >var_930122ce937a reg0
rmem reg0 >var_930122ce937a
rmem reg1 >var_30028f729acc
wmem reg0 reg1
rmem reg0 >var_a9206715b007
add reg0 reg0 1
wmem >var_a9206715b007 reg0
pop reg0
wmem >var_30028f729acc reg0
jmp >while_4ba20a4dd624_begin
:while_4ba20a4dd624_end
rmem reg0 >var_30028f729acc
rmem reg0 >var_30028f729acc
push reg0
rmem reg0 >var_f790d88587c4
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_7fa7f38cac3c_end
:var_7fa7f38cac3c
:var_7fa7f38cac3c_end
set reg0 16384
wmem >var_7fa7f38cac3c reg0
jmp >var_28bb40b3e875_end
:var_28bb40b3e875
:var_28bb40b3e875_end
in reg0
wmem >var_28bb40b3e875 reg0
jmp >var_67d019750538_end
:var_67d019750538
:var_67d019750538_end
rmem reg0 >var_28bb40b3e875
set reg1 10
eq reg0 reg0 reg1
wmem >var_67d019750538 reg0
:while_82eb814c3dbc_begin
rmem reg0 >var_67d019750538
rmem reg1 >var_28bb40b3e875
call >and
call >not
jf reg0 >while_82eb814c3dbc_end
rmem reg0 >var_7fa7f38cac3c
rmem reg1 >var_28bb40b3e875
wmem reg0 reg1
rmem reg0 >var_7fa7f38cac3c
add reg0 reg0 1
wmem >var_7fa7f38cac3c reg0
in reg0
wmem >var_28bb40b3e875 reg0
rmem reg0 >var_28bb40b3e875
set reg1 10
eq reg0 reg0 reg1
wmem >var_67d019750538 reg0
jmp >while_82eb814c3dbc_begin
:while_82eb814c3dbc_end
rmem reg0 >var_7fa7f38cac3c
set reg1 0
wmem reg0 reg1
jmp >var_3755c214ffa5_end
:var_3755c214ffa5
:var_3755c214ffa5_end
call >alloc
wmem >var_3755c214ffa5 reg0
jmp >var_151b3625be48_end
:var_151b3625be48
:var_151b3625be48_end
set reg0 16384
call >str_len
wmem >var_151b3625be48 reg0
set reg0 16384
rmem reg1 >var_3755c214ffa5
rmem reg2 >var_151b3625be48
call >mem_cp
rmem reg0 >var_3755c214ffa5
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_3abd65a960fa_end
:var_3abd65a960fa
:var_3abd65a960fa_end
wmem >var_3abd65a960fa reg0
:while_f46c42210b8e_begin
rmem reg0 >var_3abd65a960fa
rmem reg0 reg0
jf reg0 >while_f46c42210b8e_end
rmem reg0 >var_3abd65a960fa
rmem reg0 reg0
out reg0
rmem reg0 >var_3abd65a960fa
add reg0 reg0 1
wmem >var_3abd65a960fa reg0
jmp >while_f46c42210b8e_begin
:while_f46c42210b8e_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_751dfb466407_end
:var_751dfb466407
:var_751dfb466407_end
wmem >var_751dfb466407 reg0
rmem reg0 >var_751dfb466407
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_3f85740b7dbb_end
:var_3f85740b7dbb
:var_3f85740b7dbb_end
wmem >var_3f85740b7dbb reg0
rmem reg0 >var_3f85740b7dbb
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_c0831617fea5
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_c0831617fea5
jmp >var_5ccf359846b0_end
:var_5ccf359846b0
:var_5ccf359846b0_end
jmp >var_86f26371b9f6_end
:var_86f26371b9f6
:var_86f26371b9f6_end
set reg0 0
wmem >var_86f26371b9f6 reg0
:while_2c7f5fb868ce_begin
rmem reg0 >var_3f85740b7dbb
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_2c7f5fb868ce_end
rmem reg0 >var_3f85740b7dbb
set reg1 10
mod reg0 reg0 reg1
wmem >var_5ccf359846b0 reg0
rmem reg0 >var_5ccf359846b0
rmem reg0 >var_5ccf359846b0
push reg0
rmem reg0 >var_86f26371b9f6
add reg0 reg0 1
wmem >var_86f26371b9f6 reg0
rmem reg0 >var_3f85740b7dbb
set reg1 10
call >divide
wmem >var_3f85740b7dbb reg0
jmp >while_2c7f5fb868ce_begin
:while_2c7f5fb868ce_end
rmem reg0 >var_3f85740b7dbb
set reg1 10
mod reg0 reg0 reg1
wmem >var_5ccf359846b0 reg0
rmem reg0 >var_5ccf359846b0
rmem reg0 >var_5ccf359846b0
push reg0
rmem reg0 >var_86f26371b9f6
add reg0 reg0 1
wmem >var_86f26371b9f6 reg0
jmp >var_b7a9442920ef_end
:var_b7a9442920ef
:var_b7a9442920ef_end
set reg0 0
wmem >var_b7a9442920ef reg0
:while_e59919a38374_begin
rmem reg0 >var_b7a9442920ef
rmem reg1 >var_86f26371b9f6
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_e59919a38374_end
rmem reg0 >var_b7a9442920ef
set reg1 1
add reg0 reg0 reg1
wmem >var_b7a9442920ef reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_e59919a38374_begin
:while_e59919a38374_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_8a76ac12f3aa_end
:var_8a76ac12f3aa
:var_8a76ac12f3aa_end
set reg0 0
wmem >var_8a76ac12f3aa reg0
:while_0093cf085381_begin
rmem reg0 >var_8a76ac12f3aa
rmem reg0 reg0
jf reg0 >while_0093cf085381_end
rmem reg0 >var_8a76ac12f3aa
add reg0 reg0 1
wmem >var_8a76ac12f3aa reg0
rmem reg0 >var_8a76ac12f3aa
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_0093cf085381_begin
:while_0093cf085381_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_f7be30c2b044_end
:var_f7be30c2b044
:var_f7be30c2b044_end
wmem >var_f7be30c2b044 reg0
jmp >var_bcf2e2b664e0_end
:var_bcf2e2b664e0
:var_bcf2e2b664e0_end
rmem reg0 >var_f7be30c2b044
call >flip_str
wmem >var_bcf2e2b664e0 reg0
jmp >var_92619eb7467f_end
:var_92619eb7467f
:var_92619eb7467f_end
rmem reg0 >var_bcf2e2b664e0
call >str_len
wmem >var_92619eb7467f reg0
rmem reg0 >var_92619eb7467f
set reg1 1
call >subtract
wmem >var_92619eb7467f reg0
jmp >var_cf924570dd1c_end
:var_cf924570dd1c
:var_cf924570dd1c_end
set reg0 0
wmem >var_cf924570dd1c reg0
jmp >var_e38e0e88c70c_end
:var_e38e0e88c70c
:var_e38e0e88c70c_end
set reg0 0
wmem >var_e38e0e88c70c reg0
:while_dae494a051a7_begin
rmem reg0 >var_cf924570dd1c
rmem reg1 >var_92619eb7467f
gt reg0 reg0 reg1
call >not
jf reg0 >while_dae494a051a7_end
jmp >var_2077b8f150fe_end
:var_2077b8f150fe
:var_2077b8f150fe_end
rmem reg0 >var_bcf2e2b664e0
rmem reg1 >var_cf924570dd1c
add reg0 reg0 reg1
wmem >var_2077b8f150fe reg0
rmem reg0 >var_2077b8f150fe
rmem reg0 reg0
wmem >var_2077b8f150fe reg0
jmp >var_26745fe7c3ce_end
:var_26745fe7c3ce
:var_26745fe7c3ce_end
rmem reg0 >var_2077b8f150fe
set reg1 47
gt reg0 reg0 reg1
wmem >var_26745fe7c3ce reg0
jmp >var_744140dfe4a3_end
:var_744140dfe4a3
:var_744140dfe4a3_end
rmem reg0 >var_2077b8f150fe
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_744140dfe4a3 reg0
rmem reg0 >var_26745fe7c3ce
rmem reg1 >var_744140dfe4a3
call >and
jf reg0 >end_20273e822b55
jmp >var_33acc02aa3a6_end
:var_33acc02aa3a6
:var_33acc02aa3a6_end
rmem reg0 >var_2077b8f150fe
set reg1 48
call >subtract
wmem >var_33acc02aa3a6 reg0
rmem reg0 >var_33acc02aa3a6
call >print_number
set reg0 10
out reg0
jmp >var_3c935febcc3f_end
:var_3c935febcc3f
:var_3c935febcc3f_end
set reg0 0
wmem >var_3c935febcc3f reg0
jmp >var_c440dc34204a_end
:var_c440dc34204a
:var_c440dc34204a_end
rmem reg0 >var_cf924570dd1c
set reg1 1
call >subtract
wmem >var_c440dc34204a reg0
:while_3a100919470f_begin
rmem reg0 >var_3c935febcc3f
rmem reg1 >var_c440dc34204a
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_3a100919470f_end
rmem reg0 >var_33acc02aa3a6
set reg1 10
mult reg0 reg0 reg1
wmem >var_33acc02aa3a6 reg0
rmem reg0 >var_3c935febcc3f
add reg0 reg0 1
wmem >var_3c935febcc3f reg0
jmp >while_3a100919470f_begin
:while_3a100919470f_end
rmem reg0 >var_e38e0e88c70c
rmem reg1 >var_33acc02aa3a6
add reg0 reg0 reg1
wmem >var_e38e0e88c70c reg0
:end_20273e822b55
rmem reg0 >var_cf924570dd1c
add reg0 reg0 1
wmem >var_cf924570dd1c reg0
jmp >while_dae494a051a7_begin
:while_dae494a051a7_end
rmem reg0 >var_e38e0e88c70c
call >print_number
rmem reg0 >var_e38e0e88c70c
ret
ret
:int_end
set reg0 >int
jmp >var_b105425371e9_end
:var_b105425371e9
:var_b105425371e9_end
set reg0 1
wmem >var_b105425371e9 reg0
:for_0e87c21e0944_begin
rmem reg0 >var_b105425371e9
set reg1 40
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_0e87c21e0944_end
jmp >var_e229a2f192de_end
:var_e229a2f192de
:var_e229a2f192de_end
rmem reg0 >var_b105425371e9
set reg1 3
mod reg0 reg0 reg1
wmem >var_e229a2f192de reg0
jmp >var_18b37ada0be7_end
:var_18b37ada0be7
:var_18b37ada0be7_end
rmem reg0 >var_b105425371e9
set reg1 5
mod reg0 reg0 reg1
wmem >var_18b37ada0be7 reg0
rmem reg0 >var_e229a2f192de
rmem reg1 >var_18b37ada0be7
call >and
jf reg0 >end_183919a05653
rmem reg0 >var_b105425371e9
call >print_number
:end_183919a05653
rmem reg0 >var_e229a2f192de
call >not
jf reg0 >end_50f0bcf3c161
jmp >var_48d6ad6f5972_end
:var_48d6ad6f5972
&i
&z
&z
0
:var_48d6ad6f5972_end
wmem >var_48d6ad6f5972 &f
set reg0 >var_48d6ad6f5972
call >print
:end_50f0bcf3c161
rmem reg0 >var_18b37ada0be7
call >not
jf reg0 >end_683af59c5975
jmp >var_9d5f2a7f2404_end
:var_9d5f2a7f2404
&u
&z
&z
0
:var_9d5f2a7f2404_end
wmem >var_9d5f2a7f2404 &b
set reg0 >var_9d5f2a7f2404
call >print
:end_683af59c5975
set reg0 10
out reg0
rmem reg0 >var_b105425371e9
add reg0 reg0 1
wmem >var_b105425371e9 reg0
jmp >for_0e87c21e0944_begin
:for_0e87c21e0944_end
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

