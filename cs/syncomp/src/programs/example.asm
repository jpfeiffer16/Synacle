jmp >str_equal_end
:str_equal
jmp >var_195b80cd1cb3_end
:var_195b80cd1cb3
:var_195b80cd1cb3_end
jmp >var_bfb0e3f5453c_end
:var_bfb0e3f5453c
:var_bfb0e3f5453c_end
wmem >var_195b80cd1cb3 reg0
wmem >var_bfb0e3f5453c reg1
jmp >var_3b9148d6348d_end
:var_3b9148d6348d
:var_3b9148d6348d_end
rmem reg0 >var_195b80cd1cb3
call >str_len
wmem >var_3b9148d6348d reg0
jmp >var_645b35b08853_end
:var_645b35b08853
:var_645b35b08853_end
rmem reg0 >var_bfb0e3f5453c
call >str_len
wmem >var_645b35b08853 reg0
rmem reg0 >var_3b9148d6348d
rmem reg1 >var_645b35b08853
eq reg0 reg0 reg1
call >not
jf reg0 >end_8245a4504877
set reg0 0
ret
:end_8245a4504877
jmp >var_ea8939e62472_end
:var_ea8939e62472
:var_ea8939e62472_end
set reg0 0
wmem >var_ea8939e62472 reg0
:for_a30f86c80d54_begin
rmem reg0 >var_ea8939e62472
rmem reg1 >var_3b9148d6348d
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_a30f86c80d54_end
jmp >var_f74eeacf409b_end
:var_f74eeacf409b
:var_f74eeacf409b_end
rmem reg0 >var_195b80cd1cb3
rmem reg1 >var_ea8939e62472
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_f74eeacf409b reg0
jmp >var_ce4f9c2e83a8_end
:var_ce4f9c2e83a8
:var_ce4f9c2e83a8_end
rmem reg0 >var_bfb0e3f5453c
rmem reg1 >var_ea8939e62472
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_ce4f9c2e83a8 reg0
rmem reg0 >var_f74eeacf409b
rmem reg1 >var_ce4f9c2e83a8
eq reg0 reg0 reg1
call >not
jf reg0 >end_f354fb0c918c
set reg0 0
ret
:end_f354fb0c918c
rmem reg0 >var_ea8939e62472
add reg0 reg0 1
wmem >var_ea8939e62472 reg0
jmp >for_a30f86c80d54_begin
:for_a30f86c80d54_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_fead89f6968d_end
:var_fead89f6968d
:var_fead89f6968d_end
set reg0 16382
wmem >var_fead89f6968d reg0
:while_972934528b9d_begin
rmem reg0 >var_fead89f6968d
rmem reg0 reg0
call >not
jf reg0 >while_972934528b9d_end
rmem reg0 >var_fead89f6968d
set reg1 1
call >subtract
wmem >var_fead89f6968d reg0
jmp >while_972934528b9d_begin
:while_972934528b9d_end
rmem reg0 >var_fead89f6968d
set reg1 2
add reg0 reg0 reg1
wmem >var_fead89f6968d reg0
rmem reg0 >var_fead89f6968d
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_922be7449136_end
:var_922be7449136
:var_922be7449136_end
wmem >var_922be7449136 reg0
jmp >var_45b121a21474_end
:var_45b121a21474
:var_45b121a21474_end
call >alloc
wmem >var_45b121a21474 reg0
jmp >var_517c7e3af0e5_end
:var_517c7e3af0e5
:var_517c7e3af0e5_end
rmem reg0 >var_45b121a21474
rmem reg1 >var_922be7449136
add reg0 reg0 reg1
wmem >var_517c7e3af0e5 reg0
rmem reg0 >var_517c7e3af0e5
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_45b121a21474
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_8b3fd7521734_end
:var_8b3fd7521734
:var_8b3fd7521734_end
jmp >var_f619067e35bc_end
:var_f619067e35bc
:var_f619067e35bc_end
jmp >var_db48a613ec4c_end
:var_db48a613ec4c
:var_db48a613ec4c_end
wmem >var_8b3fd7521734 reg0
wmem >var_f619067e35bc reg1
wmem >var_db48a613ec4c reg2
jmp >var_6b7906d3ecfa_end
:var_6b7906d3ecfa
:var_6b7906d3ecfa_end
set reg0 0
wmem >var_6b7906d3ecfa reg0
:while_d7fefac2dc1d_begin
rmem reg0 >var_6b7906d3ecfa
rmem reg1 >var_db48a613ec4c
gt reg0 reg0 reg1
call >not
jf reg0 >while_d7fefac2dc1d_end
jmp >var_f2c73ae08996_end
:var_f2c73ae08996
:var_f2c73ae08996_end
rmem reg0 >var_8b3fd7521734
rmem reg1 >var_6b7906d3ecfa
add reg0 reg0 reg1
wmem >var_f2c73ae08996 reg0
jmp >var_fb6738999f74_end
:var_fb6738999f74
:var_fb6738999f74_end
rmem reg0 >var_f619067e35bc
rmem reg1 >var_6b7906d3ecfa
add reg0 reg0 reg1
wmem >var_fb6738999f74 reg0
rmem reg0 >var_fb6738999f74
rmem reg1 >var_f2c73ae08996
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_6b7906d3ecfa
add reg0 reg0 1
wmem >var_6b7906d3ecfa reg0
jmp >while_d7fefac2dc1d_begin
:while_d7fefac2dc1d_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_1c0658aa4fd3_end
:var_1c0658aa4fd3
:var_1c0658aa4fd3_end
wmem >var_1c0658aa4fd3 reg0
jmp >var_ef96170ad648_end
:var_ef96170ad648
:var_ef96170ad648_end
set reg0 0
wmem >var_ef96170ad648 reg0
:while_5c5e7cda3b5c_begin
rmem reg0 >var_1c0658aa4fd3
rmem reg0 reg0
jf reg0 >while_5c5e7cda3b5c_end
rmem reg0 >var_1c0658aa4fd3
add reg0 reg0 1
wmem >var_1c0658aa4fd3 reg0
rmem reg0 >var_ef96170ad648
add reg0 reg0 1
wmem >var_ef96170ad648 reg0
jmp >while_5c5e7cda3b5c_begin
:while_5c5e7cda3b5c_end
rmem reg0 >var_ef96170ad648
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_52a9b487c21e_end
:var_52a9b487c21e
:var_52a9b487c21e_end
jmp >var_70b61c311029_end
:var_70b61c311029
:var_70b61c311029_end
wmem >var_52a9b487c21e reg0
wmem >var_70b61c311029 reg1
jmp >var_04b48201b34e_end
:var_04b48201b34e
:var_04b48201b34e_end
rmem reg0 >var_52a9b487c21e
call >str_len
wmem >var_04b48201b34e reg0
jmp >var_070a68589f3c_end
:var_070a68589f3c
:var_070a68589f3c_end
rmem reg0 >var_70b61c311029
call >str_len
wmem >var_070a68589f3c reg0
jmp >var_70d455e7a90b_end
:var_70d455e7a90b
:var_70d455e7a90b_end
call >alloc
wmem >var_70d455e7a90b reg0
rmem reg0 >var_52a9b487c21e
rmem reg1 >var_70d455e7a90b
rmem reg2 >var_04b48201b34e
call >mem_cp
jmp >var_4dabdf7f948b_end
:var_4dabdf7f948b
:var_4dabdf7f948b_end
rmem reg0 >var_70d455e7a90b
rmem reg1 >var_04b48201b34e
add reg0 reg0 reg1
wmem >var_4dabdf7f948b reg0
rmem reg0 >var_070a68589f3c
add reg0 reg0 1
wmem >var_070a68589f3c reg0
rmem reg0 >var_70b61c311029
rmem reg1 >var_4dabdf7f948b
rmem reg2 >var_070a68589f3c
call >mem_cp
rmem reg0 >var_70d455e7a90b
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_80c0a015a55c_end
:var_80c0a015a55c
:var_80c0a015a55c_end
wmem >var_80c0a015a55c reg0
jmp >var_f87d16c2f6ac_end
:var_f87d16c2f6ac
:var_f87d16c2f6ac_end
call >alloc
wmem >var_f87d16c2f6ac reg0
jmp >var_26fd6b52a40e_end
:var_26fd6b52a40e
:var_26fd6b52a40e_end
rmem reg0 >var_80c0a015a55c
call >str_len
wmem >var_26fd6b52a40e reg0
jmp >var_6301d494fc6d_end
:var_6301d494fc6d
:var_6301d494fc6d_end
set reg0 0
wmem >var_6301d494fc6d reg0
:while_64a21b6b996f_begin
rmem reg0 >var_6301d494fc6d
rmem reg1 >var_26fd6b52a40e
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_64a21b6b996f_end
jmp >var_c89aa26d5f94_end
:var_c89aa26d5f94
:var_c89aa26d5f94_end
rmem reg0 >var_80c0a015a55c
rmem reg1 >var_6301d494fc6d
add reg0 reg0 reg1
wmem >var_c89aa26d5f94 reg0
rmem reg0 >var_c89aa26d5f94
rmem reg0 reg0
rmem reg0 >var_c89aa26d5f94
rmem reg0 reg0
push reg0
rmem reg0 >var_6301d494fc6d
add reg0 reg0 1
wmem >var_6301d494fc6d reg0
jmp >while_64a21b6b996f_begin
:while_64a21b6b996f_end
jmp >var_a9737c3e2b14_end
:var_a9737c3e2b14
:var_a9737c3e2b14_end
pop reg0
wmem >var_a9737c3e2b14 reg0
set reg0 0
wmem >var_6301d494fc6d reg0
:while_d15d1a7d6f75_begin
rmem reg0 >var_6301d494fc6d
rmem reg1 >var_26fd6b52a40e
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_d15d1a7d6f75_end
jmp >var_4e0ba9589142_end
:var_4e0ba9589142
:var_4e0ba9589142_end
rmem reg0 >var_f87d16c2f6ac
rmem reg1 >var_6301d494fc6d
add reg0 reg0 reg1
wmem >var_4e0ba9589142 reg0
rmem reg0 >var_4e0ba9589142
rmem reg1 >var_a9737c3e2b14
wmem reg0 reg1
rmem reg0 >var_6301d494fc6d
add reg0 reg0 1
wmem >var_6301d494fc6d reg0
pop reg0
wmem >var_a9737c3e2b14 reg0
jmp >while_d15d1a7d6f75_begin
:while_d15d1a7d6f75_end
rmem reg0 >var_a9737c3e2b14
rmem reg0 >var_a9737c3e2b14
push reg0
rmem reg0 >var_f87d16c2f6ac
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_33daa044da93_end
:var_33daa044da93
:var_33daa044da93_end
set reg0 16384
wmem >var_33daa044da93 reg0
jmp >var_3443d29f5113_end
:var_3443d29f5113
:var_3443d29f5113_end
in reg0
wmem >var_3443d29f5113 reg0
jmp >var_116ecc594088_end
:var_116ecc594088
:var_116ecc594088_end
rmem reg0 >var_3443d29f5113
set reg1 10
eq reg0 reg0 reg1
wmem >var_116ecc594088 reg0
:while_ac01e794215c_begin
rmem reg0 >var_116ecc594088
rmem reg1 >var_3443d29f5113
call >and
call >not
jf reg0 >while_ac01e794215c_end
rmem reg0 >var_33daa044da93
rmem reg1 >var_3443d29f5113
wmem reg0 reg1
rmem reg0 >var_33daa044da93
add reg0 reg0 1
wmem >var_33daa044da93 reg0
in reg0
wmem >var_3443d29f5113 reg0
rmem reg0 >var_3443d29f5113
set reg1 10
eq reg0 reg0 reg1
wmem >var_116ecc594088 reg0
jmp >while_ac01e794215c_begin
:while_ac01e794215c_end
rmem reg0 >var_33daa044da93
set reg1 0
wmem reg0 reg1
jmp >var_66bdb64639ea_end
:var_66bdb64639ea
:var_66bdb64639ea_end
call >alloc
wmem >var_66bdb64639ea reg0
jmp >var_d61f4134845b_end
:var_d61f4134845b
:var_d61f4134845b_end
set reg0 16384
call >str_len
wmem >var_d61f4134845b reg0
set reg0 16384
rmem reg1 >var_66bdb64639ea
rmem reg2 >var_d61f4134845b
call >mem_cp
rmem reg0 >var_66bdb64639ea
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_03b06b44e09b_end
:var_03b06b44e09b
:var_03b06b44e09b_end
wmem >var_03b06b44e09b reg0
:while_f44ac91f2d04_begin
rmem reg0 >var_03b06b44e09b
rmem reg0 reg0
jf reg0 >while_f44ac91f2d04_end
rmem reg0 >var_03b06b44e09b
rmem reg0 reg0
out reg0
rmem reg0 >var_03b06b44e09b
add reg0 reg0 1
wmem >var_03b06b44e09b reg0
jmp >while_f44ac91f2d04_begin
:while_f44ac91f2d04_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_33ed1422bb1c_end
:var_33ed1422bb1c
:var_33ed1422bb1c_end
wmem >var_33ed1422bb1c reg0
rmem reg0 >var_33ed1422bb1c
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_2a637fdce91e_end
:var_2a637fdce91e
:var_2a637fdce91e_end
wmem >var_2a637fdce91e reg0
rmem reg0 >var_2a637fdce91e
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_24d510cd0bfb
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_24d510cd0bfb
jmp >var_e17d16b5cf59_end
:var_e17d16b5cf59
:var_e17d16b5cf59_end
jmp >var_88cd75392c1d_end
:var_88cd75392c1d
:var_88cd75392c1d_end
set reg0 0
wmem >var_88cd75392c1d reg0
:while_26f30ba8d371_begin
rmem reg0 >var_2a637fdce91e
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_26f30ba8d371_end
rmem reg0 >var_2a637fdce91e
set reg1 10
mod reg0 reg0 reg1
wmem >var_e17d16b5cf59 reg0
rmem reg0 >var_e17d16b5cf59
rmem reg0 >var_e17d16b5cf59
push reg0
rmem reg0 >var_88cd75392c1d
add reg0 reg0 1
wmem >var_88cd75392c1d reg0
rmem reg0 >var_2a637fdce91e
set reg1 10
call >divide
wmem >var_2a637fdce91e reg0
jmp >while_26f30ba8d371_begin
:while_26f30ba8d371_end
rmem reg0 >var_2a637fdce91e
set reg1 10
mod reg0 reg0 reg1
wmem >var_e17d16b5cf59 reg0
rmem reg0 >var_e17d16b5cf59
rmem reg0 >var_e17d16b5cf59
push reg0
rmem reg0 >var_88cd75392c1d
add reg0 reg0 1
wmem >var_88cd75392c1d reg0
jmp >var_289bf6df8c25_end
:var_289bf6df8c25
:var_289bf6df8c25_end
set reg0 0
wmem >var_289bf6df8c25 reg0
:while_f5aa0f13db64_begin
rmem reg0 >var_289bf6df8c25
rmem reg1 >var_88cd75392c1d
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_f5aa0f13db64_end
rmem reg0 >var_289bf6df8c25
set reg1 1
add reg0 reg0 reg1
wmem >var_289bf6df8c25 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_f5aa0f13db64_begin
:while_f5aa0f13db64_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_8796c862af9c_end
:var_8796c862af9c
:var_8796c862af9c_end
set reg0 0
wmem >var_8796c862af9c reg0
:while_b529c04cd9f2_begin
rmem reg0 >var_8796c862af9c
rmem reg0 reg0
jf reg0 >while_b529c04cd9f2_end
rmem reg0 >var_8796c862af9c
add reg0 reg0 1
wmem >var_8796c862af9c reg0
rmem reg0 >var_8796c862af9c
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_b529c04cd9f2_begin
:while_b529c04cd9f2_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_d25dab3b0ea7_end
:var_d25dab3b0ea7
:var_d25dab3b0ea7_end
wmem >var_d25dab3b0ea7 reg0
jmp >var_6db542172c40_end
:var_6db542172c40
:var_6db542172c40_end
rmem reg0 >var_d25dab3b0ea7
call >flip_str
wmem >var_6db542172c40 reg0
jmp >var_b8a65083d238_end
:var_b8a65083d238
:var_b8a65083d238_end
rmem reg0 >var_6db542172c40
call >str_len
wmem >var_b8a65083d238 reg0
rmem reg0 >var_b8a65083d238
set reg1 1
call >subtract
wmem >var_b8a65083d238 reg0
jmp >var_9950694cb30b_end
:var_9950694cb30b
:var_9950694cb30b_end
set reg0 0
wmem >var_9950694cb30b reg0
jmp >var_91db0b9f9200_end
:var_91db0b9f9200
:var_91db0b9f9200_end
set reg0 0
wmem >var_91db0b9f9200 reg0
:while_7f11bd2016c1_begin
rmem reg0 >var_9950694cb30b
rmem reg1 >var_b8a65083d238
gt reg0 reg0 reg1
call >not
jf reg0 >while_7f11bd2016c1_end
jmp >var_b1f41c91feea_end
:var_b1f41c91feea
:var_b1f41c91feea_end
rmem reg0 >var_6db542172c40
rmem reg1 >var_9950694cb30b
add reg0 reg0 reg1
wmem >var_b1f41c91feea reg0
rmem reg0 >var_b1f41c91feea
rmem reg0 reg0
wmem >var_b1f41c91feea reg0
jmp >var_77d705f46b29_end
:var_77d705f46b29
:var_77d705f46b29_end
rmem reg0 >var_b1f41c91feea
set reg1 47
gt reg0 reg0 reg1
wmem >var_77d705f46b29 reg0
jmp >var_04c1983ff940_end
:var_04c1983ff940
:var_04c1983ff940_end
rmem reg0 >var_b1f41c91feea
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_04c1983ff940 reg0
rmem reg0 >var_77d705f46b29
rmem reg1 >var_04c1983ff940
call >and
jf reg0 >end_5511bca05fdc
jmp >var_3252eb1bb5d7_end
:var_3252eb1bb5d7
:var_3252eb1bb5d7_end
rmem reg0 >var_b1f41c91feea
set reg1 48
call >subtract
wmem >var_3252eb1bb5d7 reg0
rmem reg0 >var_3252eb1bb5d7
call >print_number
set reg0 10
out reg0
jmp >var_5ed82a5f318a_end
:var_5ed82a5f318a
:var_5ed82a5f318a_end
set reg0 0
wmem >var_5ed82a5f318a reg0
jmp >var_227210dcb08c_end
:var_227210dcb08c
:var_227210dcb08c_end
rmem reg0 >var_9950694cb30b
set reg1 1
call >subtract
wmem >var_227210dcb08c reg0
:while_6d1fe874fdfc_begin
rmem reg0 >var_5ed82a5f318a
rmem reg1 >var_227210dcb08c
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_6d1fe874fdfc_end
rmem reg0 >var_3252eb1bb5d7
set reg1 10
mult reg0 reg0 reg1
wmem >var_3252eb1bb5d7 reg0
rmem reg0 >var_5ed82a5f318a
add reg0 reg0 1
wmem >var_5ed82a5f318a reg0
jmp >while_6d1fe874fdfc_begin
:while_6d1fe874fdfc_end
rmem reg0 >var_91db0b9f9200
rmem reg1 >var_3252eb1bb5d7
add reg0 reg0 reg1
wmem >var_91db0b9f9200 reg0
:end_5511bca05fdc
rmem reg0 >var_9950694cb30b
add reg0 reg0 1
wmem >var_9950694cb30b reg0
jmp >while_7f11bd2016c1_begin
:while_7f11bd2016c1_end
rmem reg0 >var_91db0b9f9200
call >print_number
rmem reg0 >var_91db0b9f9200
ret
ret
:int_end
set reg0 >int
jmp >main_end
:main
jmp >var_e174777373c9_end
:var_e174777373c9
&e
&l
&l
&o
&,
32
&w
&o
&r
&l
&d
&!
0
:var_e174777373c9_end
wmem >var_e174777373c9 &H
set reg0 >var_e174777373c9
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

