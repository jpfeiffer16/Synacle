jmp >str_equal_end
:str_equal
jmp >var_ccf8d84031b3_end
:var_ccf8d84031b3
:var_ccf8d84031b3_end
jmp >var_d8cec35e5150_end
:var_d8cec35e5150
:var_d8cec35e5150_end
wmem >var_ccf8d84031b3 reg0
wmem >var_d8cec35e5150 reg1
jmp >var_32a268ccd687_end
:var_32a268ccd687
:var_32a268ccd687_end
rmem reg0 >var_ccf8d84031b3
call >str_len
wmem >var_32a268ccd687 reg0
jmp >var_a236e5816c72_end
:var_a236e5816c72
:var_a236e5816c72_end
rmem reg0 >var_d8cec35e5150
call >str_len
wmem >var_a236e5816c72 reg0
rmem reg0 >var_32a268ccd687
rmem reg1 >var_a236e5816c72
eq reg0 reg0 reg1
call >not
jf reg0 >end_7c03153f65f0
set reg0 0
ret
:end_7c03153f65f0
jmp >var_396c9a0c5cf4_end
:var_396c9a0c5cf4
:var_396c9a0c5cf4_end
set reg0 0
wmem >var_396c9a0c5cf4 reg0
:for_b13c3fcf5ae4_begin
rmem reg0 >var_396c9a0c5cf4
rmem reg1 >var_32a268ccd687
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_b13c3fcf5ae4_end
jmp >var_2de8b28a5002_end
:var_2de8b28a5002
:var_2de8b28a5002_end
rmem reg0 >var_ccf8d84031b3
rmem reg1 >var_396c9a0c5cf4
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_2de8b28a5002 reg0
jmp >var_7d2586313142_end
:var_7d2586313142
:var_7d2586313142_end
rmem reg0 >var_d8cec35e5150
rmem reg1 >var_396c9a0c5cf4
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_7d2586313142 reg0
rmem reg0 >var_2de8b28a5002
rmem reg1 >var_7d2586313142
eq reg0 reg0 reg1
call >not
jf reg0 >end_ce30da79e61d
set reg0 0
ret
:end_ce30da79e61d
rmem reg0 >var_396c9a0c5cf4
add reg0 reg0 1
wmem >var_396c9a0c5cf4 reg0
jmp >for_b13c3fcf5ae4_begin
:for_b13c3fcf5ae4_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_1ace52b6781b_end
:var_1ace52b6781b
:var_1ace52b6781b_end
set reg0 16382
wmem >var_1ace52b6781b reg0
:while_5dd768a1a807_begin
rmem reg0 >var_1ace52b6781b
rmem reg0 reg0
call >not
jf reg0 >while_5dd768a1a807_end
rmem reg0 >var_1ace52b6781b
set reg1 1
call >subtract
wmem >var_1ace52b6781b reg0
jmp >while_5dd768a1a807_begin
:while_5dd768a1a807_end
rmem reg0 >var_1ace52b6781b
set reg1 2
add reg0 reg0 reg1
wmem >var_1ace52b6781b reg0
rmem reg0 >var_1ace52b6781b
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_d811bb703309_end
:var_d811bb703309
:var_d811bb703309_end
wmem >var_d811bb703309 reg0
jmp >var_06a39c6a634b_end
:var_06a39c6a634b
:var_06a39c6a634b_end
call >alloc
wmem >var_06a39c6a634b reg0
jmp >var_cbb5918070cd_end
:var_cbb5918070cd
:var_cbb5918070cd_end
rmem reg0 >var_06a39c6a634b
rmem reg1 >var_d811bb703309
add reg0 reg0 reg1
wmem >var_cbb5918070cd reg0
rmem reg0 >var_cbb5918070cd
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_06a39c6a634b
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_7ac060e41ae6_end
:var_7ac060e41ae6
:var_7ac060e41ae6_end
jmp >var_a42a7b856a19_end
:var_a42a7b856a19
:var_a42a7b856a19_end
jmp >var_0f4466ddb81e_end
:var_0f4466ddb81e
:var_0f4466ddb81e_end
wmem >var_7ac060e41ae6 reg0
wmem >var_a42a7b856a19 reg1
wmem >var_0f4466ddb81e reg2
jmp >var_ac03c037e59f_end
:var_ac03c037e59f
:var_ac03c037e59f_end
set reg0 0
wmem >var_ac03c037e59f reg0
:while_4eaf000b230f_begin
rmem reg0 >var_ac03c037e59f
rmem reg1 >var_0f4466ddb81e
gt reg0 reg0 reg1
call >not
jf reg0 >while_4eaf000b230f_end
jmp >var_b636fc254f01_end
:var_b636fc254f01
:var_b636fc254f01_end
rmem reg0 >var_7ac060e41ae6
rmem reg1 >var_ac03c037e59f
add reg0 reg0 reg1
wmem >var_b636fc254f01 reg0
jmp >var_c9bb57caad0b_end
:var_c9bb57caad0b
:var_c9bb57caad0b_end
rmem reg0 >var_a42a7b856a19
rmem reg1 >var_ac03c037e59f
add reg0 reg0 reg1
wmem >var_c9bb57caad0b reg0
rmem reg0 >var_c9bb57caad0b
rmem reg1 >var_b636fc254f01
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_ac03c037e59f
add reg0 reg0 1
wmem >var_ac03c037e59f reg0
jmp >while_4eaf000b230f_begin
:while_4eaf000b230f_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_0bb94bcd946b_end
:var_0bb94bcd946b
:var_0bb94bcd946b_end
wmem >var_0bb94bcd946b reg0
jmp >var_de2fa03fdc3b_end
:var_de2fa03fdc3b
:var_de2fa03fdc3b_end
set reg0 0
wmem >var_de2fa03fdc3b reg0
:while_4a38fcebdcdc_begin
rmem reg0 >var_0bb94bcd946b
rmem reg0 reg0
jf reg0 >while_4a38fcebdcdc_end
rmem reg0 >var_0bb94bcd946b
add reg0 reg0 1
wmem >var_0bb94bcd946b reg0
rmem reg0 >var_de2fa03fdc3b
add reg0 reg0 1
wmem >var_de2fa03fdc3b reg0
jmp >while_4a38fcebdcdc_begin
:while_4a38fcebdcdc_end
rmem reg0 >var_de2fa03fdc3b
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_e90f7ad4bd58_end
:var_e90f7ad4bd58
:var_e90f7ad4bd58_end
jmp >var_a5c84ca6128a_end
:var_a5c84ca6128a
:var_a5c84ca6128a_end
wmem >var_e90f7ad4bd58 reg0
wmem >var_a5c84ca6128a reg1
jmp >var_b491af2f416a_end
:var_b491af2f416a
:var_b491af2f416a_end
rmem reg0 >var_e90f7ad4bd58
call >str_len
wmem >var_b491af2f416a reg0
jmp >var_613f666595af_end
:var_613f666595af
:var_613f666595af_end
rmem reg0 >var_a5c84ca6128a
call >str_len
wmem >var_613f666595af reg0
jmp >var_b9a391a5456f_end
:var_b9a391a5456f
:var_b9a391a5456f_end
call >alloc
wmem >var_b9a391a5456f reg0
rmem reg0 >var_e90f7ad4bd58
rmem reg1 >var_b9a391a5456f
rmem reg2 >var_b491af2f416a
call >mem_cp
jmp >var_a4a1593a0418_end
:var_a4a1593a0418
:var_a4a1593a0418_end
rmem reg0 >var_b9a391a5456f
rmem reg1 >var_b491af2f416a
add reg0 reg0 reg1
wmem >var_a4a1593a0418 reg0
rmem reg0 >var_613f666595af
add reg0 reg0 1
wmem >var_613f666595af reg0
rmem reg0 >var_a5c84ca6128a
rmem reg1 >var_a4a1593a0418
rmem reg2 >var_613f666595af
call >mem_cp
rmem reg0 >var_b9a391a5456f
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_10d733b41744_end
:var_10d733b41744
:var_10d733b41744_end
wmem >var_10d733b41744 reg0
jmp >var_8ee85f85ad7d_end
:var_8ee85f85ad7d
:var_8ee85f85ad7d_end
call >alloc
wmem >var_8ee85f85ad7d reg0
jmp >var_4c5521e7e99e_end
:var_4c5521e7e99e
:var_4c5521e7e99e_end
rmem reg0 >var_10d733b41744
call >str_len
wmem >var_4c5521e7e99e reg0
jmp >var_92fb872131bb_end
:var_92fb872131bb
:var_92fb872131bb_end
set reg0 0
wmem >var_92fb872131bb reg0
:while_f3c39716d555_begin
rmem reg0 >var_92fb872131bb
rmem reg1 >var_4c5521e7e99e
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_f3c39716d555_end
jmp >var_207a6d3277ec_end
:var_207a6d3277ec
:var_207a6d3277ec_end
rmem reg0 >var_10d733b41744
rmem reg1 >var_92fb872131bb
add reg0 reg0 reg1
wmem >var_207a6d3277ec reg0
rmem reg0 >var_207a6d3277ec
rmem reg0 reg0
rmem reg0 >var_207a6d3277ec
rmem reg0 reg0
push reg0
rmem reg0 >var_92fb872131bb
add reg0 reg0 1
wmem >var_92fb872131bb reg0
jmp >while_f3c39716d555_begin
:while_f3c39716d555_end
jmp >var_18f68abf7969_end
:var_18f68abf7969
:var_18f68abf7969_end
pop reg0
wmem >var_18f68abf7969 reg0
set reg0 0
wmem >var_92fb872131bb reg0
:while_a504b341cf93_begin
rmem reg0 >var_92fb872131bb
rmem reg1 >var_4c5521e7e99e
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_a504b341cf93_end
jmp >var_2bc65d0f44e1_end
:var_2bc65d0f44e1
:var_2bc65d0f44e1_end
rmem reg0 >var_8ee85f85ad7d
rmem reg1 >var_92fb872131bb
add reg0 reg0 reg1
wmem >var_2bc65d0f44e1 reg0
rmem reg0 >var_2bc65d0f44e1
rmem reg1 >var_18f68abf7969
wmem reg0 reg1
rmem reg0 >var_92fb872131bb
add reg0 reg0 1
wmem >var_92fb872131bb reg0
pop reg0
wmem >var_18f68abf7969 reg0
jmp >while_a504b341cf93_begin
:while_a504b341cf93_end
rmem reg0 >var_18f68abf7969
rmem reg0 >var_18f68abf7969
push reg0
rmem reg0 >var_8ee85f85ad7d
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_83a0c81d8da0_end
:var_83a0c81d8da0
:var_83a0c81d8da0_end
set reg0 16384
wmem >var_83a0c81d8da0 reg0
jmp >var_559e0223156d_end
:var_559e0223156d
:var_559e0223156d_end
in reg0
wmem >var_559e0223156d reg0
jmp >var_435fa22c05aa_end
:var_435fa22c05aa
:var_435fa22c05aa_end
rmem reg0 >var_559e0223156d
set reg1 10
eq reg0 reg0 reg1
wmem >var_435fa22c05aa reg0
:while_025c214a6bcd_begin
rmem reg0 >var_435fa22c05aa
rmem reg1 >var_559e0223156d
call >and
call >not
jf reg0 >while_025c214a6bcd_end
rmem reg0 >var_83a0c81d8da0
rmem reg1 >var_559e0223156d
wmem reg0 reg1
rmem reg0 >var_83a0c81d8da0
add reg0 reg0 1
wmem >var_83a0c81d8da0 reg0
in reg0
wmem >var_559e0223156d reg0
rmem reg0 >var_559e0223156d
set reg1 10
eq reg0 reg0 reg1
wmem >var_435fa22c05aa reg0
jmp >while_025c214a6bcd_begin
:while_025c214a6bcd_end
rmem reg0 >var_83a0c81d8da0
set reg1 0
wmem reg0 reg1
jmp >var_902146e76af2_end
:var_902146e76af2
:var_902146e76af2_end
call >alloc
wmem >var_902146e76af2 reg0
jmp >var_0590eab42ce1_end
:var_0590eab42ce1
:var_0590eab42ce1_end
set reg0 16384
call >str_len
wmem >var_0590eab42ce1 reg0
set reg0 16384
rmem reg1 >var_902146e76af2
rmem reg2 >var_0590eab42ce1
call >mem_cp
rmem reg0 >var_902146e76af2
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_ad59612f54c4_end
:var_ad59612f54c4
:var_ad59612f54c4_end
wmem >var_ad59612f54c4 reg0
:while_e74b688fb524_begin
rmem reg0 >var_ad59612f54c4
rmem reg0 reg0
jf reg0 >while_e74b688fb524_end
rmem reg0 >var_ad59612f54c4
rmem reg0 reg0
out reg0
rmem reg0 >var_ad59612f54c4
add reg0 reg0 1
wmem >var_ad59612f54c4 reg0
jmp >while_e74b688fb524_begin
:while_e74b688fb524_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_b781f7f341b7_end
:var_b781f7f341b7
:var_b781f7f341b7_end
wmem >var_b781f7f341b7 reg0
rmem reg0 >var_b781f7f341b7
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_97833db34d9e_end
:var_97833db34d9e
:var_97833db34d9e_end
wmem >var_97833db34d9e reg0
rmem reg0 >var_97833db34d9e
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_d35c50a2ce48
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_d35c50a2ce48
jmp >var_8b8c9baf4190_end
:var_8b8c9baf4190
:var_8b8c9baf4190_end
jmp >var_3df1344676b6_end
:var_3df1344676b6
:var_3df1344676b6_end
set reg0 0
wmem >var_3df1344676b6 reg0
:while_8f6839fdaf48_begin
rmem reg0 >var_97833db34d9e
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_8f6839fdaf48_end
rmem reg0 >var_97833db34d9e
set reg1 10
mod reg0 reg0 reg1
wmem >var_8b8c9baf4190 reg0
rmem reg0 >var_8b8c9baf4190
rmem reg0 >var_8b8c9baf4190
push reg0
rmem reg0 >var_3df1344676b6
add reg0 reg0 1
wmem >var_3df1344676b6 reg0
rmem reg0 >var_97833db34d9e
set reg1 10
call >divide
wmem >var_97833db34d9e reg0
jmp >while_8f6839fdaf48_begin
:while_8f6839fdaf48_end
rmem reg0 >var_97833db34d9e
set reg1 10
mod reg0 reg0 reg1
wmem >var_8b8c9baf4190 reg0
rmem reg0 >var_8b8c9baf4190
rmem reg0 >var_8b8c9baf4190
push reg0
rmem reg0 >var_3df1344676b6
add reg0 reg0 1
wmem >var_3df1344676b6 reg0
jmp >var_aee3bb48f2d1_end
:var_aee3bb48f2d1
:var_aee3bb48f2d1_end
set reg0 0
wmem >var_aee3bb48f2d1 reg0
:while_8ef36ce47889_begin
rmem reg0 >var_aee3bb48f2d1
rmem reg1 >var_3df1344676b6
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_8ef36ce47889_end
rmem reg0 >var_aee3bb48f2d1
set reg1 1
add reg0 reg0 reg1
wmem >var_aee3bb48f2d1 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_8ef36ce47889_begin
:while_8ef36ce47889_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_a9dd78609cf8_end
:var_a9dd78609cf8
:var_a9dd78609cf8_end
set reg0 0
wmem >var_a9dd78609cf8 reg0
:while_216d1a5cad57_begin
rmem reg0 >var_a9dd78609cf8
rmem reg0 reg0
jf reg0 >while_216d1a5cad57_end
rmem reg0 >var_a9dd78609cf8
add reg0 reg0 1
wmem >var_a9dd78609cf8 reg0
rmem reg0 >var_a9dd78609cf8
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_216d1a5cad57_begin
:while_216d1a5cad57_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_f71f89efee8a_end
:var_f71f89efee8a
:var_f71f89efee8a_end
wmem >var_f71f89efee8a reg0
jmp >var_898bed12f1e7_end
:var_898bed12f1e7
:var_898bed12f1e7_end
rmem reg0 >var_f71f89efee8a
call >flip_str
wmem >var_898bed12f1e7 reg0
jmp >var_32b4cc499a1e_end
:var_32b4cc499a1e
:var_32b4cc499a1e_end
rmem reg0 >var_898bed12f1e7
call >str_len
wmem >var_32b4cc499a1e reg0
rmem reg0 >var_32b4cc499a1e
set reg1 1
call >subtract
wmem >var_32b4cc499a1e reg0
jmp >var_5b2d55711386_end
:var_5b2d55711386
:var_5b2d55711386_end
set reg0 0
wmem >var_5b2d55711386 reg0
jmp >var_74925468e520_end
:var_74925468e520
:var_74925468e520_end
set reg0 0
wmem >var_74925468e520 reg0
:while_dc2127a87cb9_begin
rmem reg0 >var_5b2d55711386
rmem reg1 >var_32b4cc499a1e
gt reg0 reg0 reg1
call >not
jf reg0 >while_dc2127a87cb9_end
jmp >var_a6600cffd3d6_end
:var_a6600cffd3d6
:var_a6600cffd3d6_end
rmem reg0 >var_898bed12f1e7
rmem reg1 >var_5b2d55711386
add reg0 reg0 reg1
wmem >var_a6600cffd3d6 reg0
rmem reg0 >var_a6600cffd3d6
rmem reg0 reg0
wmem >var_a6600cffd3d6 reg0
jmp >var_5c9339ff96d5_end
:var_5c9339ff96d5
:var_5c9339ff96d5_end
rmem reg0 >var_a6600cffd3d6
set reg1 47
gt reg0 reg0 reg1
wmem >var_5c9339ff96d5 reg0
jmp >var_9640f7b5410a_end
:var_9640f7b5410a
:var_9640f7b5410a_end
rmem reg0 >var_a6600cffd3d6
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_9640f7b5410a reg0
rmem reg0 >var_5c9339ff96d5
rmem reg1 >var_9640f7b5410a
call >and
jf reg0 >end_d26bb2f8672d
jmp >var_5659a95ec3b2_end
:var_5659a95ec3b2
:var_5659a95ec3b2_end
rmem reg0 >var_a6600cffd3d6
set reg1 48
call >subtract
wmem >var_5659a95ec3b2 reg0
rmem reg0 >var_5659a95ec3b2
call >print_number
set reg0 10
out reg0
jmp >var_f896f0c58f55_end
:var_f896f0c58f55
:var_f896f0c58f55_end
set reg0 0
wmem >var_f896f0c58f55 reg0
jmp >var_a552df7681a3_end
:var_a552df7681a3
:var_a552df7681a3_end
rmem reg0 >var_5b2d55711386
set reg1 1
call >subtract
wmem >var_a552df7681a3 reg0
:while_b72d7b68594e_begin
rmem reg0 >var_f896f0c58f55
rmem reg1 >var_a552df7681a3
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_b72d7b68594e_end
rmem reg0 >var_5659a95ec3b2
set reg1 10
mult reg0 reg0 reg1
wmem >var_5659a95ec3b2 reg0
rmem reg0 >var_f896f0c58f55
add reg0 reg0 1
wmem >var_f896f0c58f55 reg0
jmp >while_b72d7b68594e_begin
:while_b72d7b68594e_end
rmem reg0 >var_74925468e520
rmem reg1 >var_5659a95ec3b2
add reg0 reg0 reg1
wmem >var_74925468e520 reg0
:end_d26bb2f8672d
rmem reg0 >var_5b2d55711386
add reg0 reg0 1
wmem >var_5b2d55711386 reg0
jmp >while_dc2127a87cb9_begin
:while_dc2127a87cb9_end
rmem reg0 >var_74925468e520
call >print_number
rmem reg0 >var_74925468e520
ret
ret
:int_end
set reg0 >int
jmp >var_6527aa424f31_end
:var_6527aa424f31
:var_6527aa424f31_end
set reg0 100
wmem >var_6527aa424f31 reg0
jmp >fib_end
:fib
jmp >var_dc49205e74e7_end
:var_dc49205e74e7
:var_dc49205e74e7_end
jmp >var_f837c27c2408_end
:var_f837c27c2408
:var_f837c27c2408_end
wmem >var_dc49205e74e7 reg0
wmem >var_f837c27c2408 reg1
jmp >var_a351cb1d90cb_end
:var_a351cb1d90cb
:var_a351cb1d90cb_end
rmem reg0 >var_dc49205e74e7
rmem reg1 >var_f837c27c2408
add reg0 reg0 reg1
wmem >var_a351cb1d90cb reg0
rmem reg0 >var_f837c27c2408
rmem reg1 >var_6527aa424f31
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >end_4a5f37fb03fe
rmem reg0 >var_a351cb1d90cb
call >print_number
set reg0 10
out reg0
rmem reg0 >var_f837c27c2408
rmem reg1 >var_a351cb1d90cb
call >fib
:end_4a5f37fb03fe
ret
:fib_end
set reg0 >fib
set reg0 0
set reg1 1
call >fib
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

