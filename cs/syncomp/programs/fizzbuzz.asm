jmp >alloc_end
:alloc
jmp >var_48221e527cf6_end
:var_48221e527cf6
:var_48221e527cf6_end
set reg0 0
wmem >var_48221e527cf6 reg0
jmp >var_1843c867099a_end
:var_1843c867099a
:var_1843c867099a_end
set reg0 0
wmem >var_1843c867099a reg0
:while_d6aeb0f1d601_begin
rmem reg0 >var_1843c867099a
set reg1 6
gt reg0 reg0 reg1
call >not
jf reg0 >while_d6aeb0f1d601_end
jmp >var_7b8f4c8afffe_end
:var_7b8f4c8afffe
:var_7b8f4c8afffe_end
rmem reg0 >var_48221e527cf6
rmem reg0 reg0
wmem >var_7b8f4c8afffe reg0
rmem reg0 >var_7b8f4c8afffe
call >not
jf reg0 >end_2bfb4b8ee7b2
rmem reg0 >var_1843c867099a
add reg0 reg0 1
wmem >var_1843c867099a reg0
:end_2bfb4b8ee7b2
rmem reg0 >var_7b8f4c8afffe
jf reg0 >end_0a8ce6bcb002
set reg0 0
wmem >var_1843c867099a reg0
:end_0a8ce6bcb002
rmem reg0 >var_48221e527cf6
add reg0 reg0 1
wmem >var_48221e527cf6 reg0
jmp >while_d6aeb0f1d601_begin
:while_d6aeb0f1d601_end
rmem reg0 >var_48221e527cf6
set reg1 1
call >subtract
wmem >var_48221e527cf6 reg0
rmem reg0 >var_48221e527cf6
ret
ret
:alloc_end
set reg0 >alloc
jmp >mem_cp_end
:mem_cp
jmp >var_233005fda1c4_end
:var_233005fda1c4
:var_233005fda1c4_end
jmp >var_c716678e55a2_end
:var_c716678e55a2
:var_c716678e55a2_end
jmp >var_0ae41dac53bd_end
:var_0ae41dac53bd
:var_0ae41dac53bd_end
wmem >var_233005fda1c4 reg0
wmem >var_c716678e55a2 reg1
wmem >var_0ae41dac53bd reg2
jmp >var_5294202d7e5a_end
:var_5294202d7e5a
:var_5294202d7e5a_end
set reg0 0
wmem >var_5294202d7e5a reg0
:while_7dbd1ba1a19c_begin
rmem reg0 >var_5294202d7e5a
rmem reg1 >var_0ae41dac53bd
gt reg0 reg0 reg1
call >not
jf reg0 >while_7dbd1ba1a19c_end
jmp >var_7f3725177c2d_end
:var_7f3725177c2d
:var_7f3725177c2d_end
rmem reg0 >var_233005fda1c4
rmem reg1 >var_5294202d7e5a
add reg0 reg0 reg1
wmem >var_7f3725177c2d reg0
jmp >var_241fe1015f53_end
:var_241fe1015f53
:var_241fe1015f53_end
rmem reg0 >var_c716678e55a2
rmem reg1 >var_5294202d7e5a
add reg0 reg0 reg1
wmem >var_241fe1015f53 reg0
rmem reg0 >var_241fe1015f53
rmem reg1 >var_7f3725177c2d
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_5294202d7e5a
add reg0 reg0 1
wmem >var_5294202d7e5a reg0
jmp >while_7dbd1ba1a19c_begin
:while_7dbd1ba1a19c_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_f46a58a1cffa_end
:var_f46a58a1cffa
:var_f46a58a1cffa_end
wmem >var_f46a58a1cffa reg0
jmp >var_0d79ca23e2d5_end
:var_0d79ca23e2d5
:var_0d79ca23e2d5_end
set reg0 0
wmem >var_0d79ca23e2d5 reg0
:while_3c467c6641e3_begin
rmem reg0 >var_f46a58a1cffa
rmem reg0 reg0
jf reg0 >while_3c467c6641e3_end
rmem reg0 >var_f46a58a1cffa
add reg0 reg0 1
wmem >var_f46a58a1cffa reg0
rmem reg0 >var_0d79ca23e2d5
add reg0 reg0 1
wmem >var_0d79ca23e2d5 reg0
jmp >while_3c467c6641e3_begin
:while_3c467c6641e3_end
rmem reg0 >var_0d79ca23e2d5
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_b1a5f415b962_end
:var_b1a5f415b962
:var_b1a5f415b962_end
jmp >var_057caf634c73_end
:var_057caf634c73
:var_057caf634c73_end
wmem >var_b1a5f415b962 reg0
wmem >var_057caf634c73 reg1
jmp >var_d84af6dd3850_end
:var_d84af6dd3850
:var_d84af6dd3850_end
rmem reg0 >var_b1a5f415b962
call >str_len
wmem >var_d84af6dd3850 reg0
jmp >var_3af268c055d9_end
:var_3af268c055d9
:var_3af268c055d9_end
rmem reg0 >var_057caf634c73
call >str_len
wmem >var_3af268c055d9 reg0
set reg0 10
out reg0
set reg0 10
out reg0
jmp >var_5b665a66bb65_end
:var_5b665a66bb65
:var_5b665a66bb65_end
call >alloc
wmem >var_5b665a66bb65 reg0
rmem reg0 >var_b1a5f415b962
rmem reg1 >var_5b665a66bb65
rmem reg2 >var_d84af6dd3850
call >mem_cp
jmp >var_16d95bd77cfd_end
:var_16d95bd77cfd
:var_16d95bd77cfd_end
rmem reg0 >var_5b665a66bb65
rmem reg1 >var_d84af6dd3850
add reg0 reg0 reg1
wmem >var_16d95bd77cfd reg0
rmem reg0 >var_3af268c055d9
add reg0 reg0 1
wmem >var_3af268c055d9 reg0
rmem reg0 >var_057caf634c73
rmem reg1 >var_16d95bd77cfd
rmem reg2 >var_3af268c055d9
call >mem_cp
rmem reg0 >var_5b665a66bb65
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_29bf3399ef71_end
:var_29bf3399ef71
:var_29bf3399ef71_end
wmem >var_29bf3399ef71 reg0
jmp >var_d3bc624b34b1_end
:var_d3bc624b34b1
:var_d3bc624b34b1_end
call >alloc
wmem >var_d3bc624b34b1 reg0
jmp >var_351429af662d_end
:var_351429af662d
:var_351429af662d_end
rmem reg0 >var_29bf3399ef71
call >str_len
wmem >var_351429af662d reg0
jmp >var_ad933385a280_end
:var_ad933385a280
:var_ad933385a280_end
set reg0 0
wmem >var_ad933385a280 reg0
:while_e18951793f5b_begin
rmem reg0 >var_ad933385a280
rmem reg1 >var_351429af662d
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_e18951793f5b_end
jmp >var_819cf14e510d_end
:var_819cf14e510d
:var_819cf14e510d_end
rmem reg0 >var_29bf3399ef71
rmem reg1 >var_ad933385a280
add reg0 reg0 reg1
wmem >var_819cf14e510d reg0
rmem reg0 >var_819cf14e510d
rmem reg0 reg0
rmem reg0 >var_819cf14e510d
rmem reg0 reg0
push reg0
rmem reg0 >var_ad933385a280
add reg0 reg0 1
wmem >var_ad933385a280 reg0
jmp >while_e18951793f5b_begin
:while_e18951793f5b_end
jmp >var_90bb83f4b390_end
:var_90bb83f4b390
:var_90bb83f4b390_end
pop reg0
wmem >var_90bb83f4b390 reg0
set reg0 0
wmem >var_ad933385a280 reg0
:while_2ee2311c8db3_begin
rmem reg0 >var_ad933385a280
rmem reg1 >var_351429af662d
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_2ee2311c8db3_end
jmp >var_f66597f0dfd3_end
:var_f66597f0dfd3
:var_f66597f0dfd3_end
rmem reg0 >var_d3bc624b34b1
rmem reg1 >var_ad933385a280
add reg0 reg0 reg1
wmem >var_f66597f0dfd3 reg0
rmem reg0 >var_f66597f0dfd3
rmem reg1 >var_90bb83f4b390
wmem reg0 reg1
rmem reg0 >var_ad933385a280
add reg0 reg0 1
wmem >var_ad933385a280 reg0
pop reg0
wmem >var_90bb83f4b390 reg0
jmp >while_2ee2311c8db3_begin
:while_2ee2311c8db3_end
rmem reg0 >var_90bb83f4b390
rmem reg0 >var_90bb83f4b390
push reg0
rmem reg0 >var_d3bc624b34b1
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_d739bdd5173b_end
:var_d739bdd5173b
:var_d739bdd5173b_end
set reg0 16384
wmem >var_d739bdd5173b reg0
jmp >var_dce7e4d617f6_end
:var_dce7e4d617f6
:var_dce7e4d617f6_end
in reg0
wmem >var_dce7e4d617f6 reg0
jmp >var_9361488f0394_end
:var_9361488f0394
:var_9361488f0394_end
rmem reg0 >var_dce7e4d617f6
set reg1 10
eq reg0 reg0 reg1
wmem >var_9361488f0394 reg0
:while_5e73595da908_begin
rmem reg0 >var_9361488f0394
call >not
rmem reg1 >var_dce7e4d617f6
call >and
jf reg0 >while_5e73595da908_end
rmem reg0 >var_d739bdd5173b
rmem reg1 >var_dce7e4d617f6
wmem reg0 reg1
rmem reg0 >var_d739bdd5173b
add reg0 reg0 1
wmem >var_d739bdd5173b reg0
in reg0
wmem >var_dce7e4d617f6 reg0
rmem reg0 >var_dce7e4d617f6
set reg1 10
eq reg0 reg0 reg1
wmem >var_9361488f0394 reg0
jmp >while_5e73595da908_begin
:while_5e73595da908_end
rmem reg0 >var_d739bdd5173b
set reg1 0
wmem reg0 reg1
jmp >var_180d694ca2db_end
:var_180d694ca2db
:var_180d694ca2db_end
call >alloc
wmem >var_180d694ca2db reg0
jmp >var_1c91ce3bd2fe_end
:var_1c91ce3bd2fe
:var_1c91ce3bd2fe_end
set reg0 16384
call >str_len
wmem >var_1c91ce3bd2fe reg0
set reg0 16384
rmem reg1 >var_180d694ca2db
rmem reg2 >var_1c91ce3bd2fe
call >mem_cp
rmem reg0 >var_180d694ca2db
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_a21781b81f0c_end
:var_a21781b81f0c
:var_a21781b81f0c_end
wmem >var_a21781b81f0c reg0
:while_620763b7176a_begin
rmem reg0 >var_a21781b81f0c
rmem reg0 reg0
jf reg0 >while_620763b7176a_end
rmem reg0 >var_a21781b81f0c
rmem reg0 reg0
out reg0
rmem reg0 >var_a21781b81f0c
add reg0 reg0 1
wmem >var_a21781b81f0c reg0
jmp >while_620763b7176a_begin
:while_620763b7176a_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_cf6f1636681d_end
:var_cf6f1636681d
:var_cf6f1636681d_end
wmem >var_cf6f1636681d reg0
rmem reg0 >var_cf6f1636681d
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_c909cdd3187c_end
:var_c909cdd3187c
:var_c909cdd3187c_end
wmem >var_c909cdd3187c reg0
rmem reg0 >var_c909cdd3187c
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_7f1307f9427d
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_7f1307f9427d
jmp >var_40e0ed166505_end
:var_40e0ed166505
:var_40e0ed166505_end
jmp >var_923e1db6d362_end
:var_923e1db6d362
:var_923e1db6d362_end
set reg0 0
wmem >var_923e1db6d362 reg0
:while_c7363153284e_begin
rmem reg0 >var_c909cdd3187c
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_c7363153284e_end
rmem reg0 >var_c909cdd3187c
set reg1 10
mod reg0 reg0 reg1
wmem >var_40e0ed166505 reg0
rmem reg0 >var_40e0ed166505
rmem reg0 >var_40e0ed166505
push reg0
rmem reg0 >var_923e1db6d362
add reg0 reg0 1
wmem >var_923e1db6d362 reg0
rmem reg0 >var_c909cdd3187c
set reg1 10
call >divide
wmem >var_c909cdd3187c reg0
jmp >while_c7363153284e_begin
:while_c7363153284e_end
rmem reg0 >var_c909cdd3187c
set reg1 10
mod reg0 reg0 reg1
wmem >var_40e0ed166505 reg0
rmem reg0 >var_40e0ed166505
rmem reg0 >var_40e0ed166505
push reg0
rmem reg0 >var_923e1db6d362
add reg0 reg0 1
wmem >var_923e1db6d362 reg0
jmp >var_b449cc5430b7_end
:var_b449cc5430b7
:var_b449cc5430b7_end
set reg0 0
wmem >var_b449cc5430b7 reg0
:while_330f4944a7ff_begin
rmem reg0 >var_b449cc5430b7
rmem reg1 >var_923e1db6d362
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_330f4944a7ff_end
rmem reg0 >var_b449cc5430b7
set reg1 1
add reg0 reg0 reg1
wmem >var_b449cc5430b7 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_330f4944a7ff_begin
:while_330f4944a7ff_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_8152fc7d13f8_end
:var_8152fc7d13f8
:var_8152fc7d13f8_end
set reg0 0
wmem >var_8152fc7d13f8 reg0
:while_cb24ee2a59df_begin
rmem reg0 >var_8152fc7d13f8
rmem reg0 reg0
jf reg0 >while_cb24ee2a59df_end
rmem reg0 >var_8152fc7d13f8
add reg0 reg0 1
wmem >var_8152fc7d13f8 reg0
rmem reg0 >var_8152fc7d13f8
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_cb24ee2a59df_begin
:while_cb24ee2a59df_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_30320a64b510_end
:var_30320a64b510
:var_30320a64b510_end
wmem >var_30320a64b510 reg0
jmp >var_27cddc898e86_end
:var_27cddc898e86
:var_27cddc898e86_end
rmem reg0 >var_30320a64b510
call >flip_str
wmem >var_27cddc898e86 reg0
jmp >var_06d2ff1c3dc1_end
:var_06d2ff1c3dc1
:var_06d2ff1c3dc1_end
rmem reg0 >var_27cddc898e86
call >str_len
wmem >var_06d2ff1c3dc1 reg0
rmem reg0 >var_06d2ff1c3dc1
set reg1 1
call >subtract
wmem >var_06d2ff1c3dc1 reg0
jmp >var_8ca098e597c0_end
:var_8ca098e597c0
:var_8ca098e597c0_end
set reg0 0
wmem >var_8ca098e597c0 reg0
jmp >var_1e31d740ce65_end
:var_1e31d740ce65
:var_1e31d740ce65_end
set reg0 0
wmem >var_1e31d740ce65 reg0
:while_f2355e306614_begin
rmem reg0 >var_8ca098e597c0
rmem reg1 >var_06d2ff1c3dc1
gt reg0 reg0 reg1
call >not
jf reg0 >while_f2355e306614_end
jmp >var_adbfd26573e6_end
:var_adbfd26573e6
:var_adbfd26573e6_end
rmem reg0 >var_27cddc898e86
rmem reg1 >var_8ca098e597c0
add reg0 reg0 reg1
wmem >var_adbfd26573e6 reg0
rmem reg0 >var_adbfd26573e6
rmem reg0 reg0
wmem >var_adbfd26573e6 reg0
jmp >var_cd0f20572842_end
:var_cd0f20572842
:var_cd0f20572842_end
rmem reg0 >var_adbfd26573e6
set reg1 47
gt reg0 reg0 reg1
wmem >var_cd0f20572842 reg0
jmp >var_52c6bb087e08_end
:var_52c6bb087e08
:var_52c6bb087e08_end
rmem reg0 >var_adbfd26573e6
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_52c6bb087e08 reg0
rmem reg0 >var_cd0f20572842
rmem reg1 >var_52c6bb087e08
call >and
jf reg0 >end_978431ba5f85
jmp >var_78cc8edc11bc_end
:var_78cc8edc11bc
:var_78cc8edc11bc_end
rmem reg0 >var_adbfd26573e6
set reg1 48
call >subtract
wmem >var_78cc8edc11bc reg0
rmem reg0 >var_78cc8edc11bc
call >print_number
set reg0 10
out reg0
jmp >var_a740b140f050_end
:var_a740b140f050
:var_a740b140f050_end
set reg0 0
wmem >var_a740b140f050 reg0
jmp >var_cdb06c8b5a7f_end
:var_cdb06c8b5a7f
:var_cdb06c8b5a7f_end
rmem reg0 >var_8ca098e597c0
set reg1 1
call >subtract
wmem >var_cdb06c8b5a7f reg0
:while_7433b947b0d1_begin
rmem reg0 >var_a740b140f050
rmem reg1 >var_cdb06c8b5a7f
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_7433b947b0d1_end
rmem reg0 >var_78cc8edc11bc
set reg1 10
call >subtract
wmem >var_78cc8edc11bc reg0
rmem reg0 >var_a740b140f050
add reg0 reg0 1
wmem >var_a740b140f050 reg0
jmp >while_7433b947b0d1_begin
:while_7433b947b0d1_end
rmem reg0 >var_1e31d740ce65
rmem reg1 >var_78cc8edc11bc
add reg0 reg0 reg1
wmem >var_1e31d740ce65 reg0
:end_978431ba5f85
rmem reg0 >var_8ca098e597c0
add reg0 reg0 1
wmem >var_8ca098e597c0 reg0
jmp >while_f2355e306614_begin
:while_f2355e306614_end
rmem reg0 >var_1e31d740ce65
call >print_number
rmem reg0 >var_1e31d740ce65
ret
ret
:int_end
set reg0 >int
jmp >var_4e061b67fdca_end
:var_4e061b67fdca
:var_4e061b67fdca_end
set reg0 1
wmem >var_4e061b67fdca reg0
:for_736ff7ed70bb_begin
rmem reg0 >var_4e061b67fdca
set reg1 40
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_736ff7ed70bb_end
jmp >var_14ee2abf570d_end
:var_14ee2abf570d
:var_14ee2abf570d_end
rmem reg0 >var_4e061b67fdca
set reg1 3
mod reg0 reg0 reg1
wmem >var_14ee2abf570d reg0
jmp >var_fe3fd5302c01_end
:var_fe3fd5302c01
:var_fe3fd5302c01_end
rmem reg0 >var_4e061b67fdca
set reg1 5
mod reg0 reg0 reg1
wmem >var_fe3fd5302c01 reg0
rmem reg0 >var_14ee2abf570d
rmem reg1 >var_fe3fd5302c01
call >and
jf reg0 >end_4e4a2eba1a75
rmem reg0 >var_4e061b67fdca
call >print_number
:end_4e4a2eba1a75
rmem reg0 >var_14ee2abf570d
call >not
jf reg0 >end_403452ee9b3a
jmp >var_6f89b3a52611_end
:var_6f89b3a52611
&i
&z
&z
0
:var_6f89b3a52611_end
wmem >var_6f89b3a52611 &f
set reg0 >var_6f89b3a52611
call >print
:end_403452ee9b3a
rmem reg0 >var_fe3fd5302c01
call >not
jf reg0 >end_6da6b17064ad
jmp >var_d7c3d2621f98_end
:var_d7c3d2621f98
&u
&z
&z
0
:var_d7c3d2621f98_end
wmem >var_d7c3d2621f98 &b
set reg0 >var_d7c3d2621f98
call >print
:end_6da6b17064ad
set reg0 10
out reg0
rmem reg0 >var_4e061b67fdca
add reg0 reg0 1
wmem >var_4e061b67fdca reg0
jmp >for_736ff7ed70bb_begin
:for_736ff7ed70bb_end
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

