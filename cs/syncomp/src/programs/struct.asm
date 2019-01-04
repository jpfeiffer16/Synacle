jmp >str_equal_end
:str_equal
jmp >var_698f3a11c717_end
:var_698f3a11c717
:var_698f3a11c717_end
jmp >var_4a1fadbe7e6f_end
:var_4a1fadbe7e6f
:var_4a1fadbe7e6f_end
wmem >var_698f3a11c717 reg0
wmem >var_4a1fadbe7e6f reg1
jmp >var_b679d1c5c8f5_end
:var_b679d1c5c8f5
:var_b679d1c5c8f5_end
rmem reg0 >var_698f3a11c717
call >str_len
wmem >var_b679d1c5c8f5 reg0
jmp >var_c68327333380_end
:var_c68327333380
:var_c68327333380_end
rmem reg0 >var_4a1fadbe7e6f
call >str_len
wmem >var_c68327333380 reg0
rmem reg0 >var_b679d1c5c8f5
rmem reg1 >var_c68327333380
eq reg0 reg0 reg1
call >not
jf reg0 >end_ef583f09ff5c
set reg0 0
ret
:end_ef583f09ff5c
jmp >var_efdb445adae2_end
:var_efdb445adae2
:var_efdb445adae2_end
set reg0 0
wmem >var_efdb445adae2 reg0
:for_0233ac86808d_begin
rmem reg0 >var_efdb445adae2
rmem reg1 >var_b679d1c5c8f5
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_0233ac86808d_end
jmp >var_c6e9f2ea396b_end
:var_c6e9f2ea396b
:var_c6e9f2ea396b_end
rmem reg0 >var_698f3a11c717
rmem reg1 >var_efdb445adae2
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_c6e9f2ea396b reg0
jmp >var_0773d8217405_end
:var_0773d8217405
:var_0773d8217405_end
rmem reg0 >var_4a1fadbe7e6f
rmem reg1 >var_efdb445adae2
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_0773d8217405 reg0
rmem reg0 >var_c6e9f2ea396b
rmem reg1 >var_0773d8217405
eq reg0 reg0 reg1
call >not
jf reg0 >end_28ed3365f150
set reg0 0
ret
:end_28ed3365f150
rmem reg0 >var_efdb445adae2
add reg0 reg0 1
wmem >var_efdb445adae2 reg0
jmp >for_0233ac86808d_begin
:for_0233ac86808d_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_01d77b01a252_end
:var_01d77b01a252
:var_01d77b01a252_end
set reg0 16382
wmem >var_01d77b01a252 reg0
:while_d469bdd73415_begin
rmem reg0 >var_01d77b01a252
rmem reg0 reg0
call >not
jf reg0 >while_d469bdd73415_end
rmem reg0 >var_01d77b01a252
set reg1 1
call >subtract
wmem >var_01d77b01a252 reg0
jmp >while_d469bdd73415_begin
:while_d469bdd73415_end
rmem reg0 >var_01d77b01a252
set reg1 2
add reg0 reg0 reg1
wmem >var_01d77b01a252 reg0
rmem reg0 >var_01d77b01a252
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_070d42d8dce9_end
:var_070d42d8dce9
:var_070d42d8dce9_end
wmem >var_070d42d8dce9 reg0
jmp >var_72cfc8109cf3_end
:var_72cfc8109cf3
:var_72cfc8109cf3_end
call >alloc
wmem >var_72cfc8109cf3 reg0
jmp >var_23bf2128ab26_end
:var_23bf2128ab26
:var_23bf2128ab26_end
rmem reg0 >var_72cfc8109cf3
rmem reg1 >var_070d42d8dce9
add reg0 reg0 reg1
wmem >var_23bf2128ab26 reg0
rmem reg0 >var_23bf2128ab26
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_72cfc8109cf3
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_264083b3bcdb_end
:var_264083b3bcdb
:var_264083b3bcdb_end
jmp >var_6256f220ed4b_end
:var_6256f220ed4b
:var_6256f220ed4b_end
jmp >var_a9f5894a7ab9_end
:var_a9f5894a7ab9
:var_a9f5894a7ab9_end
wmem >var_264083b3bcdb reg0
wmem >var_6256f220ed4b reg1
wmem >var_a9f5894a7ab9 reg2
jmp >var_0150f1e7e12f_end
:var_0150f1e7e12f
:var_0150f1e7e12f_end
set reg0 0
wmem >var_0150f1e7e12f reg0
:while_9f375fbb326f_begin
rmem reg0 >var_0150f1e7e12f
rmem reg1 >var_a9f5894a7ab9
gt reg0 reg0 reg1
call >not
jf reg0 >while_9f375fbb326f_end
jmp >var_186867f155af_end
:var_186867f155af
:var_186867f155af_end
rmem reg0 >var_264083b3bcdb
rmem reg1 >var_0150f1e7e12f
add reg0 reg0 reg1
wmem >var_186867f155af reg0
jmp >var_7edf3ed02a66_end
:var_7edf3ed02a66
:var_7edf3ed02a66_end
rmem reg0 >var_6256f220ed4b
rmem reg1 >var_0150f1e7e12f
add reg0 reg0 reg1
wmem >var_7edf3ed02a66 reg0
rmem reg0 >var_7edf3ed02a66
rmem reg1 >var_186867f155af
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_0150f1e7e12f
add reg0 reg0 1
wmem >var_0150f1e7e12f reg0
jmp >while_9f375fbb326f_begin
:while_9f375fbb326f_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_2e1581807ff2_end
:var_2e1581807ff2
:var_2e1581807ff2_end
wmem >var_2e1581807ff2 reg0
jmp >var_600c1930f8ae_end
:var_600c1930f8ae
:var_600c1930f8ae_end
set reg0 0
wmem >var_600c1930f8ae reg0
:while_86ecb7673038_begin
rmem reg0 >var_2e1581807ff2
rmem reg0 reg0
jf reg0 >while_86ecb7673038_end
rmem reg0 >var_2e1581807ff2
add reg0 reg0 1
wmem >var_2e1581807ff2 reg0
rmem reg0 >var_600c1930f8ae
add reg0 reg0 1
wmem >var_600c1930f8ae reg0
jmp >while_86ecb7673038_begin
:while_86ecb7673038_end
rmem reg0 >var_600c1930f8ae
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_be5127a04e64_end
:var_be5127a04e64
:var_be5127a04e64_end
jmp >var_a2fbd20b8f03_end
:var_a2fbd20b8f03
:var_a2fbd20b8f03_end
wmem >var_be5127a04e64 reg0
wmem >var_a2fbd20b8f03 reg1
jmp >var_706e47a6dd7f_end
:var_706e47a6dd7f
:var_706e47a6dd7f_end
rmem reg0 >var_be5127a04e64
call >str_len
wmem >var_706e47a6dd7f reg0
jmp >var_8db11bea5993_end
:var_8db11bea5993
:var_8db11bea5993_end
rmem reg0 >var_a2fbd20b8f03
call >str_len
wmem >var_8db11bea5993 reg0
jmp >var_867278260138_end
:var_867278260138
:var_867278260138_end
call >alloc
wmem >var_867278260138 reg0
rmem reg0 >var_be5127a04e64
rmem reg1 >var_867278260138
rmem reg2 >var_706e47a6dd7f
call >mem_cp
jmp >var_066ba494a592_end
:var_066ba494a592
:var_066ba494a592_end
rmem reg0 >var_867278260138
rmem reg1 >var_706e47a6dd7f
add reg0 reg0 reg1
wmem >var_066ba494a592 reg0
rmem reg0 >var_8db11bea5993
add reg0 reg0 1
wmem >var_8db11bea5993 reg0
rmem reg0 >var_a2fbd20b8f03
rmem reg1 >var_066ba494a592
rmem reg2 >var_8db11bea5993
call >mem_cp
rmem reg0 >var_867278260138
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_165802da9068_end
:var_165802da9068
:var_165802da9068_end
wmem >var_165802da9068 reg0
jmp >var_060ad1fddebb_end
:var_060ad1fddebb
:var_060ad1fddebb_end
call >alloc
wmem >var_060ad1fddebb reg0
jmp >var_1de8b0f55ccf_end
:var_1de8b0f55ccf
:var_1de8b0f55ccf_end
rmem reg0 >var_165802da9068
call >str_len
wmem >var_1de8b0f55ccf reg0
jmp >var_31e1dec8eb8d_end
:var_31e1dec8eb8d
:var_31e1dec8eb8d_end
set reg0 0
wmem >var_31e1dec8eb8d reg0
:while_445be782fce0_begin
rmem reg0 >var_31e1dec8eb8d
rmem reg1 >var_1de8b0f55ccf
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_445be782fce0_end
jmp >var_410ca90d5a74_end
:var_410ca90d5a74
:var_410ca90d5a74_end
rmem reg0 >var_165802da9068
rmem reg1 >var_31e1dec8eb8d
add reg0 reg0 reg1
wmem >var_410ca90d5a74 reg0
rmem reg0 >var_410ca90d5a74
rmem reg0 reg0
rmem reg0 >var_410ca90d5a74
rmem reg0 reg0
push reg0
rmem reg0 >var_31e1dec8eb8d
add reg0 reg0 1
wmem >var_31e1dec8eb8d reg0
jmp >while_445be782fce0_begin
:while_445be782fce0_end
jmp >var_a09847555a07_end
:var_a09847555a07
:var_a09847555a07_end
pop reg0
wmem >var_a09847555a07 reg0
set reg0 0
wmem >var_31e1dec8eb8d reg0
:while_11b341e2e329_begin
rmem reg0 >var_31e1dec8eb8d
rmem reg1 >var_1de8b0f55ccf
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_11b341e2e329_end
jmp >var_1b0fa59727b7_end
:var_1b0fa59727b7
:var_1b0fa59727b7_end
rmem reg0 >var_060ad1fddebb
rmem reg1 >var_31e1dec8eb8d
add reg0 reg0 reg1
wmem >var_1b0fa59727b7 reg0
rmem reg0 >var_1b0fa59727b7
rmem reg1 >var_a09847555a07
wmem reg0 reg1
rmem reg0 >var_31e1dec8eb8d
add reg0 reg0 1
wmem >var_31e1dec8eb8d reg0
pop reg0
wmem >var_a09847555a07 reg0
jmp >while_11b341e2e329_begin
:while_11b341e2e329_end
rmem reg0 >var_a09847555a07
rmem reg0 >var_a09847555a07
push reg0
rmem reg0 >var_060ad1fddebb
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_59bea97edeae_end
:var_59bea97edeae
:var_59bea97edeae_end
set reg0 16384
wmem >var_59bea97edeae reg0
jmp >var_1e14b7a0b6f0_end
:var_1e14b7a0b6f0
:var_1e14b7a0b6f0_end
in reg0
wmem >var_1e14b7a0b6f0 reg0
jmp >var_b3b34880b05a_end
:var_b3b34880b05a
:var_b3b34880b05a_end
rmem reg0 >var_1e14b7a0b6f0
set reg1 10
eq reg0 reg0 reg1
wmem >var_b3b34880b05a reg0
:while_106f10f0995d_begin
rmem reg0 >var_b3b34880b05a
rmem reg1 >var_1e14b7a0b6f0
call >and
call >not
jf reg0 >while_106f10f0995d_end
rmem reg0 >var_59bea97edeae
rmem reg1 >var_1e14b7a0b6f0
wmem reg0 reg1
rmem reg0 >var_59bea97edeae
add reg0 reg0 1
wmem >var_59bea97edeae reg0
in reg0
wmem >var_1e14b7a0b6f0 reg0
rmem reg0 >var_1e14b7a0b6f0
set reg1 10
eq reg0 reg0 reg1
wmem >var_b3b34880b05a reg0
jmp >while_106f10f0995d_begin
:while_106f10f0995d_end
rmem reg0 >var_59bea97edeae
set reg1 0
wmem reg0 reg1
jmp >var_4cb92dbf13ad_end
:var_4cb92dbf13ad
:var_4cb92dbf13ad_end
call >alloc
wmem >var_4cb92dbf13ad reg0
jmp >var_3bc6dacfb56a_end
:var_3bc6dacfb56a
:var_3bc6dacfb56a_end
set reg0 16384
call >str_len
wmem >var_3bc6dacfb56a reg0
set reg0 16384
rmem reg1 >var_4cb92dbf13ad
rmem reg2 >var_3bc6dacfb56a
call >mem_cp
rmem reg0 >var_4cb92dbf13ad
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_59ca15c14941_end
:var_59ca15c14941
:var_59ca15c14941_end
wmem >var_59ca15c14941 reg0
:while_b5379fc33722_begin
rmem reg0 >var_59ca15c14941
rmem reg0 reg0
jf reg0 >while_b5379fc33722_end
rmem reg0 >var_59ca15c14941
rmem reg0 reg0
out reg0
rmem reg0 >var_59ca15c14941
add reg0 reg0 1
wmem >var_59ca15c14941 reg0
jmp >while_b5379fc33722_begin
:while_b5379fc33722_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_5323c3161df9_end
:var_5323c3161df9
:var_5323c3161df9_end
wmem >var_5323c3161df9 reg0
rmem reg0 >var_5323c3161df9
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_86294adb7cf4_end
:var_86294adb7cf4
:var_86294adb7cf4_end
wmem >var_86294adb7cf4 reg0
rmem reg0 >var_86294adb7cf4
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_e5b4fc3ab99f
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_e5b4fc3ab99f
jmp >var_42c529c2adb7_end
:var_42c529c2adb7
:var_42c529c2adb7_end
jmp >var_8958189b9a35_end
:var_8958189b9a35
:var_8958189b9a35_end
set reg0 0
wmem >var_8958189b9a35 reg0
:while_c3d5b1020fcc_begin
rmem reg0 >var_86294adb7cf4
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_c3d5b1020fcc_end
rmem reg0 >var_86294adb7cf4
set reg1 10
mod reg0 reg0 reg1
wmem >var_42c529c2adb7 reg0
rmem reg0 >var_42c529c2adb7
rmem reg0 >var_42c529c2adb7
push reg0
rmem reg0 >var_8958189b9a35
add reg0 reg0 1
wmem >var_8958189b9a35 reg0
rmem reg0 >var_86294adb7cf4
set reg1 10
call >divide
wmem >var_86294adb7cf4 reg0
jmp >while_c3d5b1020fcc_begin
:while_c3d5b1020fcc_end
rmem reg0 >var_86294adb7cf4
set reg1 10
mod reg0 reg0 reg1
wmem >var_42c529c2adb7 reg0
rmem reg0 >var_42c529c2adb7
rmem reg0 >var_42c529c2adb7
push reg0
rmem reg0 >var_8958189b9a35
add reg0 reg0 1
wmem >var_8958189b9a35 reg0
jmp >var_32e83dd0571c_end
:var_32e83dd0571c
:var_32e83dd0571c_end
set reg0 0
wmem >var_32e83dd0571c reg0
:while_1d58719c4d61_begin
rmem reg0 >var_32e83dd0571c
rmem reg1 >var_8958189b9a35
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_1d58719c4d61_end
rmem reg0 >var_32e83dd0571c
set reg1 1
add reg0 reg0 reg1
wmem >var_32e83dd0571c reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_1d58719c4d61_begin
:while_1d58719c4d61_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_e6e6a592ee27_end
:var_e6e6a592ee27
:var_e6e6a592ee27_end
set reg0 0
wmem >var_e6e6a592ee27 reg0
:while_c3bdf9ebc215_begin
rmem reg0 >var_e6e6a592ee27
rmem reg0 reg0
jf reg0 >while_c3bdf9ebc215_end
rmem reg0 >var_e6e6a592ee27
add reg0 reg0 1
wmem >var_e6e6a592ee27 reg0
rmem reg0 >var_e6e6a592ee27
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_c3bdf9ebc215_begin
:while_c3bdf9ebc215_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_349db476a6a6_end
:var_349db476a6a6
:var_349db476a6a6_end
wmem >var_349db476a6a6 reg0
jmp >var_e706e4be59fc_end
:var_e706e4be59fc
:var_e706e4be59fc_end
rmem reg0 >var_349db476a6a6
call >flip_str
wmem >var_e706e4be59fc reg0
jmp >var_b62506ed405c_end
:var_b62506ed405c
:var_b62506ed405c_end
rmem reg0 >var_e706e4be59fc
call >str_len
wmem >var_b62506ed405c reg0
rmem reg0 >var_b62506ed405c
set reg1 1
call >subtract
wmem >var_b62506ed405c reg0
jmp >var_d94175bc3622_end
:var_d94175bc3622
:var_d94175bc3622_end
set reg0 0
wmem >var_d94175bc3622 reg0
jmp >var_6abf1507a123_end
:var_6abf1507a123
:var_6abf1507a123_end
set reg0 0
wmem >var_6abf1507a123 reg0
:while_41df58275fc0_begin
rmem reg0 >var_d94175bc3622
rmem reg1 >var_b62506ed405c
gt reg0 reg0 reg1
call >not
jf reg0 >while_41df58275fc0_end
jmp >var_c6e62707e273_end
:var_c6e62707e273
:var_c6e62707e273_end
rmem reg0 >var_e706e4be59fc
rmem reg1 >var_d94175bc3622
add reg0 reg0 reg1
wmem >var_c6e62707e273 reg0
rmem reg0 >var_c6e62707e273
rmem reg0 reg0
wmem >var_c6e62707e273 reg0
jmp >var_a23063760eef_end
:var_a23063760eef
:var_a23063760eef_end
rmem reg0 >var_c6e62707e273
set reg1 47
gt reg0 reg0 reg1
wmem >var_a23063760eef reg0
jmp >var_437d91a233bb_end
:var_437d91a233bb
:var_437d91a233bb_end
rmem reg0 >var_c6e62707e273
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_437d91a233bb reg0
rmem reg0 >var_a23063760eef
rmem reg1 >var_437d91a233bb
call >and
jf reg0 >end_6102e17bf82a
jmp >var_f4067ff3ce56_end
:var_f4067ff3ce56
:var_f4067ff3ce56_end
rmem reg0 >var_c6e62707e273
set reg1 48
call >subtract
wmem >var_f4067ff3ce56 reg0
rmem reg0 >var_f4067ff3ce56
call >print_number
set reg0 10
out reg0
jmp >var_ab8cde76ee45_end
:var_ab8cde76ee45
:var_ab8cde76ee45_end
set reg0 0
wmem >var_ab8cde76ee45 reg0
jmp >var_b5cf8b7290f4_end
:var_b5cf8b7290f4
:var_b5cf8b7290f4_end
rmem reg0 >var_d94175bc3622
set reg1 1
call >subtract
wmem >var_b5cf8b7290f4 reg0
:while_f754b48917a2_begin
rmem reg0 >var_ab8cde76ee45
rmem reg1 >var_b5cf8b7290f4
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_f754b48917a2_end
rmem reg0 >var_f4067ff3ce56
set reg1 10
mult reg0 reg0 reg1
wmem >var_f4067ff3ce56 reg0
rmem reg0 >var_ab8cde76ee45
add reg0 reg0 1
wmem >var_ab8cde76ee45 reg0
jmp >while_f754b48917a2_begin
:while_f754b48917a2_end
rmem reg0 >var_6abf1507a123
rmem reg1 >var_f4067ff3ce56
add reg0 reg0 reg1
wmem >var_6abf1507a123 reg0
:end_6102e17bf82a
rmem reg0 >var_d94175bc3622
add reg0 reg0 1
wmem >var_d94175bc3622 reg0
jmp >while_41df58275fc0_begin
:while_41df58275fc0_end
rmem reg0 >var_6abf1507a123
call >print_number
rmem reg0 >var_6abf1507a123
ret
ret
:int_end
set reg0 >int
jmp >main_end
:main
jmp >var_995c52002ec9_end
:var_995c52002ec9
&o
&r
&k
&i
&n
&g
32
&2
0
:var_995c52002ec9_end
wmem >var_995c52002ec9 &w
set reg0 >var_995c52002ec9
call >println
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

