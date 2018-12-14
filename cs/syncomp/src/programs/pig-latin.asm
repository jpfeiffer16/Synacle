jmp >str_equal_end
:str_equal
jmp >var_4efcbbbf0afe_end
:var_4efcbbbf0afe
:var_4efcbbbf0afe_end
jmp >var_bab2bea247e3_end
:var_bab2bea247e3
:var_bab2bea247e3_end
wmem >var_4efcbbbf0afe reg0
wmem >var_bab2bea247e3 reg1
jmp >var_ef470bf03769_end
:var_ef470bf03769
:var_ef470bf03769_end
rmem reg0 >var_4efcbbbf0afe
call >str_len
wmem >var_ef470bf03769 reg0
jmp >var_62a03b2dbcf3_end
:var_62a03b2dbcf3
:var_62a03b2dbcf3_end
rmem reg0 >var_bab2bea247e3
call >str_len
wmem >var_62a03b2dbcf3 reg0
rmem reg0 >var_ef470bf03769
rmem reg1 >var_62a03b2dbcf3
eq reg0 reg0 reg1
call >not
jf reg0 >end_7dc0ba8c7345
set reg0 0
ret
:end_7dc0ba8c7345
jmp >var_a75fb6e5123c_end
:var_a75fb6e5123c
:var_a75fb6e5123c_end
set reg0 0
wmem >var_a75fb6e5123c reg0
:for_9f40d299c944_begin
rmem reg0 >var_a75fb6e5123c
rmem reg1 >var_ef470bf03769
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_9f40d299c944_end
jmp >var_851554a0770c_end
:var_851554a0770c
:var_851554a0770c_end
rmem reg0 >var_4efcbbbf0afe
rmem reg1 >var_a75fb6e5123c
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_851554a0770c reg0
jmp >var_5ec8c9157638_end
:var_5ec8c9157638
:var_5ec8c9157638_end
rmem reg0 >var_bab2bea247e3
rmem reg1 >var_a75fb6e5123c
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_5ec8c9157638 reg0
rmem reg0 >var_851554a0770c
rmem reg1 >var_5ec8c9157638
eq reg0 reg0 reg1
call >not
jf reg0 >end_b6a041c17928
set reg0 0
ret
:end_b6a041c17928
rmem reg0 >var_a75fb6e5123c
add reg0 reg0 1
wmem >var_a75fb6e5123c reg0
jmp >for_9f40d299c944_begin
:for_9f40d299c944_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_0ddb93a58ad2_end
:var_0ddb93a58ad2
:var_0ddb93a58ad2_end
set reg0 16382
wmem >var_0ddb93a58ad2 reg0
:while_dabfbe64c4cc_begin
rmem reg0 >var_0ddb93a58ad2
rmem reg0 reg0
call >not
jf reg0 >while_dabfbe64c4cc_end
rmem reg0 >var_0ddb93a58ad2
set reg1 1
call >subtract
wmem >var_0ddb93a58ad2 reg0
jmp >while_dabfbe64c4cc_begin
:while_dabfbe64c4cc_end
rmem reg0 >var_0ddb93a58ad2
set reg1 2
add reg0 reg0 reg1
wmem >var_0ddb93a58ad2 reg0
rmem reg0 >var_0ddb93a58ad2
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_5103d79dda39_end
:var_5103d79dda39
:var_5103d79dda39_end
wmem >var_5103d79dda39 reg0
jmp >var_2e14162b173d_end
:var_2e14162b173d
:var_2e14162b173d_end
call >alloc
wmem >var_2e14162b173d reg0
jmp >var_6e372bbafdb9_end
:var_6e372bbafdb9
:var_6e372bbafdb9_end
rmem reg0 >var_2e14162b173d
rmem reg1 >var_5103d79dda39
add reg0 reg0 reg1
wmem >var_6e372bbafdb9 reg0
rmem reg0 >var_6e372bbafdb9
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_2e14162b173d
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_10c889522e6c_end
:var_10c889522e6c
:var_10c889522e6c_end
jmp >var_309afeca6223_end
:var_309afeca6223
:var_309afeca6223_end
jmp >var_978de671d16c_end
:var_978de671d16c
:var_978de671d16c_end
wmem >var_10c889522e6c reg0
wmem >var_309afeca6223 reg1
wmem >var_978de671d16c reg2
jmp >var_dbc67ba8739c_end
:var_dbc67ba8739c
:var_dbc67ba8739c_end
set reg0 0
wmem >var_dbc67ba8739c reg0
:while_0d281d7c18d9_begin
rmem reg0 >var_dbc67ba8739c
rmem reg1 >var_978de671d16c
gt reg0 reg0 reg1
call >not
jf reg0 >while_0d281d7c18d9_end
jmp >var_f2d3751c73c2_end
:var_f2d3751c73c2
:var_f2d3751c73c2_end
rmem reg0 >var_10c889522e6c
rmem reg1 >var_dbc67ba8739c
add reg0 reg0 reg1
wmem >var_f2d3751c73c2 reg0
jmp >var_96906ff8bd0f_end
:var_96906ff8bd0f
:var_96906ff8bd0f_end
rmem reg0 >var_309afeca6223
rmem reg1 >var_dbc67ba8739c
add reg0 reg0 reg1
wmem >var_96906ff8bd0f reg0
rmem reg0 >var_96906ff8bd0f
rmem reg1 >var_f2d3751c73c2
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_dbc67ba8739c
add reg0 reg0 1
wmem >var_dbc67ba8739c reg0
jmp >while_0d281d7c18d9_begin
:while_0d281d7c18d9_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_96ee3d6f9da5_end
:var_96ee3d6f9da5
:var_96ee3d6f9da5_end
wmem >var_96ee3d6f9da5 reg0
jmp >var_043c29146f6a_end
:var_043c29146f6a
:var_043c29146f6a_end
set reg0 0
wmem >var_043c29146f6a reg0
:while_4470bba132bd_begin
rmem reg0 >var_96ee3d6f9da5
rmem reg0 reg0
jf reg0 >while_4470bba132bd_end
rmem reg0 >var_96ee3d6f9da5
add reg0 reg0 1
wmem >var_96ee3d6f9da5 reg0
rmem reg0 >var_043c29146f6a
add reg0 reg0 1
wmem >var_043c29146f6a reg0
jmp >while_4470bba132bd_begin
:while_4470bba132bd_end
rmem reg0 >var_043c29146f6a
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_71df9e77c149_end
:var_71df9e77c149
:var_71df9e77c149_end
jmp >var_ed0fdf18f569_end
:var_ed0fdf18f569
:var_ed0fdf18f569_end
wmem >var_71df9e77c149 reg0
wmem >var_ed0fdf18f569 reg1
jmp >var_5c780b98398e_end
:var_5c780b98398e
:var_5c780b98398e_end
rmem reg0 >var_71df9e77c149
call >str_len
wmem >var_5c780b98398e reg0
jmp >var_256b1e00f2ce_end
:var_256b1e00f2ce
:var_256b1e00f2ce_end
rmem reg0 >var_ed0fdf18f569
call >str_len
wmem >var_256b1e00f2ce reg0
jmp >var_64e09f779e79_end
:var_64e09f779e79
:var_64e09f779e79_end
call >alloc
wmem >var_64e09f779e79 reg0
rmem reg0 >var_71df9e77c149
rmem reg1 >var_64e09f779e79
rmem reg2 >var_5c780b98398e
call >mem_cp
jmp >var_cee87863eff2_end
:var_cee87863eff2
:var_cee87863eff2_end
rmem reg0 >var_64e09f779e79
rmem reg1 >var_5c780b98398e
add reg0 reg0 reg1
wmem >var_cee87863eff2 reg0
rmem reg0 >var_256b1e00f2ce
add reg0 reg0 1
wmem >var_256b1e00f2ce reg0
rmem reg0 >var_ed0fdf18f569
rmem reg1 >var_cee87863eff2
rmem reg2 >var_256b1e00f2ce
call >mem_cp
rmem reg0 >var_64e09f779e79
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_d38f3fac3137_end
:var_d38f3fac3137
:var_d38f3fac3137_end
wmem >var_d38f3fac3137 reg0
jmp >var_45775f4580f6_end
:var_45775f4580f6
:var_45775f4580f6_end
call >alloc
wmem >var_45775f4580f6 reg0
jmp >var_f7ef4622dc7d_end
:var_f7ef4622dc7d
:var_f7ef4622dc7d_end
rmem reg0 >var_d38f3fac3137
call >str_len
wmem >var_f7ef4622dc7d reg0
jmp >var_e03b2a05babb_end
:var_e03b2a05babb
:var_e03b2a05babb_end
set reg0 0
wmem >var_e03b2a05babb reg0
:while_efc652e32438_begin
rmem reg0 >var_e03b2a05babb
rmem reg1 >var_f7ef4622dc7d
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_efc652e32438_end
jmp >var_739f75a44b18_end
:var_739f75a44b18
:var_739f75a44b18_end
rmem reg0 >var_d38f3fac3137
rmem reg1 >var_e03b2a05babb
add reg0 reg0 reg1
wmem >var_739f75a44b18 reg0
rmem reg0 >var_739f75a44b18
rmem reg0 reg0
rmem reg0 >var_739f75a44b18
rmem reg0 reg0
push reg0
rmem reg0 >var_e03b2a05babb
add reg0 reg0 1
wmem >var_e03b2a05babb reg0
jmp >while_efc652e32438_begin
:while_efc652e32438_end
jmp >var_61b10278e162_end
:var_61b10278e162
:var_61b10278e162_end
pop reg0
wmem >var_61b10278e162 reg0
set reg0 0
wmem >var_e03b2a05babb reg0
:while_d05678cbf9c3_begin
rmem reg0 >var_e03b2a05babb
rmem reg1 >var_f7ef4622dc7d
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_d05678cbf9c3_end
jmp >var_9b508299fdee_end
:var_9b508299fdee
:var_9b508299fdee_end
rmem reg0 >var_45775f4580f6
rmem reg1 >var_e03b2a05babb
add reg0 reg0 reg1
wmem >var_9b508299fdee reg0
rmem reg0 >var_9b508299fdee
rmem reg1 >var_61b10278e162
wmem reg0 reg1
rmem reg0 >var_e03b2a05babb
add reg0 reg0 1
wmem >var_e03b2a05babb reg0
pop reg0
wmem >var_61b10278e162 reg0
jmp >while_d05678cbf9c3_begin
:while_d05678cbf9c3_end
rmem reg0 >var_61b10278e162
rmem reg0 >var_61b10278e162
push reg0
rmem reg0 >var_45775f4580f6
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_84dfafe14121_end
:var_84dfafe14121
:var_84dfafe14121_end
set reg0 16384
wmem >var_84dfafe14121 reg0
jmp >var_08e5b6ff3070_end
:var_08e5b6ff3070
:var_08e5b6ff3070_end
in reg0
wmem >var_08e5b6ff3070 reg0
jmp >var_50eeb357ac89_end
:var_50eeb357ac89
:var_50eeb357ac89_end
rmem reg0 >var_08e5b6ff3070
set reg1 10
eq reg0 reg0 reg1
wmem >var_50eeb357ac89 reg0
:while_cead6d93903e_begin
rmem reg0 >var_50eeb357ac89
rmem reg1 >var_08e5b6ff3070
call >and
call >not
jf reg0 >while_cead6d93903e_end
rmem reg0 >var_84dfafe14121
rmem reg1 >var_08e5b6ff3070
wmem reg0 reg1
rmem reg0 >var_84dfafe14121
add reg0 reg0 1
wmem >var_84dfafe14121 reg0
in reg0
wmem >var_08e5b6ff3070 reg0
rmem reg0 >var_08e5b6ff3070
set reg1 10
eq reg0 reg0 reg1
wmem >var_50eeb357ac89 reg0
jmp >while_cead6d93903e_begin
:while_cead6d93903e_end
rmem reg0 >var_84dfafe14121
set reg1 0
wmem reg0 reg1
jmp >var_56d8f72249b5_end
:var_56d8f72249b5
:var_56d8f72249b5_end
call >alloc
wmem >var_56d8f72249b5 reg0
jmp >var_bb4f4b9297a7_end
:var_bb4f4b9297a7
:var_bb4f4b9297a7_end
set reg0 16384
call >str_len
wmem >var_bb4f4b9297a7 reg0
set reg0 16384
rmem reg1 >var_56d8f72249b5
rmem reg2 >var_bb4f4b9297a7
call >mem_cp
rmem reg0 >var_56d8f72249b5
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_c7b4767d29dc_end
:var_c7b4767d29dc
:var_c7b4767d29dc_end
wmem >var_c7b4767d29dc reg0
:while_e03071046411_begin
rmem reg0 >var_c7b4767d29dc
rmem reg0 reg0
jf reg0 >while_e03071046411_end
rmem reg0 >var_c7b4767d29dc
rmem reg0 reg0
out reg0
rmem reg0 >var_c7b4767d29dc
add reg0 reg0 1
wmem >var_c7b4767d29dc reg0
jmp >while_e03071046411_begin
:while_e03071046411_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_e744eafbae66_end
:var_e744eafbae66
:var_e744eafbae66_end
wmem >var_e744eafbae66 reg0
rmem reg0 >var_e744eafbae66
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_edbf681ef712_end
:var_edbf681ef712
:var_edbf681ef712_end
wmem >var_edbf681ef712 reg0
rmem reg0 >var_edbf681ef712
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_91be6bdf19df
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_91be6bdf19df
jmp >var_e215508b9bf0_end
:var_e215508b9bf0
:var_e215508b9bf0_end
jmp >var_45073c2177b9_end
:var_45073c2177b9
:var_45073c2177b9_end
set reg0 0
wmem >var_45073c2177b9 reg0
:while_7f547d4e84e2_begin
rmem reg0 >var_edbf681ef712
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_7f547d4e84e2_end
rmem reg0 >var_edbf681ef712
set reg1 10
mod reg0 reg0 reg1
wmem >var_e215508b9bf0 reg0
rmem reg0 >var_e215508b9bf0
rmem reg0 >var_e215508b9bf0
push reg0
rmem reg0 >var_45073c2177b9
add reg0 reg0 1
wmem >var_45073c2177b9 reg0
rmem reg0 >var_edbf681ef712
set reg1 10
call >divide
wmem >var_edbf681ef712 reg0
jmp >while_7f547d4e84e2_begin
:while_7f547d4e84e2_end
rmem reg0 >var_edbf681ef712
set reg1 10
mod reg0 reg0 reg1
wmem >var_e215508b9bf0 reg0
rmem reg0 >var_e215508b9bf0
rmem reg0 >var_e215508b9bf0
push reg0
rmem reg0 >var_45073c2177b9
add reg0 reg0 1
wmem >var_45073c2177b9 reg0
jmp >var_a20a663025df_end
:var_a20a663025df
:var_a20a663025df_end
set reg0 0
wmem >var_a20a663025df reg0
:while_3aca7a4d4a27_begin
rmem reg0 >var_a20a663025df
rmem reg1 >var_45073c2177b9
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_3aca7a4d4a27_end
rmem reg0 >var_a20a663025df
set reg1 1
add reg0 reg0 reg1
wmem >var_a20a663025df reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_3aca7a4d4a27_begin
:while_3aca7a4d4a27_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_1487aca37be2_end
:var_1487aca37be2
:var_1487aca37be2_end
set reg0 0
wmem >var_1487aca37be2 reg0
:while_f65165513724_begin
rmem reg0 >var_1487aca37be2
rmem reg0 reg0
jf reg0 >while_f65165513724_end
rmem reg0 >var_1487aca37be2
add reg0 reg0 1
wmem >var_1487aca37be2 reg0
rmem reg0 >var_1487aca37be2
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_f65165513724_begin
:while_f65165513724_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_4b6acfb9e704_end
:var_4b6acfb9e704
:var_4b6acfb9e704_end
wmem >var_4b6acfb9e704 reg0
jmp >var_53be805e9525_end
:var_53be805e9525
:var_53be805e9525_end
rmem reg0 >var_4b6acfb9e704
call >flip_str
wmem >var_53be805e9525 reg0
jmp >var_c1d9f8f67312_end
:var_c1d9f8f67312
:var_c1d9f8f67312_end
rmem reg0 >var_53be805e9525
call >str_len
wmem >var_c1d9f8f67312 reg0
rmem reg0 >var_c1d9f8f67312
set reg1 1
call >subtract
wmem >var_c1d9f8f67312 reg0
jmp >var_828a153d7cd8_end
:var_828a153d7cd8
:var_828a153d7cd8_end
set reg0 0
wmem >var_828a153d7cd8 reg0
jmp >var_fb7ae7aacc08_end
:var_fb7ae7aacc08
:var_fb7ae7aacc08_end
set reg0 0
wmem >var_fb7ae7aacc08 reg0
:while_cb9480d59d81_begin
rmem reg0 >var_828a153d7cd8
rmem reg1 >var_c1d9f8f67312
gt reg0 reg0 reg1
call >not
jf reg0 >while_cb9480d59d81_end
jmp >var_88255874ece9_end
:var_88255874ece9
:var_88255874ece9_end
rmem reg0 >var_53be805e9525
rmem reg1 >var_828a153d7cd8
add reg0 reg0 reg1
wmem >var_88255874ece9 reg0
rmem reg0 >var_88255874ece9
rmem reg0 reg0
wmem >var_88255874ece9 reg0
jmp >var_d2c99e7a87e5_end
:var_d2c99e7a87e5
:var_d2c99e7a87e5_end
rmem reg0 >var_88255874ece9
set reg1 47
gt reg0 reg0 reg1
wmem >var_d2c99e7a87e5 reg0
jmp >var_8dafdc0c4929_end
:var_8dafdc0c4929
:var_8dafdc0c4929_end
rmem reg0 >var_88255874ece9
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_8dafdc0c4929 reg0
rmem reg0 >var_d2c99e7a87e5
rmem reg1 >var_8dafdc0c4929
call >and
jf reg0 >end_b1bd0c5d1eb0
jmp >var_9e7a1db743e9_end
:var_9e7a1db743e9
:var_9e7a1db743e9_end
rmem reg0 >var_88255874ece9
set reg1 48
call >subtract
wmem >var_9e7a1db743e9 reg0
rmem reg0 >var_9e7a1db743e9
call >print_number
set reg0 10
out reg0
jmp >var_d719b61ee03c_end
:var_d719b61ee03c
:var_d719b61ee03c_end
set reg0 0
wmem >var_d719b61ee03c reg0
jmp >var_3c5b7489bc35_end
:var_3c5b7489bc35
:var_3c5b7489bc35_end
rmem reg0 >var_828a153d7cd8
set reg1 1
call >subtract
wmem >var_3c5b7489bc35 reg0
:while_600681d20130_begin
rmem reg0 >var_d719b61ee03c
rmem reg1 >var_3c5b7489bc35
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_600681d20130_end
rmem reg0 >var_9e7a1db743e9
set reg1 10
mult reg0 reg0 reg1
wmem >var_9e7a1db743e9 reg0
rmem reg0 >var_d719b61ee03c
add reg0 reg0 1
wmem >var_d719b61ee03c reg0
jmp >while_600681d20130_begin
:while_600681d20130_end
rmem reg0 >var_fb7ae7aacc08
rmem reg1 >var_9e7a1db743e9
add reg0 reg0 reg1
wmem >var_fb7ae7aacc08 reg0
:end_b1bd0c5d1eb0
rmem reg0 >var_828a153d7cd8
add reg0 reg0 1
wmem >var_828a153d7cd8 reg0
jmp >while_cb9480d59d81_begin
:while_cb9480d59d81_end
rmem reg0 >var_fb7ae7aacc08
call >print_number
rmem reg0 >var_fb7ae7aacc08
ret
ret
:int_end
set reg0 >int
jmp >main_end
:main
jmp >var_8ca74f15d3cc_end
:var_8ca74f15d3cc
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
:var_8ca74f15d3cc_end
wmem >var_8ca74f15d3cc &E
set reg0 >var_8ca74f15d3cc
call >print
jmp >var_e38ba449376b_end
:var_e38ba449376b
:var_e38ba449376b_end
call >input
wmem >var_e38ba449376b reg0
rmem reg0 >var_e38ba449376b
jmp >var_a5dd14725c25_end
:var_a5dd14725c25
&x
&i
&t
0
:var_a5dd14725c25_end
wmem >var_a5dd14725c25 &e
set reg1 >var_a5dd14725c25
call >str_equal
jf reg0 >end_147c17a21611
ret
:end_147c17a21611
jmp >var_c55d16d1fbfb_end
:var_c55d16d1fbfb
:var_c55d16d1fbfb_end
call >alloc
wmem >var_c55d16d1fbfb reg0
rmem reg0 >var_c55d16d1fbfb
rmem reg1 >var_e38ba449376b
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_e38ba449376b
add reg0 reg0 1
wmem >var_e38ba449376b reg0
rmem reg0 >var_e38ba449376b
rmem reg1 >var_c55d16d1fbfb
call >str_cat
jmp >var_43446ae5d453_end
:var_43446ae5d453
&y
0
:var_43446ae5d453_end
wmem >var_43446ae5d453 &a
set reg1 >var_43446ae5d453
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

