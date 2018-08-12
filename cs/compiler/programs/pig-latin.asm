jmp >str_equal_end
:str_equal
jmp >var_b249738ab74b_end
:var_b249738ab74b
:var_b249738ab74b_end
jmp >var_0b0c88a6c352_end
:var_0b0c88a6c352
:var_0b0c88a6c352_end
wmem >var_b249738ab74b reg0
wmem >var_0b0c88a6c352 reg1
jmp >var_3eaf6e8cfdea_end
:var_3eaf6e8cfdea
:var_3eaf6e8cfdea_end
rmem reg0 >var_b249738ab74b
call >str_len
wmem >var_3eaf6e8cfdea reg0
jmp >var_207191c4777c_end
:var_207191c4777c
:var_207191c4777c_end
rmem reg0 >var_0b0c88a6c352
call >str_len
wmem >var_207191c4777c reg0
jmp >var_6fc4b9019bd6_end
:var_6fc4b9019bd6
:var_6fc4b9019bd6_end
rmem reg0 >var_3eaf6e8cfdea
rmem reg1 >var_207191c4777c
eq reg0 reg0 reg1
wmem >var_6fc4b9019bd6 reg0
rmem reg0 >var_6fc4b9019bd6
call >not
jf reg0 >end_c07e19f757dd
set reg0 0
ret
:end_c07e19f757dd
jmp >var_954c34097812_end
:var_954c34097812
:var_954c34097812_end
set reg0 0
wmem >var_954c34097812 reg0
:for_e314988ec625_begin
rmem reg0 >var_954c34097812
rmem reg1 >var_3eaf6e8cfdea
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_e314988ec625_end
jmp >var_80bee92fc7ba_end
:var_80bee92fc7ba
:var_80bee92fc7ba_end
rmem reg0 >var_b249738ab74b
rmem reg1 >var_954c34097812
add reg0 reg0 reg1
wmem >var_80bee92fc7ba reg0
jmp >var_afc2aea1e83b_end
:var_afc2aea1e83b
:var_afc2aea1e83b_end
rmem reg0 >var_0b0c88a6c352
rmem reg1 >var_954c34097812
add reg0 reg0 reg1
wmem >var_afc2aea1e83b reg0
jmp >var_3695d8bfb397_end
:var_3695d8bfb397
:var_3695d8bfb397_end
rmem reg0 >var_80bee92fc7ba
rmem reg0 reg0
wmem >var_3695d8bfb397 reg0
jmp >var_dd6812f24111_end
:var_dd6812f24111
:var_dd6812f24111_end
rmem reg0 >var_afc2aea1e83b
rmem reg0 reg0
wmem >var_dd6812f24111 reg0
jmp >var_707aac30527a_end
:var_707aac30527a
:var_707aac30527a_end
rmem reg0 >var_3695d8bfb397
rmem reg1 >var_dd6812f24111
eq reg0 reg0 reg1
wmem >var_707aac30527a reg0
rmem reg0 >var_707aac30527a
call >not
jf reg0 >end_936572c5eeb7
set reg0 0
ret
:end_936572c5eeb7
rmem reg0 >var_954c34097812
add reg0 reg0 1
wmem >var_954c34097812 reg0
jmp >for_e314988ec625_begin
:for_e314988ec625_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_a6e8db5eaef6_end
:var_a6e8db5eaef6
:var_a6e8db5eaef6_end
set reg0 0
wmem >var_a6e8db5eaef6 reg0
jmp >var_8d4c1cded7b1_end
:var_8d4c1cded7b1
:var_8d4c1cded7b1_end
set reg0 0
wmem >var_8d4c1cded7b1 reg0
:while_32e2dcc24263_begin
rmem reg0 >var_8d4c1cded7b1
set reg1 6
gt reg0 reg0 reg1
call >not
jf reg0 >while_32e2dcc24263_end
jmp >var_a961cb2d7054_end
:var_a961cb2d7054
:var_a961cb2d7054_end
rmem reg0 >var_a6e8db5eaef6
rmem reg0 reg0
wmem >var_a961cb2d7054 reg0
rmem reg0 >var_a961cb2d7054
call >not
jf reg0 >end_3ff83788bd63
rmem reg0 >var_8d4c1cded7b1
add reg0 reg0 1
wmem >var_8d4c1cded7b1 reg0
:end_3ff83788bd63
rmem reg0 >var_a961cb2d7054
jf reg0 >end_6f4e2c8a5b6c
set reg0 0
wmem >var_8d4c1cded7b1 reg0
:end_6f4e2c8a5b6c
rmem reg0 >var_a6e8db5eaef6
add reg0 reg0 1
wmem >var_a6e8db5eaef6 reg0
jmp >while_32e2dcc24263_begin
:while_32e2dcc24263_end
rmem reg0 >var_a6e8db5eaef6
set reg1 1
call >subtract
wmem >var_a6e8db5eaef6 reg0
rmem reg0 >var_a6e8db5eaef6
ret
ret
:alloc_end
set reg0 >alloc
jmp >mem_cp_end
:mem_cp
jmp >var_e48f21a44c74_end
:var_e48f21a44c74
:var_e48f21a44c74_end
jmp >var_3a7fb9b2503d_end
:var_3a7fb9b2503d
:var_3a7fb9b2503d_end
jmp >var_22a953dcb9fb_end
:var_22a953dcb9fb
:var_22a953dcb9fb_end
wmem >var_e48f21a44c74 reg0
wmem >var_3a7fb9b2503d reg1
wmem >var_22a953dcb9fb reg2
jmp >var_759788dced42_end
:var_759788dced42
:var_759788dced42_end
set reg0 0
wmem >var_759788dced42 reg0
:while_739ae68bde01_begin
rmem reg0 >var_759788dced42
rmem reg1 >var_22a953dcb9fb
gt reg0 reg0 reg1
call >not
jf reg0 >while_739ae68bde01_end
jmp >var_8ea23ae7ca60_end
:var_8ea23ae7ca60
:var_8ea23ae7ca60_end
rmem reg0 >var_e48f21a44c74
rmem reg1 >var_759788dced42
add reg0 reg0 reg1
wmem >var_8ea23ae7ca60 reg0
jmp >var_82aa9b162001_end
:var_82aa9b162001
:var_82aa9b162001_end
rmem reg0 >var_3a7fb9b2503d
rmem reg1 >var_759788dced42
add reg0 reg0 reg1
wmem >var_82aa9b162001 reg0
rmem reg0 >var_82aa9b162001
rmem reg1 >var_8ea23ae7ca60
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_759788dced42
add reg0 reg0 1
wmem >var_759788dced42 reg0
jmp >while_739ae68bde01_begin
:while_739ae68bde01_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_441e55db47e8_end
:var_441e55db47e8
:var_441e55db47e8_end
wmem >var_441e55db47e8 reg0
jmp >var_19c08bbb09c0_end
:var_19c08bbb09c0
:var_19c08bbb09c0_end
set reg0 0
wmem >var_19c08bbb09c0 reg0
:while_7ce5d1b1b351_begin
rmem reg0 >var_441e55db47e8
rmem reg0 reg0
jf reg0 >while_7ce5d1b1b351_end
rmem reg0 >var_441e55db47e8
add reg0 reg0 1
wmem >var_441e55db47e8 reg0
rmem reg0 >var_19c08bbb09c0
add reg0 reg0 1
wmem >var_19c08bbb09c0 reg0
jmp >while_7ce5d1b1b351_begin
:while_7ce5d1b1b351_end
rmem reg0 >var_19c08bbb09c0
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_52c07dcb76fd_end
:var_52c07dcb76fd
:var_52c07dcb76fd_end
jmp >var_9125e8f0aff2_end
:var_9125e8f0aff2
:var_9125e8f0aff2_end
wmem >var_52c07dcb76fd reg0
wmem >var_9125e8f0aff2 reg1
jmp >var_90b6021e5797_end
:var_90b6021e5797
:var_90b6021e5797_end
rmem reg0 >var_52c07dcb76fd
call >str_len
wmem >var_90b6021e5797 reg0
jmp >var_6b606804baba_end
:var_6b606804baba
:var_6b606804baba_end
rmem reg0 >var_9125e8f0aff2
call >str_len
wmem >var_6b606804baba reg0
jmp >var_76e3e6bc7a1d_end
:var_76e3e6bc7a1d
:var_76e3e6bc7a1d_end
call >alloc
wmem >var_76e3e6bc7a1d reg0
rmem reg0 >var_52c07dcb76fd
rmem reg1 >var_76e3e6bc7a1d
rmem reg2 >var_90b6021e5797
call >mem_cp
jmp >var_66bbb5e730f3_end
:var_66bbb5e730f3
:var_66bbb5e730f3_end
rmem reg0 >var_76e3e6bc7a1d
rmem reg1 >var_90b6021e5797
add reg0 reg0 reg1
wmem >var_66bbb5e730f3 reg0
rmem reg0 >var_6b606804baba
add reg0 reg0 1
wmem >var_6b606804baba reg0
rmem reg0 >var_9125e8f0aff2
rmem reg1 >var_66bbb5e730f3
rmem reg2 >var_6b606804baba
call >mem_cp
rmem reg0 >var_76e3e6bc7a1d
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_9e2ccf720679_end
:var_9e2ccf720679
:var_9e2ccf720679_end
wmem >var_9e2ccf720679 reg0
jmp >var_dc7635fdb348_end
:var_dc7635fdb348
:var_dc7635fdb348_end
call >alloc
wmem >var_dc7635fdb348 reg0
jmp >var_ffef1252d1b0_end
:var_ffef1252d1b0
:var_ffef1252d1b0_end
rmem reg0 >var_9e2ccf720679
call >str_len
wmem >var_ffef1252d1b0 reg0
jmp >var_1b62f38e4882_end
:var_1b62f38e4882
:var_1b62f38e4882_end
set reg0 0
wmem >var_1b62f38e4882 reg0
:while_122f4da5940b_begin
rmem reg0 >var_1b62f38e4882
rmem reg1 >var_ffef1252d1b0
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_122f4da5940b_end
jmp >var_d3174b28bda5_end
:var_d3174b28bda5
:var_d3174b28bda5_end
rmem reg0 >var_9e2ccf720679
rmem reg1 >var_1b62f38e4882
add reg0 reg0 reg1
wmem >var_d3174b28bda5 reg0
rmem reg0 >var_d3174b28bda5
rmem reg0 reg0
rmem reg0 >var_d3174b28bda5
rmem reg0 reg0
push reg0
rmem reg0 >var_1b62f38e4882
add reg0 reg0 1
wmem >var_1b62f38e4882 reg0
jmp >while_122f4da5940b_begin
:while_122f4da5940b_end
jmp >var_f3400002834a_end
:var_f3400002834a
:var_f3400002834a_end
pop reg0
wmem >var_f3400002834a reg0
set reg0 0
wmem >var_1b62f38e4882 reg0
:while_466f5bbcae8a_begin
rmem reg0 >var_1b62f38e4882
rmem reg1 >var_ffef1252d1b0
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_466f5bbcae8a_end
jmp >var_e9e2b41e9bf4_end
:var_e9e2b41e9bf4
:var_e9e2b41e9bf4_end
rmem reg0 >var_dc7635fdb348
rmem reg1 >var_1b62f38e4882
add reg0 reg0 reg1
wmem >var_e9e2b41e9bf4 reg0
rmem reg0 >var_e9e2b41e9bf4
rmem reg1 >var_f3400002834a
wmem reg0 reg1
rmem reg0 >var_1b62f38e4882
add reg0 reg0 1
wmem >var_1b62f38e4882 reg0
pop reg0
wmem >var_f3400002834a reg0
jmp >while_466f5bbcae8a_begin
:while_466f5bbcae8a_end
rmem reg0 >var_f3400002834a
rmem reg0 >var_f3400002834a
push reg0
rmem reg0 >var_dc7635fdb348
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_b9faadba8aa6_end
:var_b9faadba8aa6
:var_b9faadba8aa6_end
set reg0 16384
wmem >var_b9faadba8aa6 reg0
jmp >var_9df297145510_end
:var_9df297145510
:var_9df297145510_end
in reg0
wmem >var_9df297145510 reg0
jmp >var_8e228cdb9d26_end
:var_8e228cdb9d26
:var_8e228cdb9d26_end
rmem reg0 >var_9df297145510
set reg1 10
eq reg0 reg0 reg1
wmem >var_8e228cdb9d26 reg0
:while_ab4dba31a12a_begin
rmem reg0 >var_8e228cdb9d26
rmem reg1 >var_9df297145510
call >and
call >not
jf reg0 >while_ab4dba31a12a_end
rmem reg0 >var_b9faadba8aa6
rmem reg1 >var_9df297145510
wmem reg0 reg1
rmem reg0 >var_b9faadba8aa6
add reg0 reg0 1
wmem >var_b9faadba8aa6 reg0
in reg0
wmem >var_9df297145510 reg0
rmem reg0 >var_9df297145510
set reg1 10
eq reg0 reg0 reg1
wmem >var_8e228cdb9d26 reg0
jmp >while_ab4dba31a12a_begin
:while_ab4dba31a12a_end
rmem reg0 >var_b9faadba8aa6
set reg1 0
wmem reg0 reg1
jmp >var_4b60597cc7dd_end
:var_4b60597cc7dd
:var_4b60597cc7dd_end
call >alloc
wmem >var_4b60597cc7dd reg0
jmp >var_584a98c4a581_end
:var_584a98c4a581
:var_584a98c4a581_end
set reg0 16384
call >str_len
wmem >var_584a98c4a581 reg0
set reg0 16384
rmem reg1 >var_4b60597cc7dd
rmem reg2 >var_584a98c4a581
call >mem_cp
rmem reg0 >var_4b60597cc7dd
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_7d39ae54b079_end
:var_7d39ae54b079
:var_7d39ae54b079_end
wmem >var_7d39ae54b079 reg0
:while_b0df9ddde6b1_begin
rmem reg0 >var_7d39ae54b079
rmem reg0 reg0
jf reg0 >while_b0df9ddde6b1_end
rmem reg0 >var_7d39ae54b079
rmem reg0 reg0
out reg0
rmem reg0 >var_7d39ae54b079
add reg0 reg0 1
wmem >var_7d39ae54b079 reg0
jmp >while_b0df9ddde6b1_begin
:while_b0df9ddde6b1_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_51149f7890e8_end
:var_51149f7890e8
:var_51149f7890e8_end
wmem >var_51149f7890e8 reg0
rmem reg0 >var_51149f7890e8
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_7c8b7f9a75f6_end
:var_7c8b7f9a75f6
:var_7c8b7f9a75f6_end
wmem >var_7c8b7f9a75f6 reg0
rmem reg0 >var_7c8b7f9a75f6
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_2b4a28b594e7
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_2b4a28b594e7
jmp >var_0c640c754d1a_end
:var_0c640c754d1a
:var_0c640c754d1a_end
jmp >var_dd152e0c8619_end
:var_dd152e0c8619
:var_dd152e0c8619_end
set reg0 0
wmem >var_dd152e0c8619 reg0
:while_4322aa67b65a_begin
rmem reg0 >var_7c8b7f9a75f6
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_4322aa67b65a_end
rmem reg0 >var_7c8b7f9a75f6
set reg1 10
mod reg0 reg0 reg1
wmem >var_0c640c754d1a reg0
rmem reg0 >var_0c640c754d1a
rmem reg0 >var_0c640c754d1a
push reg0
rmem reg0 >var_dd152e0c8619
add reg0 reg0 1
wmem >var_dd152e0c8619 reg0
rmem reg0 >var_7c8b7f9a75f6
set reg1 10
call >divide
wmem >var_7c8b7f9a75f6 reg0
jmp >while_4322aa67b65a_begin
:while_4322aa67b65a_end
rmem reg0 >var_7c8b7f9a75f6
set reg1 10
mod reg0 reg0 reg1
wmem >var_0c640c754d1a reg0
rmem reg0 >var_0c640c754d1a
rmem reg0 >var_0c640c754d1a
push reg0
rmem reg0 >var_dd152e0c8619
add reg0 reg0 1
wmem >var_dd152e0c8619 reg0
jmp >var_efe7264fd7f8_end
:var_efe7264fd7f8
:var_efe7264fd7f8_end
set reg0 0
wmem >var_efe7264fd7f8 reg0
:while_b96b5ebe2d8c_begin
rmem reg0 >var_efe7264fd7f8
rmem reg1 >var_dd152e0c8619
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_b96b5ebe2d8c_end
rmem reg0 >var_efe7264fd7f8
set reg1 1
add reg0 reg0 reg1
wmem >var_efe7264fd7f8 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_b96b5ebe2d8c_begin
:while_b96b5ebe2d8c_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_18980184d16a_end
:var_18980184d16a
:var_18980184d16a_end
set reg0 0
wmem >var_18980184d16a reg0
:while_cde3570f343e_begin
rmem reg0 >var_18980184d16a
rmem reg0 reg0
jf reg0 >while_cde3570f343e_end
rmem reg0 >var_18980184d16a
add reg0 reg0 1
wmem >var_18980184d16a reg0
rmem reg0 >var_18980184d16a
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_cde3570f343e_begin
:while_cde3570f343e_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_368247a842a9_end
:var_368247a842a9
:var_368247a842a9_end
wmem >var_368247a842a9 reg0
jmp >var_4c5b87a65f30_end
:var_4c5b87a65f30
:var_4c5b87a65f30_end
rmem reg0 >var_368247a842a9
call >flip_str
wmem >var_4c5b87a65f30 reg0
jmp >var_48edab937810_end
:var_48edab937810
:var_48edab937810_end
rmem reg0 >var_4c5b87a65f30
call >str_len
wmem >var_48edab937810 reg0
rmem reg0 >var_48edab937810
set reg1 1
call >subtract
wmem >var_48edab937810 reg0
jmp >var_28e2ea2686bd_end
:var_28e2ea2686bd
:var_28e2ea2686bd_end
set reg0 0
wmem >var_28e2ea2686bd reg0
jmp >var_9b0bd2c0e296_end
:var_9b0bd2c0e296
:var_9b0bd2c0e296_end
set reg0 0
wmem >var_9b0bd2c0e296 reg0
:while_0a2b5b4eb65a_begin
rmem reg0 >var_28e2ea2686bd
rmem reg1 >var_48edab937810
gt reg0 reg0 reg1
call >not
jf reg0 >while_0a2b5b4eb65a_end
jmp >var_9f21c012ed4d_end
:var_9f21c012ed4d
:var_9f21c012ed4d_end
rmem reg0 >var_4c5b87a65f30
rmem reg1 >var_28e2ea2686bd
add reg0 reg0 reg1
wmem >var_9f21c012ed4d reg0
rmem reg0 >var_9f21c012ed4d
rmem reg0 reg0
wmem >var_9f21c012ed4d reg0
jmp >var_e9fe76239be1_end
:var_e9fe76239be1
:var_e9fe76239be1_end
rmem reg0 >var_9f21c012ed4d
set reg1 47
gt reg0 reg0 reg1
wmem >var_e9fe76239be1 reg0
jmp >var_1ee48cf8aa75_end
:var_1ee48cf8aa75
:var_1ee48cf8aa75_end
rmem reg0 >var_9f21c012ed4d
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_1ee48cf8aa75 reg0
rmem reg0 >var_e9fe76239be1
rmem reg1 >var_1ee48cf8aa75
call >and
jf reg0 >end_aba36d67d875
jmp >var_462317d9f8ba_end
:var_462317d9f8ba
:var_462317d9f8ba_end
rmem reg0 >var_9f21c012ed4d
set reg1 48
call >subtract
wmem >var_462317d9f8ba reg0
rmem reg0 >var_462317d9f8ba
call >print_number
set reg0 10
out reg0
jmp >var_925148b5a170_end
:var_925148b5a170
:var_925148b5a170_end
set reg0 0
wmem >var_925148b5a170 reg0
jmp >var_90d794b751a5_end
:var_90d794b751a5
:var_90d794b751a5_end
rmem reg0 >var_28e2ea2686bd
set reg1 1
call >subtract
wmem >var_90d794b751a5 reg0
:while_57f18b432c4f_begin
rmem reg0 >var_925148b5a170
rmem reg1 >var_90d794b751a5
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_57f18b432c4f_end
rmem reg0 >var_462317d9f8ba
set reg1 10
call >subtract
wmem >var_462317d9f8ba reg0
rmem reg0 >var_925148b5a170
add reg0 reg0 1
wmem >var_925148b5a170 reg0
jmp >while_57f18b432c4f_begin
:while_57f18b432c4f_end
rmem reg0 >var_9b0bd2c0e296
rmem reg1 >var_462317d9f8ba
add reg0 reg0 reg1
wmem >var_9b0bd2c0e296 reg0
:end_aba36d67d875
rmem reg0 >var_28e2ea2686bd
add reg0 reg0 1
wmem >var_28e2ea2686bd reg0
jmp >while_0a2b5b4eb65a_begin
:while_0a2b5b4eb65a_end
rmem reg0 >var_9b0bd2c0e296
call >print_number
rmem reg0 >var_9b0bd2c0e296
ret
ret
:int_end
set reg0 >int
jmp >main_end
:main
jmp >var_fc190078d6a6_end
:var_fc190078d6a6
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
:var_fc190078d6a6_end
wmem >var_fc190078d6a6 &E
set reg0 >var_fc190078d6a6
call >print
jmp >var_da3251cef7cf_end
:var_da3251cef7cf
:var_da3251cef7cf_end
call >input
wmem >var_da3251cef7cf reg0
rmem reg0 >var_da3251cef7cf
jmp >var_42fbe3afcb70_end
:var_42fbe3afcb70
&x
&i
&t
0
:var_42fbe3afcb70_end
wmem >var_42fbe3afcb70 &e
set reg1 >var_42fbe3afcb70
call >str_equal
jf reg0 >end_43c7fdb29f42
ret
:end_43c7fdb29f42
jmp >var_f08fb59a27b6_end
:var_f08fb59a27b6
:var_f08fb59a27b6_end
call >alloc
wmem >var_f08fb59a27b6 reg0
rmem reg0 >var_f08fb59a27b6
rmem reg1 >var_da3251cef7cf
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_da3251cef7cf
add reg0 reg0 1
wmem >var_da3251cef7cf reg0
rmem reg0 >var_da3251cef7cf
rmem reg1 >var_f08fb59a27b6
call >str_cat
jmp >var_e26adbd8ea59_end
:var_e26adbd8ea59
&y
0
:var_e26adbd8ea59_end
wmem >var_e26adbd8ea59 &a
set reg1 >var_e26adbd8ea59
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

