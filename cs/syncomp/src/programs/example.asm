jmp >str_equal_end
:str_equal
jmp >var_981222ba030f_end
:var_981222ba030f
:var_981222ba030f_end
jmp >var_60636b5c3ea0_end
:var_60636b5c3ea0
:var_60636b5c3ea0_end
wmem >var_981222ba030f reg0
wmem >var_60636b5c3ea0 reg1
jmp >var_daa85d093bd6_end
:var_daa85d093bd6
:var_daa85d093bd6_end
rmem reg0 >var_981222ba030f
call >str_len
wmem >var_daa85d093bd6 reg0
jmp >var_8c3f891d66d0_end
:var_8c3f891d66d0
:var_8c3f891d66d0_end
rmem reg0 >var_60636b5c3ea0
call >str_len
wmem >var_8c3f891d66d0 reg0
rmem reg0 >var_daa85d093bd6
rmem reg1 >var_8c3f891d66d0
eq reg0 reg0 reg1
call >not
jf reg0 >end_fd265b24bfe6
set reg0 0
ret
:end_fd265b24bfe6
jmp >var_c0c3e14b22fd_end
:var_c0c3e14b22fd
:var_c0c3e14b22fd_end
set reg0 0
wmem >var_c0c3e14b22fd reg0
:for_348be0fa3c69_begin
rmem reg0 >var_c0c3e14b22fd
rmem reg1 >var_daa85d093bd6
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_348be0fa3c69_end
jmp >var_e9185c634cdf_end
:var_e9185c634cdf
:var_e9185c634cdf_end
rmem reg0 >var_981222ba030f
rmem reg1 >var_c0c3e14b22fd
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_e9185c634cdf reg0
jmp >var_d107bf960ea0_end
:var_d107bf960ea0
:var_d107bf960ea0_end
rmem reg0 >var_60636b5c3ea0
rmem reg1 >var_c0c3e14b22fd
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_d107bf960ea0 reg0
rmem reg0 >var_e9185c634cdf
rmem reg1 >var_d107bf960ea0
eq reg0 reg0 reg1
call >not
jf reg0 >end_d73479d25074
set reg0 0
ret
:end_d73479d25074
rmem reg0 >var_c0c3e14b22fd
add reg0 reg0 1
wmem >var_c0c3e14b22fd reg0
jmp >for_348be0fa3c69_begin
:for_348be0fa3c69_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_ddadf7ca7813_end
:var_ddadf7ca7813
:var_ddadf7ca7813_end
set reg0 16382
wmem >var_ddadf7ca7813 reg0
:while_ad54f6d7c7d5_begin
rmem reg0 >var_ddadf7ca7813
rmem reg0 reg0
call >not
jf reg0 >while_ad54f6d7c7d5_end
rmem reg0 >var_ddadf7ca7813
set reg1 1
call >subtract
wmem >var_ddadf7ca7813 reg0
jmp >while_ad54f6d7c7d5_begin
:while_ad54f6d7c7d5_end
rmem reg0 >var_ddadf7ca7813
set reg1 2
add reg0 reg0 reg1
wmem >var_ddadf7ca7813 reg0
rmem reg0 >var_ddadf7ca7813
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_38413f7cc973_end
:var_38413f7cc973
:var_38413f7cc973_end
wmem >var_38413f7cc973 reg0
jmp >var_1d96f2e72889_end
:var_1d96f2e72889
:var_1d96f2e72889_end
call >alloc
wmem >var_1d96f2e72889 reg0
jmp >var_59f8f9b67f54_end
:var_59f8f9b67f54
:var_59f8f9b67f54_end
rmem reg0 >var_1d96f2e72889
rmem reg1 >var_38413f7cc973
add reg0 reg0 reg1
wmem >var_59f8f9b67f54 reg0
rmem reg0 >var_59f8f9b67f54
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_1d96f2e72889
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_b11da76ed10c_end
:var_b11da76ed10c
:var_b11da76ed10c_end
jmp >var_f5dcd3654e07_end
:var_f5dcd3654e07
:var_f5dcd3654e07_end
jmp >var_d364a4c024db_end
:var_d364a4c024db
:var_d364a4c024db_end
wmem >var_b11da76ed10c reg0
wmem >var_f5dcd3654e07 reg1
wmem >var_d364a4c024db reg2
jmp >var_3a00abcb09fa_end
:var_3a00abcb09fa
:var_3a00abcb09fa_end
set reg0 0
wmem >var_3a00abcb09fa reg0
:while_6754264e6c74_begin
rmem reg0 >var_3a00abcb09fa
rmem reg1 >var_d364a4c024db
gt reg0 reg0 reg1
call >not
jf reg0 >while_6754264e6c74_end
jmp >var_18bd46adb3a0_end
:var_18bd46adb3a0
:var_18bd46adb3a0_end
rmem reg0 >var_b11da76ed10c
rmem reg1 >var_3a00abcb09fa
add reg0 reg0 reg1
wmem >var_18bd46adb3a0 reg0
jmp >var_e3899b72e474_end
:var_e3899b72e474
:var_e3899b72e474_end
rmem reg0 >var_f5dcd3654e07
rmem reg1 >var_3a00abcb09fa
add reg0 reg0 reg1
wmem >var_e3899b72e474 reg0
rmem reg0 >var_e3899b72e474
rmem reg1 >var_18bd46adb3a0
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_3a00abcb09fa
add reg0 reg0 1
wmem >var_3a00abcb09fa reg0
jmp >while_6754264e6c74_begin
:while_6754264e6c74_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_021d8aac1e8d_end
:var_021d8aac1e8d
:var_021d8aac1e8d_end
wmem >var_021d8aac1e8d reg0
jmp >var_d573004bf2a6_end
:var_d573004bf2a6
:var_d573004bf2a6_end
set reg0 0
wmem >var_d573004bf2a6 reg0
:while_f0a90c728038_begin
rmem reg0 >var_021d8aac1e8d
rmem reg0 reg0
jf reg0 >while_f0a90c728038_end
rmem reg0 >var_021d8aac1e8d
add reg0 reg0 1
wmem >var_021d8aac1e8d reg0
rmem reg0 >var_d573004bf2a6
add reg0 reg0 1
wmem >var_d573004bf2a6 reg0
jmp >while_f0a90c728038_begin
:while_f0a90c728038_end
rmem reg0 >var_d573004bf2a6
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_1cfe45b2c47a_end
:var_1cfe45b2c47a
:var_1cfe45b2c47a_end
jmp >var_5ed17de0ac28_end
:var_5ed17de0ac28
:var_5ed17de0ac28_end
wmem >var_1cfe45b2c47a reg0
wmem >var_5ed17de0ac28 reg1
jmp >var_10a1a4204a7e_end
:var_10a1a4204a7e
:var_10a1a4204a7e_end
rmem reg0 >var_1cfe45b2c47a
call >str_len
wmem >var_10a1a4204a7e reg0
jmp >var_fe098b517f59_end
:var_fe098b517f59
:var_fe098b517f59_end
rmem reg0 >var_5ed17de0ac28
call >str_len
wmem >var_fe098b517f59 reg0
jmp >var_99d7a10f651e_end
:var_99d7a10f651e
:var_99d7a10f651e_end
call >alloc
wmem >var_99d7a10f651e reg0
rmem reg0 >var_1cfe45b2c47a
rmem reg1 >var_99d7a10f651e
rmem reg2 >var_10a1a4204a7e
call >mem_cp
jmp >var_2c2ea3508686_end
:var_2c2ea3508686
:var_2c2ea3508686_end
rmem reg0 >var_99d7a10f651e
rmem reg1 >var_10a1a4204a7e
add reg0 reg0 reg1
wmem >var_2c2ea3508686 reg0
rmem reg0 >var_fe098b517f59
add reg0 reg0 1
wmem >var_fe098b517f59 reg0
rmem reg0 >var_5ed17de0ac28
rmem reg1 >var_2c2ea3508686
rmem reg2 >var_fe098b517f59
call >mem_cp
rmem reg0 >var_99d7a10f651e
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_197f5997a244_end
:var_197f5997a244
:var_197f5997a244_end
wmem >var_197f5997a244 reg0
jmp >var_76ddddf40df5_end
:var_76ddddf40df5
:var_76ddddf40df5_end
call >alloc
wmem >var_76ddddf40df5 reg0
jmp >var_cdf867aeea61_end
:var_cdf867aeea61
:var_cdf867aeea61_end
rmem reg0 >var_197f5997a244
call >str_len
wmem >var_cdf867aeea61 reg0
jmp >var_468154002f3d_end
:var_468154002f3d
:var_468154002f3d_end
set reg0 0
wmem >var_468154002f3d reg0
:while_65b35987f8a5_begin
rmem reg0 >var_468154002f3d
rmem reg1 >var_cdf867aeea61
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_65b35987f8a5_end
jmp >var_614865cdd1f6_end
:var_614865cdd1f6
:var_614865cdd1f6_end
rmem reg0 >var_197f5997a244
rmem reg1 >var_468154002f3d
add reg0 reg0 reg1
wmem >var_614865cdd1f6 reg0
rmem reg0 >var_614865cdd1f6
rmem reg0 reg0
rmem reg0 >var_614865cdd1f6
rmem reg0 reg0
push reg0
rmem reg0 >var_468154002f3d
add reg0 reg0 1
wmem >var_468154002f3d reg0
jmp >while_65b35987f8a5_begin
:while_65b35987f8a5_end
jmp >var_416770230e27_end
:var_416770230e27
:var_416770230e27_end
pop reg0
wmem >var_416770230e27 reg0
set reg0 0
wmem >var_468154002f3d reg0
:while_a97ad0b9a3ee_begin
rmem reg0 >var_468154002f3d
rmem reg1 >var_cdf867aeea61
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_a97ad0b9a3ee_end
jmp >var_6c4d3c5a77e0_end
:var_6c4d3c5a77e0
:var_6c4d3c5a77e0_end
rmem reg0 >var_76ddddf40df5
rmem reg1 >var_468154002f3d
add reg0 reg0 reg1
wmem >var_6c4d3c5a77e0 reg0
rmem reg0 >var_6c4d3c5a77e0
rmem reg1 >var_416770230e27
wmem reg0 reg1
rmem reg0 >var_468154002f3d
add reg0 reg0 1
wmem >var_468154002f3d reg0
pop reg0
wmem >var_416770230e27 reg0
jmp >while_a97ad0b9a3ee_begin
:while_a97ad0b9a3ee_end
rmem reg0 >var_416770230e27
rmem reg0 >var_416770230e27
push reg0
rmem reg0 >var_76ddddf40df5
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_00e88eb901d6_end
:var_00e88eb901d6
:var_00e88eb901d6_end
set reg0 16384
wmem >var_00e88eb901d6 reg0
jmp >var_08e2338bad50_end
:var_08e2338bad50
:var_08e2338bad50_end
in reg0
wmem >var_08e2338bad50 reg0
jmp >var_d21d1110dac3_end
:var_d21d1110dac3
:var_d21d1110dac3_end
rmem reg0 >var_08e2338bad50
set reg1 10
eq reg0 reg0 reg1
wmem >var_d21d1110dac3 reg0
:while_e238aef6a961_begin
rmem reg0 >var_d21d1110dac3
rmem reg1 >var_08e2338bad50
call >and
call >not
jf reg0 >while_e238aef6a961_end
rmem reg0 >var_00e88eb901d6
rmem reg1 >var_08e2338bad50
wmem reg0 reg1
rmem reg0 >var_00e88eb901d6
add reg0 reg0 1
wmem >var_00e88eb901d6 reg0
in reg0
wmem >var_08e2338bad50 reg0
rmem reg0 >var_08e2338bad50
set reg1 10
eq reg0 reg0 reg1
wmem >var_d21d1110dac3 reg0
jmp >while_e238aef6a961_begin
:while_e238aef6a961_end
rmem reg0 >var_00e88eb901d6
set reg1 0
wmem reg0 reg1
jmp >var_7a37fc24249e_end
:var_7a37fc24249e
:var_7a37fc24249e_end
call >alloc
wmem >var_7a37fc24249e reg0
jmp >var_8de7c0135688_end
:var_8de7c0135688
:var_8de7c0135688_end
set reg0 16384
call >str_len
wmem >var_8de7c0135688 reg0
set reg0 16384
rmem reg1 >var_7a37fc24249e
rmem reg2 >var_8de7c0135688
call >mem_cp
rmem reg0 >var_7a37fc24249e
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_bcb5d7e0aaff_end
:var_bcb5d7e0aaff
:var_bcb5d7e0aaff_end
wmem >var_bcb5d7e0aaff reg0
:while_1fa19e549e62_begin
rmem reg0 >var_bcb5d7e0aaff
rmem reg0 reg0
jf reg0 >while_1fa19e549e62_end
rmem reg0 >var_bcb5d7e0aaff
rmem reg0 reg0
out reg0
rmem reg0 >var_bcb5d7e0aaff
add reg0 reg0 1
wmem >var_bcb5d7e0aaff reg0
jmp >while_1fa19e549e62_begin
:while_1fa19e549e62_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_4d26d734ddaa_end
:var_4d26d734ddaa
:var_4d26d734ddaa_end
wmem >var_4d26d734ddaa reg0
rmem reg0 >var_4d26d734ddaa
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_8a7790edecf3_end
:var_8a7790edecf3
:var_8a7790edecf3_end
wmem >var_8a7790edecf3 reg0
rmem reg0 >var_8a7790edecf3
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_7c041683b40e
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_7c041683b40e
jmp >var_7c596deb33cb_end
:var_7c596deb33cb
:var_7c596deb33cb_end
jmp >var_9f8fcc787b5b_end
:var_9f8fcc787b5b
:var_9f8fcc787b5b_end
set reg0 0
wmem >var_9f8fcc787b5b reg0
:while_870c4381d6e1_begin
rmem reg0 >var_8a7790edecf3
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_870c4381d6e1_end
rmem reg0 >var_8a7790edecf3
set reg1 10
mod reg0 reg0 reg1
wmem >var_7c596deb33cb reg0
rmem reg0 >var_7c596deb33cb
rmem reg0 >var_7c596deb33cb
push reg0
rmem reg0 >var_9f8fcc787b5b
add reg0 reg0 1
wmem >var_9f8fcc787b5b reg0
rmem reg0 >var_8a7790edecf3
set reg1 10
call >divide
wmem >var_8a7790edecf3 reg0
jmp >while_870c4381d6e1_begin
:while_870c4381d6e1_end
rmem reg0 >var_8a7790edecf3
set reg1 10
mod reg0 reg0 reg1
wmem >var_7c596deb33cb reg0
rmem reg0 >var_7c596deb33cb
rmem reg0 >var_7c596deb33cb
push reg0
rmem reg0 >var_9f8fcc787b5b
add reg0 reg0 1
wmem >var_9f8fcc787b5b reg0
jmp >var_660ef8b196de_end
:var_660ef8b196de
:var_660ef8b196de_end
set reg0 0
wmem >var_660ef8b196de reg0
:while_cc4d03620625_begin
rmem reg0 >var_660ef8b196de
rmem reg1 >var_9f8fcc787b5b
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_cc4d03620625_end
rmem reg0 >var_660ef8b196de
set reg1 1
add reg0 reg0 reg1
wmem >var_660ef8b196de reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_cc4d03620625_begin
:while_cc4d03620625_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_c5008b8a71f3_end
:var_c5008b8a71f3
:var_c5008b8a71f3_end
set reg0 0
wmem >var_c5008b8a71f3 reg0
:while_6d2910005676_begin
rmem reg0 >var_c5008b8a71f3
rmem reg0 reg0
jf reg0 >while_6d2910005676_end
rmem reg0 >var_c5008b8a71f3
add reg0 reg0 1
wmem >var_c5008b8a71f3 reg0
rmem reg0 >var_c5008b8a71f3
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_6d2910005676_begin
:while_6d2910005676_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_8b43ef49d584_end
:var_8b43ef49d584
:var_8b43ef49d584_end
wmem >var_8b43ef49d584 reg0
jmp >var_21e05f6ce6d8_end
:var_21e05f6ce6d8
:var_21e05f6ce6d8_end
rmem reg0 >var_8b43ef49d584
call >flip_str
wmem >var_21e05f6ce6d8 reg0
jmp >var_a199b29a79c6_end
:var_a199b29a79c6
:var_a199b29a79c6_end
rmem reg0 >var_21e05f6ce6d8
call >str_len
wmem >var_a199b29a79c6 reg0
rmem reg0 >var_a199b29a79c6
set reg1 1
call >subtract
wmem >var_a199b29a79c6 reg0
jmp >var_9759818997ca_end
:var_9759818997ca
:var_9759818997ca_end
set reg0 0
wmem >var_9759818997ca reg0
jmp >var_51f835dd50a1_end
:var_51f835dd50a1
:var_51f835dd50a1_end
set reg0 0
wmem >var_51f835dd50a1 reg0
:while_68506e76ffee_begin
rmem reg0 >var_9759818997ca
rmem reg1 >var_a199b29a79c6
gt reg0 reg0 reg1
call >not
jf reg0 >while_68506e76ffee_end
jmp >var_b275b9bbeb43_end
:var_b275b9bbeb43
:var_b275b9bbeb43_end
rmem reg0 >var_21e05f6ce6d8
rmem reg1 >var_9759818997ca
add reg0 reg0 reg1
wmem >var_b275b9bbeb43 reg0
rmem reg0 >var_b275b9bbeb43
rmem reg0 reg0
wmem >var_b275b9bbeb43 reg0
jmp >var_64e0a9387685_end
:var_64e0a9387685
:var_64e0a9387685_end
rmem reg0 >var_b275b9bbeb43
set reg1 47
gt reg0 reg0 reg1
wmem >var_64e0a9387685 reg0
jmp >var_3524b8d0089c_end
:var_3524b8d0089c
:var_3524b8d0089c_end
rmem reg0 >var_b275b9bbeb43
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_3524b8d0089c reg0
rmem reg0 >var_64e0a9387685
rmem reg1 >var_3524b8d0089c
call >and
jf reg0 >end_89c56f85b92f
jmp >var_3b6b48915ec5_end
:var_3b6b48915ec5
:var_3b6b48915ec5_end
rmem reg0 >var_b275b9bbeb43
set reg1 48
call >subtract
wmem >var_3b6b48915ec5 reg0
rmem reg0 >var_3b6b48915ec5
call >print_number
set reg0 10
out reg0
jmp >var_ddc68f57e66f_end
:var_ddc68f57e66f
:var_ddc68f57e66f_end
set reg0 0
wmem >var_ddc68f57e66f reg0
jmp >var_d31307447993_end
:var_d31307447993
:var_d31307447993_end
rmem reg0 >var_9759818997ca
set reg1 1
call >subtract
wmem >var_d31307447993 reg0
:while_d1850baa8d27_begin
rmem reg0 >var_ddc68f57e66f
rmem reg1 >var_d31307447993
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_d1850baa8d27_end
rmem reg0 >var_3b6b48915ec5
set reg1 10
mult reg0 reg0 reg1
wmem >var_3b6b48915ec5 reg0
rmem reg0 >var_ddc68f57e66f
add reg0 reg0 1
wmem >var_ddc68f57e66f reg0
jmp >while_d1850baa8d27_begin
:while_d1850baa8d27_end
rmem reg0 >var_51f835dd50a1
rmem reg1 >var_3b6b48915ec5
add reg0 reg0 reg1
wmem >var_51f835dd50a1 reg0
:end_89c56f85b92f
rmem reg0 >var_9759818997ca
add reg0 reg0 1
wmem >var_9759818997ca reg0
jmp >while_68506e76ffee_begin
:while_68506e76ffee_end
rmem reg0 >var_51f835dd50a1
call >print_number
rmem reg0 >var_51f835dd50a1
ret
ret
:int_end
set reg0 >int
jmp >main_end
:main
jmp >var_735a4f4c52e9_end
:var_735a4f4c52e9
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
:var_735a4f4c52e9_end
wmem >var_735a4f4c52e9 &H
set reg0 >var_735a4f4c52e9
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

