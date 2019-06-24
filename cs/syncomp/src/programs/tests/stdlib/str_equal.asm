jmp >str_equal_end
:str_equal
jmp >var_00aadfa90ab3_end
:var_00aadfa90ab3
:var_00aadfa90ab3_end
jmp >var_4bbc3403f780_end
:var_4bbc3403f780
:var_4bbc3403f780_end
wmem >var_00aadfa90ab3 reg0
wmem >var_4bbc3403f780 reg1
jmp >var_48e9eea450dc_end
:var_48e9eea450dc
:var_48e9eea450dc_end
rmem reg0 >var_00aadfa90ab3
call >str_len
wmem >var_48e9eea450dc reg0
jmp >var_4b37fd092e45_end
:var_4b37fd092e45
:var_4b37fd092e45_end
rmem reg0 >var_4bbc3403f780
call >str_len
wmem >var_4b37fd092e45 reg0
rmem reg0 >var_48e9eea450dc
rmem reg1 >var_4b37fd092e45
eq reg0 reg0 reg1
call >not
jf reg0 >end_1ac4f240dc9e
set reg0 0
ret
:end_1ac4f240dc9e
jmp >var_f20133adb170_end
:var_f20133adb170
:var_f20133adb170_end
set reg0 0
wmem >var_f20133adb170 reg0
:for_d01b278668c8_begin
rmem reg0 >var_f20133adb170
rmem reg1 >var_48e9eea450dc
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_d01b278668c8_end
jmp >var_d903b3151ef9_end
:var_d903b3151ef9
:var_d903b3151ef9_end
rmem reg0 >var_00aadfa90ab3
rmem reg1 >var_f20133adb170
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_d903b3151ef9 reg0
jmp >var_5035b60bf3ae_end
:var_5035b60bf3ae
:var_5035b60bf3ae_end
rmem reg0 >var_4bbc3403f780
rmem reg1 >var_f20133adb170
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_5035b60bf3ae reg0
rmem reg0 >var_d903b3151ef9
rmem reg1 >var_5035b60bf3ae
eq reg0 reg0 reg1
call >not
jf reg0 >end_67c92587ffe2
set reg0 0
ret
:end_67c92587ffe2
rmem reg0 >var_f20133adb170
add reg0 reg0 1
wmem >var_f20133adb170 reg0
jmp >for_d01b278668c8_begin
:for_d01b278668c8_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_be82b5a8bb84_end
:var_be82b5a8bb84
:var_be82b5a8bb84_end
set reg0 16382
wmem >var_be82b5a8bb84 reg0
:while_071d8c4e81a5_begin
rmem reg0 >var_be82b5a8bb84
rmem reg0 reg0
call >not
jf reg0 >while_071d8c4e81a5_end
rmem reg0 >var_be82b5a8bb84
set reg1 1
call >subtract
wmem >var_be82b5a8bb84 reg0
jmp >while_071d8c4e81a5_begin
:while_071d8c4e81a5_end
rmem reg0 >var_be82b5a8bb84
set reg1 2
add reg0 reg0 reg1
wmem >var_be82b5a8bb84 reg0
rmem reg0 >var_be82b5a8bb84
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_ecabc9610281_end
:var_ecabc9610281
:var_ecabc9610281_end
wmem >var_ecabc9610281 reg0
jmp >var_545c246655eb_end
:var_545c246655eb
:var_545c246655eb_end
call >alloc
wmem >var_545c246655eb reg0
jmp >var_1f1ce10bd795_end
:var_1f1ce10bd795
:var_1f1ce10bd795_end
rmem reg0 >var_545c246655eb
rmem reg1 >var_ecabc9610281
add reg0 reg0 reg1
wmem >var_1f1ce10bd795 reg0
rmem reg0 >var_1f1ce10bd795
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_545c246655eb
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_005058ebb95c_end
:var_005058ebb95c
:var_005058ebb95c_end
jmp >var_63079ab8b2fc_end
:var_63079ab8b2fc
:var_63079ab8b2fc_end
jmp >var_32c4540211ec_end
:var_32c4540211ec
:var_32c4540211ec_end
wmem >var_005058ebb95c reg0
wmem >var_63079ab8b2fc reg1
wmem >var_32c4540211ec reg2
jmp >var_77b491c2d913_end
:var_77b491c2d913
:var_77b491c2d913_end
set reg0 0
wmem >var_77b491c2d913 reg0
:while_7b30303df0cd_begin
rmem reg0 >var_77b491c2d913
rmem reg1 >var_32c4540211ec
gt reg0 reg0 reg1
call >not
jf reg0 >while_7b30303df0cd_end
jmp >var_bef0426e5695_end
:var_bef0426e5695
:var_bef0426e5695_end
rmem reg0 >var_005058ebb95c
rmem reg1 >var_77b491c2d913
add reg0 reg0 reg1
wmem >var_bef0426e5695 reg0
jmp >var_4911a84cba0e_end
:var_4911a84cba0e
:var_4911a84cba0e_end
rmem reg0 >var_63079ab8b2fc
rmem reg1 >var_77b491c2d913
add reg0 reg0 reg1
wmem >var_4911a84cba0e reg0
rmem reg0 >var_4911a84cba0e
rmem reg1 >var_bef0426e5695
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_77b491c2d913
add reg0 reg0 1
wmem >var_77b491c2d913 reg0
jmp >while_7b30303df0cd_begin
:while_7b30303df0cd_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_c4ac51f543ef_end
:var_c4ac51f543ef
:var_c4ac51f543ef_end
wmem >var_c4ac51f543ef reg0
jmp >var_e0f7e9a19314_end
:var_e0f7e9a19314
:var_e0f7e9a19314_end
set reg0 0
wmem >var_e0f7e9a19314 reg0
:while_e21a38f6e14e_begin
rmem reg0 >var_c4ac51f543ef
rmem reg0 reg0
jf reg0 >while_e21a38f6e14e_end
rmem reg0 >var_c4ac51f543ef
add reg0 reg0 1
wmem >var_c4ac51f543ef reg0
rmem reg0 >var_e0f7e9a19314
add reg0 reg0 1
wmem >var_e0f7e9a19314 reg0
jmp >while_e21a38f6e14e_begin
:while_e21a38f6e14e_end
rmem reg0 >var_e0f7e9a19314
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_2c16ca7f89e0_end
:var_2c16ca7f89e0
:var_2c16ca7f89e0_end
jmp >var_324786bab542_end
:var_324786bab542
:var_324786bab542_end
wmem >var_2c16ca7f89e0 reg0
wmem >var_324786bab542 reg1
jmp >var_1fd9d5647cce_end
:var_1fd9d5647cce
:var_1fd9d5647cce_end
rmem reg0 >var_2c16ca7f89e0
call >str_len
wmem >var_1fd9d5647cce reg0
jmp >var_05d57bf7d155_end
:var_05d57bf7d155
:var_05d57bf7d155_end
rmem reg0 >var_324786bab542
call >str_len
wmem >var_05d57bf7d155 reg0
jmp >var_1a02f5bb5d51_end
:var_1a02f5bb5d51
:var_1a02f5bb5d51_end
call >alloc
wmem >var_1a02f5bb5d51 reg0
rmem reg0 >var_2c16ca7f89e0
rmem reg1 >var_1a02f5bb5d51
rmem reg2 >var_1fd9d5647cce
call >mem_cp
jmp >var_abf1dfd82ea5_end
:var_abf1dfd82ea5
:var_abf1dfd82ea5_end
rmem reg0 >var_1a02f5bb5d51
rmem reg1 >var_1fd9d5647cce
add reg0 reg0 reg1
wmem >var_abf1dfd82ea5 reg0
rmem reg0 >var_05d57bf7d155
add reg0 reg0 1
wmem >var_05d57bf7d155 reg0
rmem reg0 >var_324786bab542
rmem reg1 >var_abf1dfd82ea5
rmem reg2 >var_05d57bf7d155
call >mem_cp
rmem reg0 >var_1a02f5bb5d51
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_4a58159193dd_end
:var_4a58159193dd
:var_4a58159193dd_end
wmem >var_4a58159193dd reg0
jmp >var_37735d5e557b_end
:var_37735d5e557b
:var_37735d5e557b_end
call >alloc
wmem >var_37735d5e557b reg0
jmp >var_99b3d17e8bb7_end
:var_99b3d17e8bb7
:var_99b3d17e8bb7_end
rmem reg0 >var_4a58159193dd
call >str_len
wmem >var_99b3d17e8bb7 reg0
jmp >var_151f2afedb3e_end
:var_151f2afedb3e
:var_151f2afedb3e_end
set reg0 0
wmem >var_151f2afedb3e reg0
:while_6caa606579f8_begin
rmem reg0 >var_151f2afedb3e
rmem reg1 >var_99b3d17e8bb7
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_6caa606579f8_end
jmp >var_698a69b63200_end
:var_698a69b63200
:var_698a69b63200_end
rmem reg0 >var_4a58159193dd
rmem reg1 >var_151f2afedb3e
add reg0 reg0 reg1
wmem >var_698a69b63200 reg0
rmem reg0 >var_698a69b63200
rmem reg0 reg0
rmem reg0 >var_698a69b63200
rmem reg0 reg0
push reg0
rmem reg0 >var_151f2afedb3e
add reg0 reg0 1
wmem >var_151f2afedb3e reg0
jmp >while_6caa606579f8_begin
:while_6caa606579f8_end
jmp >var_8afa97236865_end
:var_8afa97236865
:var_8afa97236865_end
pop reg0
wmem >var_8afa97236865 reg0
set reg0 0
wmem >var_151f2afedb3e reg0
:while_dab0d5d4f39b_begin
rmem reg0 >var_151f2afedb3e
rmem reg1 >var_99b3d17e8bb7
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_dab0d5d4f39b_end
jmp >var_367b7e818a6e_end
:var_367b7e818a6e
:var_367b7e818a6e_end
rmem reg0 >var_37735d5e557b
rmem reg1 >var_151f2afedb3e
add reg0 reg0 reg1
wmem >var_367b7e818a6e reg0
rmem reg0 >var_367b7e818a6e
rmem reg1 >var_8afa97236865
wmem reg0 reg1
rmem reg0 >var_151f2afedb3e
add reg0 reg0 1
wmem >var_151f2afedb3e reg0
pop reg0
wmem >var_8afa97236865 reg0
jmp >while_dab0d5d4f39b_begin
:while_dab0d5d4f39b_end
rmem reg0 >var_8afa97236865
rmem reg0 >var_8afa97236865
push reg0
rmem reg0 >var_37735d5e557b
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_1b9a2cb1cb40_end
:var_1b9a2cb1cb40
:var_1b9a2cb1cb40_end
set reg0 16384
wmem >var_1b9a2cb1cb40 reg0
jmp >var_227b38d870e9_end
:var_227b38d870e9
:var_227b38d870e9_end
in reg0
wmem >var_227b38d870e9 reg0
jmp >var_731cbdc8f834_end
:var_731cbdc8f834
:var_731cbdc8f834_end
rmem reg0 >var_227b38d870e9
set reg1 10
eq reg0 reg0 reg1
wmem >var_731cbdc8f834 reg0
:while_1ce39b649594_begin
rmem reg0 >var_731cbdc8f834
rmem reg1 >var_227b38d870e9
call >and
call >not
jf reg0 >while_1ce39b649594_end
rmem reg0 >var_1b9a2cb1cb40
rmem reg1 >var_227b38d870e9
wmem reg0 reg1
rmem reg0 >var_1b9a2cb1cb40
add reg0 reg0 1
wmem >var_1b9a2cb1cb40 reg0
in reg0
wmem >var_227b38d870e9 reg0
rmem reg0 >var_227b38d870e9
set reg1 10
eq reg0 reg0 reg1
wmem >var_731cbdc8f834 reg0
jmp >while_1ce39b649594_begin
:while_1ce39b649594_end
rmem reg0 >var_1b9a2cb1cb40
set reg1 0
wmem reg0 reg1
jmp >var_6f9298923585_end
:var_6f9298923585
:var_6f9298923585_end
call >alloc
wmem >var_6f9298923585 reg0
jmp >var_79cb90b1a5e2_end
:var_79cb90b1a5e2
:var_79cb90b1a5e2_end
set reg0 16384
call >str_len
wmem >var_79cb90b1a5e2 reg0
set reg0 16384
rmem reg1 >var_6f9298923585
rmem reg2 >var_79cb90b1a5e2
call >mem_cp
rmem reg0 >var_6f9298923585
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_1378b41fc876_end
:var_1378b41fc876
:var_1378b41fc876_end
wmem >var_1378b41fc876 reg0
:while_c9bb9b8058f6_begin
rmem reg0 >var_1378b41fc876
rmem reg0 reg0
jf reg0 >while_c9bb9b8058f6_end
rmem reg0 >var_1378b41fc876
rmem reg0 reg0
out reg0
rmem reg0 >var_1378b41fc876
add reg0 reg0 1
wmem >var_1378b41fc876 reg0
jmp >while_c9bb9b8058f6_begin
:while_c9bb9b8058f6_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_651715a9168a_end
:var_651715a9168a
:var_651715a9168a_end
wmem >var_651715a9168a reg0
rmem reg0 >var_651715a9168a
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_cc89b50db5dc_end
:var_cc89b50db5dc
:var_cc89b50db5dc_end
wmem >var_cc89b50db5dc reg0
rmem reg0 >var_cc89b50db5dc
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_9de37761d7cd
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_9de37761d7cd
jmp >var_2075ce3072e4_end
:var_2075ce3072e4
:var_2075ce3072e4_end
jmp >var_cbd57ca2716e_end
:var_cbd57ca2716e
:var_cbd57ca2716e_end
set reg0 0
wmem >var_cbd57ca2716e reg0
:while_f9220050ea92_begin
rmem reg0 >var_cc89b50db5dc
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_f9220050ea92_end
rmem reg0 >var_cc89b50db5dc
set reg1 10
mod reg0 reg0 reg1
wmem >var_2075ce3072e4 reg0
rmem reg0 >var_2075ce3072e4
rmem reg0 >var_2075ce3072e4
push reg0
rmem reg0 >var_cbd57ca2716e
add reg0 reg0 1
wmem >var_cbd57ca2716e reg0
rmem reg0 >var_cc89b50db5dc
set reg1 10
call >divide
wmem >var_cc89b50db5dc reg0
jmp >while_f9220050ea92_begin
:while_f9220050ea92_end
rmem reg0 >var_cc89b50db5dc
set reg1 10
mod reg0 reg0 reg1
wmem >var_2075ce3072e4 reg0
rmem reg0 >var_2075ce3072e4
rmem reg0 >var_2075ce3072e4
push reg0
rmem reg0 >var_cbd57ca2716e
add reg0 reg0 1
wmem >var_cbd57ca2716e reg0
jmp >var_7ef7c9e07acc_end
:var_7ef7c9e07acc
:var_7ef7c9e07acc_end
set reg0 0
wmem >var_7ef7c9e07acc reg0
:while_e16d41f606f7_begin
rmem reg0 >var_7ef7c9e07acc
rmem reg1 >var_cbd57ca2716e
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_e16d41f606f7_end
rmem reg0 >var_7ef7c9e07acc
set reg1 1
add reg0 reg0 reg1
wmem >var_7ef7c9e07acc reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_e16d41f606f7_begin
:while_e16d41f606f7_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_3161c784e986_end
:var_3161c784e986
:var_3161c784e986_end
set reg0 0
wmem >var_3161c784e986 reg0
:while_5d9ae249616d_begin
rmem reg0 >var_3161c784e986
rmem reg0 reg0
jf reg0 >while_5d9ae249616d_end
rmem reg0 >var_3161c784e986
add reg0 reg0 1
wmem >var_3161c784e986 reg0
rmem reg0 >var_3161c784e986
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_5d9ae249616d_begin
:while_5d9ae249616d_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_702bb83e0931_end
:var_702bb83e0931
:var_702bb83e0931_end
wmem >var_702bb83e0931 reg0
jmp >var_2e9b23316563_end
:var_2e9b23316563
:var_2e9b23316563_end
rmem reg0 >var_702bb83e0931
call >flip_str
wmem >var_2e9b23316563 reg0
jmp >var_e85c31be7078_end
:var_e85c31be7078
:var_e85c31be7078_end
rmem reg0 >var_2e9b23316563
call >str_len
wmem >var_e85c31be7078 reg0
rmem reg0 >var_e85c31be7078
set reg1 1
call >subtract
wmem >var_e85c31be7078 reg0
jmp >var_785ff392c813_end
:var_785ff392c813
:var_785ff392c813_end
set reg0 0
wmem >var_785ff392c813 reg0
jmp >var_409032d4388c_end
:var_409032d4388c
:var_409032d4388c_end
set reg0 0
wmem >var_409032d4388c reg0
:while_173b51195c1f_begin
rmem reg0 >var_785ff392c813
rmem reg1 >var_e85c31be7078
gt reg0 reg0 reg1
call >not
jf reg0 >while_173b51195c1f_end
jmp >var_9afdea0c274d_end
:var_9afdea0c274d
:var_9afdea0c274d_end
rmem reg0 >var_2e9b23316563
rmem reg1 >var_785ff392c813
add reg0 reg0 reg1
wmem >var_9afdea0c274d reg0
rmem reg0 >var_9afdea0c274d
rmem reg0 reg0
wmem >var_9afdea0c274d reg0
jmp >var_35262461db9a_end
:var_35262461db9a
:var_35262461db9a_end
rmem reg0 >var_9afdea0c274d
set reg1 47
gt reg0 reg0 reg1
wmem >var_35262461db9a reg0
jmp >var_545b29bbea33_end
:var_545b29bbea33
:var_545b29bbea33_end
rmem reg0 >var_9afdea0c274d
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_545b29bbea33 reg0
rmem reg0 >var_35262461db9a
rmem reg1 >var_545b29bbea33
call >and
jf reg0 >end_28c5e641eea3
jmp >var_018ed0d46397_end
:var_018ed0d46397
:var_018ed0d46397_end
rmem reg0 >var_9afdea0c274d
set reg1 48
call >subtract
wmem >var_018ed0d46397 reg0
rmem reg0 >var_018ed0d46397
call >print_number
set reg0 10
out reg0
jmp >var_fc012a93a76d_end
:var_fc012a93a76d
:var_fc012a93a76d_end
set reg0 0
wmem >var_fc012a93a76d reg0
jmp >var_34ef61f943f0_end
:var_34ef61f943f0
:var_34ef61f943f0_end
rmem reg0 >var_785ff392c813
set reg1 1
call >subtract
wmem >var_34ef61f943f0 reg0
:while_573a5094ee12_begin
rmem reg0 >var_fc012a93a76d
rmem reg1 >var_34ef61f943f0
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_573a5094ee12_end
rmem reg0 >var_018ed0d46397
set reg1 10
mult reg0 reg0 reg1
wmem >var_018ed0d46397 reg0
rmem reg0 >var_fc012a93a76d
add reg0 reg0 1
wmem >var_fc012a93a76d reg0
jmp >while_573a5094ee12_begin
:while_573a5094ee12_end
rmem reg0 >var_409032d4388c
rmem reg1 >var_018ed0d46397
add reg0 reg0 reg1
wmem >var_409032d4388c reg0
:end_28c5e641eea3
rmem reg0 >var_785ff392c813
add reg0 reg0 1
wmem >var_785ff392c813 reg0
jmp >while_173b51195c1f_begin
:while_173b51195c1f_end
rmem reg0 >var_409032d4388c
call >print_number
rmem reg0 >var_409032d4388c
ret
ret
:int_end
set reg0 >int
jmp >throw_end
:throw
jmp >var_1451c54b1b17_end
:var_1451c54b1b17
:var_1451c54b1b17_end
wmem >var_1451c54b1b17 reg0
rmem reg0 >var_1451c54b1b17
call >println
halt
ret
:throw_end
set reg0 >throw
jmp >str_is_eq_end
:str_is_eq
jmp >var_f46086929a5b_end
:var_f46086929a5b
:var_f46086929a5b_end
wmem >var_f46086929a5b reg0
jmp >var_621b48b38d02_end
:var_621b48b38d02
:var_621b48b38d02_end
jmp >function_c06bf8984ab4_end
:function_c06bf8984ab4
jmp >var_66015fe15c76_end
:var_66015fe15c76
:var_66015fe15c76_end
wmem >var_66015fe15c76 reg0
rmem reg0 >var_66015fe15c76
rmem reg1 >var_f46086929a5b
call >str_equal
call >not
jf reg0 >end_f5543904ce55
jmp >var_49a00749e366_end
:var_49a00749e366
&o
&t
32
&E
&q
&u
&a
&l
0
:var_49a00749e366_end
wmem >var_49a00749e366 &N
set reg0 >var_49a00749e366
call >println
:end_f5543904ce55
jmp >var_b63f7090e8c6_end
:var_b63f7090e8c6
&e
&t
&t
&i
&n
&g
32
&h
&e
&r
&e
0
:var_b63f7090e8c6_end
wmem >var_b63f7090e8c6 &G
set reg0 >var_b63f7090e8c6
call >println
ret
:function_c06bf8984ab4_end
set reg0 >function_c06bf8984ab4
wmem >var_621b48b38d02 reg0
ret
:str_is_eq_end
set reg0 >str_is_eq
jmp >assert_end
:assert
jmp >var_f4ef05634fed_end
:var_f4ef05634fed
:var_f4ef05634fed_end
jmp >var_04b51786487e_end
:var_04b51786487e
:var_04b51786487e_end
wmem >var_f4ef05634fed reg0
wmem >var_04b51786487e reg1
jmp >var_2ecdbb003846_end
:var_2ecdbb003846
&s
&s
&e
&r
&t
0
:var_2ecdbb003846_end
wmem >var_2ecdbb003846 &a
set reg0 >var_2ecdbb003846
call >println
rmem reg0 >var_04b51786487e
call >print_number
rmem reg0 >var_f4ef05634fed
rmem reg7 >var_04b51786487e
call reg7
ret
:assert_end
set reg0 >assert
jmp >var_bea6be054113_end
:var_bea6be054113
:var_bea6be054113_end
jmp >var_baaeb098c353_end
:var_baaeb098c353
&e
&s
&t
0
:var_baaeb098c353_end
wmem >var_baaeb098c353 &t
set reg0 >var_baaeb098c353
wmem >var_bea6be054113 reg0
jmp >var_e07f782cebaa_end
:var_e07f782cebaa
:var_e07f782cebaa_end
jmp >var_f259a0c43ff0_end
:var_f259a0c43ff0
&e
&s
&t
&2
0
:var_f259a0c43ff0_end
wmem >var_f259a0c43ff0 &t
set reg0 >var_f259a0c43ff0
wmem >var_e07f782cebaa reg0
jmp >var_d9831e40c45e_end
:var_d9831e40c45e
&e
&t
&t
&i
&n
&g
32
&h
&e
&r
&e
0
:var_d9831e40c45e_end
wmem >var_d9831e40c45e &G
set reg0 >var_d9831e40c45e
call >println
rmem reg0 >var_bea6be054113
rmem reg1 >var_e07f782cebaa
call >str_is_eq
call >assert
jmp >var_7b9a921f6003_end
:var_7b9a921f6003
&e
&t
&t
&i
&n
&g
32
&h
&e
&r
&e
0
:var_7b9a921f6003_end
wmem >var_7b9a921f6003 &G
set reg0 >var_7b9a921f6003
call >println
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

