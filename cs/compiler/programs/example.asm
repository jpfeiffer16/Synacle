jmp >str_equal_end
:str_equal
jmp >var_4ebb70d17661_end
:var_4ebb70d17661
:var_4ebb70d17661_end
jmp >var_55e92157d7b0_end
:var_55e92157d7b0
:var_55e92157d7b0_end
wmem >var_4ebb70d17661 reg0
wmem >var_55e92157d7b0 reg1
jmp >var_10bbdb23fc70_end
:var_10bbdb23fc70
:var_10bbdb23fc70_end
rmem reg0 >var_4ebb70d17661
call >str_len
wmem >var_10bbdb23fc70 reg0
jmp >var_0006aa21f400_end
:var_0006aa21f400
:var_0006aa21f400_end
rmem reg0 >var_55e92157d7b0
call >str_len
wmem >var_0006aa21f400 reg0
jmp >var_57c0a957b16d_end
:var_57c0a957b16d
:var_57c0a957b16d_end
rmem reg0 >var_10bbdb23fc70
rmem reg1 >var_0006aa21f400
eq reg0 reg0 reg1
wmem >var_57c0a957b16d reg0
rmem reg0 >var_57c0a957b16d
call >not
jf reg0 >end_49c9eeb2d2a6
set reg0 0
ret
:end_49c9eeb2d2a6
jmp >var_28dc79ae1045_end
:var_28dc79ae1045
:var_28dc79ae1045_end
set reg0 0
wmem >var_28dc79ae1045 reg0
:for_773e1468e51e_begin
rmem reg0 >var_28dc79ae1045
rmem reg1 >var_10bbdb23fc70
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_773e1468e51e_end
jmp >var_6fc5eddf3151_end
:var_6fc5eddf3151
:var_6fc5eddf3151_end
rmem reg0 >var_4ebb70d17661
rmem reg1 >var_28dc79ae1045
add reg0 reg0 reg1
wmem >var_6fc5eddf3151 reg0
jmp >var_238657e77549_end
:var_238657e77549
:var_238657e77549_end
rmem reg0 >var_55e92157d7b0
rmem reg1 >var_28dc79ae1045
add reg0 reg0 reg1
wmem >var_238657e77549 reg0
jmp >var_41d533053853_end
:var_41d533053853
:var_41d533053853_end
rmem reg0 >var_6fc5eddf3151
rmem reg0 reg0
wmem >var_41d533053853 reg0
jmp >var_63c2c6a88287_end
:var_63c2c6a88287
:var_63c2c6a88287_end
rmem reg0 >var_238657e77549
rmem reg0 reg0
wmem >var_63c2c6a88287 reg0
jmp >var_bd056763d610_end
:var_bd056763d610
:var_bd056763d610_end
rmem reg0 >var_41d533053853
rmem reg1 >var_63c2c6a88287
eq reg0 reg0 reg1
wmem >var_bd056763d610 reg0
rmem reg0 >var_bd056763d610
call >not
jf reg0 >end_81c81fda19c3
set reg0 0
ret
:end_81c81fda19c3
rmem reg0 >var_28dc79ae1045
add reg0 reg0 1
wmem >var_28dc79ae1045 reg0
jmp >for_773e1468e51e_begin
:for_773e1468e51e_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_81af8a22022f_end
:var_81af8a22022f
:var_81af8a22022f_end
set reg0 0
wmem >var_81af8a22022f reg0
jmp >var_03150f23baaa_end
:var_03150f23baaa
:var_03150f23baaa_end
set reg0 0
wmem >var_03150f23baaa reg0
:while_246744d0970d_begin
rmem reg0 >var_03150f23baaa
set reg1 6
gt reg0 reg0 reg1
call >not
jf reg0 >while_246744d0970d_end
jmp >var_a8daf67f5da0_end
:var_a8daf67f5da0
:var_a8daf67f5da0_end
rmem reg0 >var_81af8a22022f
rmem reg0 reg0
wmem >var_a8daf67f5da0 reg0
rmem reg0 >var_a8daf67f5da0
call >not
jf reg0 >end_35109dcf61fa
rmem reg0 >var_03150f23baaa
add reg0 reg0 1
wmem >var_03150f23baaa reg0
:end_35109dcf61fa
rmem reg0 >var_a8daf67f5da0
jf reg0 >end_53832bbd523d
set reg0 0
wmem >var_03150f23baaa reg0
:end_53832bbd523d
rmem reg0 >var_81af8a22022f
add reg0 reg0 1
wmem >var_81af8a22022f reg0
jmp >while_246744d0970d_begin
:while_246744d0970d_end
rmem reg0 >var_81af8a22022f
set reg1 1
call >subtract
wmem >var_81af8a22022f reg0
rmem reg0 >var_81af8a22022f
ret
ret
:alloc_end
set reg0 >alloc
jmp >mem_cp_end
:mem_cp
jmp >var_3bf93539488b_end
:var_3bf93539488b
:var_3bf93539488b_end
jmp >var_716eb385e5b1_end
:var_716eb385e5b1
:var_716eb385e5b1_end
jmp >var_884609bf675f_end
:var_884609bf675f
:var_884609bf675f_end
wmem >var_3bf93539488b reg0
wmem >var_716eb385e5b1 reg1
wmem >var_884609bf675f reg2
jmp >var_a0c9c43cb7d7_end
:var_a0c9c43cb7d7
:var_a0c9c43cb7d7_end
set reg0 0
wmem >var_a0c9c43cb7d7 reg0
:while_e34cbc7c35cc_begin
rmem reg0 >var_a0c9c43cb7d7
rmem reg1 >var_884609bf675f
gt reg0 reg0 reg1
call >not
jf reg0 >while_e34cbc7c35cc_end
jmp >var_2cf39d36ae6f_end
:var_2cf39d36ae6f
:var_2cf39d36ae6f_end
rmem reg0 >var_3bf93539488b
rmem reg1 >var_a0c9c43cb7d7
add reg0 reg0 reg1
wmem >var_2cf39d36ae6f reg0
jmp >var_ae1fbcbdb3e5_end
:var_ae1fbcbdb3e5
:var_ae1fbcbdb3e5_end
rmem reg0 >var_716eb385e5b1
rmem reg1 >var_a0c9c43cb7d7
add reg0 reg0 reg1
wmem >var_ae1fbcbdb3e5 reg0
rmem reg0 >var_ae1fbcbdb3e5
rmem reg1 >var_2cf39d36ae6f
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_a0c9c43cb7d7
add reg0 reg0 1
wmem >var_a0c9c43cb7d7 reg0
jmp >while_e34cbc7c35cc_begin
:while_e34cbc7c35cc_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_3461d17cb5f8_end
:var_3461d17cb5f8
:var_3461d17cb5f8_end
wmem >var_3461d17cb5f8 reg0
jmp >var_a6a92c50c0fb_end
:var_a6a92c50c0fb
:var_a6a92c50c0fb_end
set reg0 0
wmem >var_a6a92c50c0fb reg0
:while_7ce73832fb77_begin
rmem reg0 >var_3461d17cb5f8
rmem reg0 reg0
jf reg0 >while_7ce73832fb77_end
rmem reg0 >var_3461d17cb5f8
add reg0 reg0 1
wmem >var_3461d17cb5f8 reg0
rmem reg0 >var_a6a92c50c0fb
add reg0 reg0 1
wmem >var_a6a92c50c0fb reg0
jmp >while_7ce73832fb77_begin
:while_7ce73832fb77_end
rmem reg0 >var_a6a92c50c0fb
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_22e69f32f022_end
:var_22e69f32f022
:var_22e69f32f022_end
jmp >var_1ebaac2d23d3_end
:var_1ebaac2d23d3
:var_1ebaac2d23d3_end
wmem >var_22e69f32f022 reg0
wmem >var_1ebaac2d23d3 reg1
jmp >var_d51e7a0d1271_end
:var_d51e7a0d1271
:var_d51e7a0d1271_end
rmem reg0 >var_22e69f32f022
call >str_len
wmem >var_d51e7a0d1271 reg0
jmp >var_729843521150_end
:var_729843521150
:var_729843521150_end
rmem reg0 >var_1ebaac2d23d3
call >str_len
wmem >var_729843521150 reg0
jmp >var_9f708da83146_end
:var_9f708da83146
:var_9f708da83146_end
call >alloc
wmem >var_9f708da83146 reg0
rmem reg0 >var_22e69f32f022
rmem reg1 >var_9f708da83146
rmem reg2 >var_d51e7a0d1271
call >mem_cp
jmp >var_ab13430e9d9d_end
:var_ab13430e9d9d
:var_ab13430e9d9d_end
rmem reg0 >var_9f708da83146
rmem reg1 >var_d51e7a0d1271
add reg0 reg0 reg1
wmem >var_ab13430e9d9d reg0
rmem reg0 >var_729843521150
add reg0 reg0 1
wmem >var_729843521150 reg0
rmem reg0 >var_1ebaac2d23d3
rmem reg1 >var_ab13430e9d9d
rmem reg2 >var_729843521150
call >mem_cp
rmem reg0 >var_9f708da83146
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_a75b84b7d458_end
:var_a75b84b7d458
:var_a75b84b7d458_end
wmem >var_a75b84b7d458 reg0
jmp >var_366ca3992d96_end
:var_366ca3992d96
:var_366ca3992d96_end
call >alloc
wmem >var_366ca3992d96 reg0
jmp >var_fe506ecb1f7a_end
:var_fe506ecb1f7a
:var_fe506ecb1f7a_end
rmem reg0 >var_a75b84b7d458
call >str_len
wmem >var_fe506ecb1f7a reg0
jmp >var_47b4c6664ab4_end
:var_47b4c6664ab4
:var_47b4c6664ab4_end
set reg0 0
wmem >var_47b4c6664ab4 reg0
:while_207f97b14721_begin
rmem reg0 >var_47b4c6664ab4
rmem reg1 >var_fe506ecb1f7a
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_207f97b14721_end
jmp >var_d984318295d1_end
:var_d984318295d1
:var_d984318295d1_end
rmem reg0 >var_a75b84b7d458
rmem reg1 >var_47b4c6664ab4
add reg0 reg0 reg1
wmem >var_d984318295d1 reg0
rmem reg0 >var_d984318295d1
rmem reg0 reg0
rmem reg0 >var_d984318295d1
rmem reg0 reg0
push reg0
rmem reg0 >var_47b4c6664ab4
add reg0 reg0 1
wmem >var_47b4c6664ab4 reg0
jmp >while_207f97b14721_begin
:while_207f97b14721_end
jmp >var_fdb5932f16a2_end
:var_fdb5932f16a2
:var_fdb5932f16a2_end
pop reg0
wmem >var_fdb5932f16a2 reg0
set reg0 0
wmem >var_47b4c6664ab4 reg0
:while_3e89dcd3b326_begin
rmem reg0 >var_47b4c6664ab4
rmem reg1 >var_fe506ecb1f7a
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_3e89dcd3b326_end
jmp >var_d548b0040f61_end
:var_d548b0040f61
:var_d548b0040f61_end
rmem reg0 >var_366ca3992d96
rmem reg1 >var_47b4c6664ab4
add reg0 reg0 reg1
wmem >var_d548b0040f61 reg0
rmem reg0 >var_d548b0040f61
rmem reg1 >var_fdb5932f16a2
wmem reg0 reg1
rmem reg0 >var_47b4c6664ab4
add reg0 reg0 1
wmem >var_47b4c6664ab4 reg0
pop reg0
wmem >var_fdb5932f16a2 reg0
jmp >while_3e89dcd3b326_begin
:while_3e89dcd3b326_end
rmem reg0 >var_fdb5932f16a2
rmem reg0 >var_fdb5932f16a2
push reg0
rmem reg0 >var_366ca3992d96
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_6fa138cd4bf6_end
:var_6fa138cd4bf6
:var_6fa138cd4bf6_end
set reg0 16384
wmem >var_6fa138cd4bf6 reg0
jmp >var_0ddf18c21d18_end
:var_0ddf18c21d18
:var_0ddf18c21d18_end
in reg0
wmem >var_0ddf18c21d18 reg0
jmp >var_7f253837ae31_end
:var_7f253837ae31
:var_7f253837ae31_end
rmem reg0 >var_0ddf18c21d18
set reg1 10
eq reg0 reg0 reg1
wmem >var_7f253837ae31 reg0
:while_d87cc0c40bc7_begin
rmem reg0 >var_7f253837ae31
rmem reg1 >var_0ddf18c21d18
call >and
call >not
jf reg0 >while_d87cc0c40bc7_end
rmem reg0 >var_6fa138cd4bf6
rmem reg1 >var_0ddf18c21d18
wmem reg0 reg1
rmem reg0 >var_6fa138cd4bf6
add reg0 reg0 1
wmem >var_6fa138cd4bf6 reg0
in reg0
wmem >var_0ddf18c21d18 reg0
rmem reg0 >var_0ddf18c21d18
set reg1 10
eq reg0 reg0 reg1
wmem >var_7f253837ae31 reg0
jmp >while_d87cc0c40bc7_begin
:while_d87cc0c40bc7_end
rmem reg0 >var_6fa138cd4bf6
set reg1 0
wmem reg0 reg1
jmp >var_8d5299a7b098_end
:var_8d5299a7b098
:var_8d5299a7b098_end
call >alloc
wmem >var_8d5299a7b098 reg0
jmp >var_0345a81c25f8_end
:var_0345a81c25f8
:var_0345a81c25f8_end
set reg0 16384
call >str_len
wmem >var_0345a81c25f8 reg0
set reg0 16384
rmem reg1 >var_8d5299a7b098
rmem reg2 >var_0345a81c25f8
call >mem_cp
rmem reg0 >var_8d5299a7b098
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_bda24c6df321_end
:var_bda24c6df321
:var_bda24c6df321_end
wmem >var_bda24c6df321 reg0
:while_9c5ce2ea8ca9_begin
rmem reg0 >var_bda24c6df321
rmem reg0 reg0
jf reg0 >while_9c5ce2ea8ca9_end
rmem reg0 >var_bda24c6df321
rmem reg0 reg0
out reg0
rmem reg0 >var_bda24c6df321
add reg0 reg0 1
wmem >var_bda24c6df321 reg0
jmp >while_9c5ce2ea8ca9_begin
:while_9c5ce2ea8ca9_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_7d84197ae017_end
:var_7d84197ae017
:var_7d84197ae017_end
wmem >var_7d84197ae017 reg0
rmem reg0 >var_7d84197ae017
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_d82a18850d63_end
:var_d82a18850d63
:var_d82a18850d63_end
wmem >var_d82a18850d63 reg0
rmem reg0 >var_d82a18850d63
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_e602b2165bb6
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_e602b2165bb6
jmp >var_c3f7e022f051_end
:var_c3f7e022f051
:var_c3f7e022f051_end
jmp >var_ac55b6d43132_end
:var_ac55b6d43132
:var_ac55b6d43132_end
set reg0 0
wmem >var_ac55b6d43132 reg0
:while_30dce24f7dec_begin
rmem reg0 >var_d82a18850d63
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_30dce24f7dec_end
rmem reg0 >var_d82a18850d63
set reg1 10
mod reg0 reg0 reg1
wmem >var_c3f7e022f051 reg0
rmem reg0 >var_c3f7e022f051
rmem reg0 >var_c3f7e022f051
push reg0
rmem reg0 >var_ac55b6d43132
add reg0 reg0 1
wmem >var_ac55b6d43132 reg0
rmem reg0 >var_d82a18850d63
set reg1 10
call >divide
wmem >var_d82a18850d63 reg0
jmp >while_30dce24f7dec_begin
:while_30dce24f7dec_end
rmem reg0 >var_d82a18850d63
set reg1 10
mod reg0 reg0 reg1
wmem >var_c3f7e022f051 reg0
rmem reg0 >var_c3f7e022f051
rmem reg0 >var_c3f7e022f051
push reg0
rmem reg0 >var_ac55b6d43132
add reg0 reg0 1
wmem >var_ac55b6d43132 reg0
jmp >var_7875d449baab_end
:var_7875d449baab
:var_7875d449baab_end
set reg0 0
wmem >var_7875d449baab reg0
:while_2c79e56facd0_begin
rmem reg0 >var_7875d449baab
rmem reg1 >var_ac55b6d43132
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_2c79e56facd0_end
rmem reg0 >var_7875d449baab
set reg1 1
add reg0 reg0 reg1
wmem >var_7875d449baab reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_2c79e56facd0_begin
:while_2c79e56facd0_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_751e9c8d79d2_end
:var_751e9c8d79d2
:var_751e9c8d79d2_end
set reg0 0
wmem >var_751e9c8d79d2 reg0
:while_b7aa1cd19ba2_begin
rmem reg0 >var_751e9c8d79d2
rmem reg0 reg0
jf reg0 >while_b7aa1cd19ba2_end
rmem reg0 >var_751e9c8d79d2
add reg0 reg0 1
wmem >var_751e9c8d79d2 reg0
rmem reg0 >var_751e9c8d79d2
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_b7aa1cd19ba2_begin
:while_b7aa1cd19ba2_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_580abe8d65f9_end
:var_580abe8d65f9
:var_580abe8d65f9_end
wmem >var_580abe8d65f9 reg0
jmp >var_14a673aa1f0c_end
:var_14a673aa1f0c
:var_14a673aa1f0c_end
rmem reg0 >var_580abe8d65f9
call >flip_str
wmem >var_14a673aa1f0c reg0
jmp >var_0662a9f18336_end
:var_0662a9f18336
:var_0662a9f18336_end
rmem reg0 >var_14a673aa1f0c
call >str_len
wmem >var_0662a9f18336 reg0
rmem reg0 >var_0662a9f18336
set reg1 1
call >subtract
wmem >var_0662a9f18336 reg0
jmp >var_943687929b0c_end
:var_943687929b0c
:var_943687929b0c_end
set reg0 0
wmem >var_943687929b0c reg0
jmp >var_bd38aff66eca_end
:var_bd38aff66eca
:var_bd38aff66eca_end
set reg0 0
wmem >var_bd38aff66eca reg0
:while_34b5b079cb07_begin
rmem reg0 >var_943687929b0c
rmem reg1 >var_0662a9f18336
gt reg0 reg0 reg1
call >not
jf reg0 >while_34b5b079cb07_end
jmp >var_e2978be6aec7_end
:var_e2978be6aec7
:var_e2978be6aec7_end
rmem reg0 >var_14a673aa1f0c
rmem reg1 >var_943687929b0c
add reg0 reg0 reg1
wmem >var_e2978be6aec7 reg0
rmem reg0 >var_e2978be6aec7
rmem reg0 reg0
wmem >var_e2978be6aec7 reg0
jmp >var_f79ae0b292db_end
:var_f79ae0b292db
:var_f79ae0b292db_end
rmem reg0 >var_e2978be6aec7
set reg1 47
gt reg0 reg0 reg1
wmem >var_f79ae0b292db reg0
jmp >var_66eb8ad1e797_end
:var_66eb8ad1e797
:var_66eb8ad1e797_end
rmem reg0 >var_e2978be6aec7
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_66eb8ad1e797 reg0
rmem reg0 >var_f79ae0b292db
rmem reg1 >var_66eb8ad1e797
call >and
jf reg0 >end_356e1c0321ad
jmp >var_a0ab1e41ccaf_end
:var_a0ab1e41ccaf
:var_a0ab1e41ccaf_end
rmem reg0 >var_e2978be6aec7
set reg1 48
call >subtract
wmem >var_a0ab1e41ccaf reg0
rmem reg0 >var_a0ab1e41ccaf
call >print_number
set reg0 10
out reg0
jmp >var_2137f72b7a16_end
:var_2137f72b7a16
:var_2137f72b7a16_end
set reg0 0
wmem >var_2137f72b7a16 reg0
jmp >var_c26ae5f9a5e1_end
:var_c26ae5f9a5e1
:var_c26ae5f9a5e1_end
rmem reg0 >var_943687929b0c
set reg1 1
call >subtract
wmem >var_c26ae5f9a5e1 reg0
:while_2bd3ece63d70_begin
rmem reg0 >var_2137f72b7a16
rmem reg1 >var_c26ae5f9a5e1
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_2bd3ece63d70_end
rmem reg0 >var_a0ab1e41ccaf
set reg1 10
call >subtract
wmem >var_a0ab1e41ccaf reg0
rmem reg0 >var_2137f72b7a16
add reg0 reg0 1
wmem >var_2137f72b7a16 reg0
jmp >while_2bd3ece63d70_begin
:while_2bd3ece63d70_end
rmem reg0 >var_bd38aff66eca
rmem reg1 >var_a0ab1e41ccaf
add reg0 reg0 reg1
wmem >var_bd38aff66eca reg0
:end_356e1c0321ad
rmem reg0 >var_943687929b0c
add reg0 reg0 1
wmem >var_943687929b0c reg0
jmp >while_34b5b079cb07_begin
:while_34b5b079cb07_end
rmem reg0 >var_bd38aff66eca
call >print_number
rmem reg0 >var_bd38aff66eca
ret
ret
:int_end
set reg0 >int
jmp >var_645f541b4dc0_end
:var_645f541b4dc0
:var_645f541b4dc0_end
jmp >function_20b7e994a45f_end
:function_20b7e994a45f
set reg0 5
set reg1 5
add reg0 reg0 reg1
set reg1 5
call >print_number
ret
:function_20b7e994a45f_end
set reg0 >function_20b7e994a45f
wmem >var_645f541b4dc0 reg0
rmem reg7 >var_645f541b4dc0
call reg7
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

