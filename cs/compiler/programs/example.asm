jmp >alloc_end
:alloc
jmp >var_1bb17b08482a_end
:var_1bb17b08482a
:var_1bb17b08482a_end
set reg0 0
wmem >var_1bb17b08482a reg0
jmp >var_98ae221b0a6a_end
:var_98ae221b0a6a
:var_98ae221b0a6a_end
set reg0 0
wmem >var_98ae221b0a6a reg0
:while_1a1935da873c_begin
rmem reg0 >var_98ae221b0a6a
set reg1 6
gt reg0 reg0 reg1
call >not
jf reg0 >while_1a1935da873c_end
jmp >var_f98ad7390865_end
:var_f98ad7390865
:var_f98ad7390865_end
rmem reg0 >var_1bb17b08482a
rmem reg0 reg0
wmem >var_f98ad7390865 reg0
rmem reg0 >var_f98ad7390865
call >not
jf reg0 >end_a8ab0e720850
rmem reg0 >var_98ae221b0a6a
add reg0 reg0 1
wmem >var_98ae221b0a6a reg0
:end_a8ab0e720850
rmem reg0 >var_f98ad7390865
jf reg0 >end_96f7d934a756
set reg0 0
wmem >var_98ae221b0a6a reg0
:end_96f7d934a756
rmem reg0 >var_1bb17b08482a
add reg0 reg0 1
wmem >var_1bb17b08482a reg0
jmp >while_1a1935da873c_begin
:while_1a1935da873c_end
rmem reg0 >var_1bb17b08482a
set reg1 1
call >subtract
wmem >var_1bb17b08482a reg0
rmem reg0 >var_1bb17b08482a
ret
ret
:alloc_end
set reg0 >alloc
jmp >mem_cp_end
:mem_cp
jmp >var_b20f8803090f_end
:var_b20f8803090f
:var_b20f8803090f_end
jmp >var_b575234c1341_end
:var_b575234c1341
:var_b575234c1341_end
jmp >var_6fe8d24600c4_end
:var_6fe8d24600c4
:var_6fe8d24600c4_end
wmem >var_b20f8803090f reg0
wmem >var_b575234c1341 reg1
wmem >var_6fe8d24600c4 reg2
jmp >var_0f4547264700_end
:var_0f4547264700
:var_0f4547264700_end
set reg0 0
wmem >var_0f4547264700 reg0
:while_74ed4a160f48_begin
rmem reg0 >var_0f4547264700
rmem reg1 >var_6fe8d24600c4
gt reg0 reg0 reg1
call >not
jf reg0 >while_74ed4a160f48_end
jmp >var_b30564ed0f96_end
:var_b30564ed0f96
:var_b30564ed0f96_end
rmem reg0 >var_b20f8803090f
rmem reg1 >var_0f4547264700
add reg0 reg0 reg1
wmem >var_b30564ed0f96 reg0
jmp >var_1b90491d23b0_end
:var_1b90491d23b0
:var_1b90491d23b0_end
rmem reg0 >var_b575234c1341
rmem reg1 >var_0f4547264700
add reg0 reg0 reg1
wmem >var_1b90491d23b0 reg0
rmem reg0 >var_1b90491d23b0
rmem reg1 >var_b30564ed0f96
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_0f4547264700
add reg0 reg0 1
wmem >var_0f4547264700 reg0
jmp >while_74ed4a160f48_begin
:while_74ed4a160f48_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_6cd6f2114d42_end
:var_6cd6f2114d42
:var_6cd6f2114d42_end
wmem >var_6cd6f2114d42 reg0
jmp >var_adaa251dab33_end
:var_adaa251dab33
:var_adaa251dab33_end
set reg0 0
wmem >var_adaa251dab33 reg0
:while_cb5bce11406b_begin
rmem reg0 >var_6cd6f2114d42
rmem reg0 reg0
jf reg0 >while_cb5bce11406b_end
rmem reg0 >var_6cd6f2114d42
add reg0 reg0 1
wmem >var_6cd6f2114d42 reg0
rmem reg0 >var_adaa251dab33
add reg0 reg0 1
wmem >var_adaa251dab33 reg0
jmp >while_cb5bce11406b_begin
:while_cb5bce11406b_end
rmem reg0 >var_adaa251dab33
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_f98e83e29a6c_end
:var_f98e83e29a6c
:var_f98e83e29a6c_end
jmp >var_7ff3cfbf52ad_end
:var_7ff3cfbf52ad
:var_7ff3cfbf52ad_end
wmem >var_f98e83e29a6c reg0
wmem >var_7ff3cfbf52ad reg1
jmp >var_44d7d1cc3a65_end
:var_44d7d1cc3a65
:var_44d7d1cc3a65_end
rmem reg0 >var_f98e83e29a6c
call >str_len
wmem >var_44d7d1cc3a65 reg0
jmp >var_39f8186e0bda_end
:var_39f8186e0bda
:var_39f8186e0bda_end
rmem reg0 >var_7ff3cfbf52ad
call >str_len
wmem >var_39f8186e0bda reg0
set reg0 10
out reg0
set reg0 10
out reg0
jmp >var_940a9f50f497_end
:var_940a9f50f497
:var_940a9f50f497_end
call >alloc
wmem >var_940a9f50f497 reg0
rmem reg0 >var_f98e83e29a6c
rmem reg1 >var_940a9f50f497
rmem reg2 >var_44d7d1cc3a65
call >mem_cp
jmp >var_bb079fb97b7a_end
:var_bb079fb97b7a
:var_bb079fb97b7a_end
rmem reg0 >var_940a9f50f497
rmem reg1 >var_44d7d1cc3a65
add reg0 reg0 reg1
wmem >var_bb079fb97b7a reg0
rmem reg0 >var_39f8186e0bda
add reg0 reg0 1
wmem >var_39f8186e0bda reg0
rmem reg0 >var_7ff3cfbf52ad
rmem reg1 >var_bb079fb97b7a
rmem reg2 >var_39f8186e0bda
call >mem_cp
rmem reg0 >var_940a9f50f497
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_d0356fbc6db6_end
:var_d0356fbc6db6
:var_d0356fbc6db6_end
wmem >var_d0356fbc6db6 reg0
jmp >var_db2fcb8989d1_end
:var_db2fcb8989d1
:var_db2fcb8989d1_end
call >alloc
wmem >var_db2fcb8989d1 reg0
jmp >var_138c5250a9f1_end
:var_138c5250a9f1
:var_138c5250a9f1_end
rmem reg0 >var_d0356fbc6db6
call >str_len
wmem >var_138c5250a9f1 reg0
jmp >var_772074f69037_end
:var_772074f69037
:var_772074f69037_end
set reg0 0
wmem >var_772074f69037 reg0
:while_b27851b770a2_begin
rmem reg0 >var_772074f69037
rmem reg1 >var_138c5250a9f1
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_b27851b770a2_end
jmp >var_f2b496c63303_end
:var_f2b496c63303
:var_f2b496c63303_end
rmem reg0 >var_d0356fbc6db6
rmem reg1 >var_772074f69037
add reg0 reg0 reg1
wmem >var_f2b496c63303 reg0
rmem reg0 >var_f2b496c63303
rmem reg0 reg0
rmem reg0 >var_f2b496c63303
rmem reg0 reg0
push reg0
rmem reg0 >var_772074f69037
add reg0 reg0 1
wmem >var_772074f69037 reg0
jmp >while_b27851b770a2_begin
:while_b27851b770a2_end
jmp >var_b96094775f0a_end
:var_b96094775f0a
:var_b96094775f0a_end
pop reg0
wmem >var_b96094775f0a reg0
set reg0 0
wmem >var_772074f69037 reg0
:while_f48b7584abc5_begin
rmem reg0 >var_772074f69037
rmem reg1 >var_138c5250a9f1
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_f48b7584abc5_end
jmp >var_94e7babad217_end
:var_94e7babad217
:var_94e7babad217_end
rmem reg0 >var_db2fcb8989d1
rmem reg1 >var_772074f69037
add reg0 reg0 reg1
wmem >var_94e7babad217 reg0
rmem reg0 >var_94e7babad217
rmem reg1 >var_b96094775f0a
wmem reg0 reg1
rmem reg0 >var_772074f69037
add reg0 reg0 1
wmem >var_772074f69037 reg0
pop reg0
wmem >var_b96094775f0a reg0
jmp >while_f48b7584abc5_begin
:while_f48b7584abc5_end
rmem reg0 >var_b96094775f0a
rmem reg0 >var_b96094775f0a
push reg0
rmem reg0 >var_db2fcb8989d1
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_99b37302d96b_end
:var_99b37302d96b
:var_99b37302d96b_end
set reg0 16384
wmem >var_99b37302d96b reg0
jmp >var_e79d183f9d17_end
:var_e79d183f9d17
:var_e79d183f9d17_end
in reg0
wmem >var_e79d183f9d17 reg0
jmp >var_8568eaafa40e_end
:var_8568eaafa40e
:var_8568eaafa40e_end
rmem reg0 >var_e79d183f9d17
set reg1 10
eq reg0 reg0 reg1
wmem >var_8568eaafa40e reg0
:while_e8ba41e9c06e_begin
rmem reg0 >var_8568eaafa40e
call >not
rmem reg1 >var_e79d183f9d17
call >and
jf reg0 >while_e8ba41e9c06e_end
rmem reg0 >var_99b37302d96b
rmem reg1 >var_e79d183f9d17
wmem reg0 reg1
rmem reg0 >var_99b37302d96b
add reg0 reg0 1
wmem >var_99b37302d96b reg0
in reg0
wmem >var_e79d183f9d17 reg0
rmem reg0 >var_e79d183f9d17
set reg1 10
eq reg0 reg0 reg1
wmem >var_8568eaafa40e reg0
jmp >while_e8ba41e9c06e_begin
:while_e8ba41e9c06e_end
rmem reg0 >var_99b37302d96b
set reg1 0
wmem reg0 reg1
jmp >var_37c3f73c5043_end
:var_37c3f73c5043
:var_37c3f73c5043_end
call >alloc
wmem >var_37c3f73c5043 reg0
jmp >var_0354b1da1a32_end
:var_0354b1da1a32
:var_0354b1da1a32_end
set reg0 16384
call >str_len
wmem >var_0354b1da1a32 reg0
set reg0 16384
rmem reg1 >var_37c3f73c5043
rmem reg2 >var_0354b1da1a32
call >mem_cp
rmem reg0 >var_37c3f73c5043
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_875db93861ee_end
:var_875db93861ee
:var_875db93861ee_end
wmem >var_875db93861ee reg0
:while_0efb6711f8bc_begin
rmem reg0 >var_875db93861ee
rmem reg0 reg0
jf reg0 >while_0efb6711f8bc_end
rmem reg0 >var_875db93861ee
rmem reg0 reg0
out reg0
rmem reg0 >var_875db93861ee
add reg0 reg0 1
wmem >var_875db93861ee reg0
jmp >while_0efb6711f8bc_begin
:while_0efb6711f8bc_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_a6c71823ff1e_end
:var_a6c71823ff1e
:var_a6c71823ff1e_end
wmem >var_a6c71823ff1e reg0
rmem reg0 >var_a6c71823ff1e
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_944979f0420e_end
:var_944979f0420e
:var_944979f0420e_end
wmem >var_944979f0420e reg0
rmem reg0 >var_944979f0420e
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_e3d4a47486f1
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_e3d4a47486f1
jmp >var_17a56ec7fb4e_end
:var_17a56ec7fb4e
:var_17a56ec7fb4e_end
jmp >var_418aa5ee0465_end
:var_418aa5ee0465
:var_418aa5ee0465_end
set reg0 0
wmem >var_418aa5ee0465 reg0
:while_53ff9e325af1_begin
rmem reg0 >var_944979f0420e
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_53ff9e325af1_end
rmem reg0 >var_944979f0420e
set reg1 10
mod reg0 reg0 reg1
wmem >var_17a56ec7fb4e reg0
rmem reg0 >var_17a56ec7fb4e
rmem reg0 >var_17a56ec7fb4e
push reg0
rmem reg0 >var_418aa5ee0465
add reg0 reg0 1
wmem >var_418aa5ee0465 reg0
rmem reg0 >var_944979f0420e
set reg1 10
call >divide
wmem >var_944979f0420e reg0
jmp >while_53ff9e325af1_begin
:while_53ff9e325af1_end
rmem reg0 >var_944979f0420e
set reg1 10
mod reg0 reg0 reg1
wmem >var_17a56ec7fb4e reg0
rmem reg0 >var_17a56ec7fb4e
rmem reg0 >var_17a56ec7fb4e
push reg0
rmem reg0 >var_418aa5ee0465
add reg0 reg0 1
wmem >var_418aa5ee0465 reg0
jmp >var_c4f48f895389_end
:var_c4f48f895389
:var_c4f48f895389_end
set reg0 0
wmem >var_c4f48f895389 reg0
:while_390f8f571db9_begin
rmem reg0 >var_c4f48f895389
rmem reg1 >var_418aa5ee0465
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_390f8f571db9_end
rmem reg0 >var_c4f48f895389
set reg1 1
add reg0 reg0 reg1
wmem >var_c4f48f895389 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_390f8f571db9_begin
:while_390f8f571db9_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_7da3db1d2e50_end
:var_7da3db1d2e50
:var_7da3db1d2e50_end
set reg0 0
wmem >var_7da3db1d2e50 reg0
:while_dab20dc440b3_begin
rmem reg0 >var_7da3db1d2e50
rmem reg0 reg0
jf reg0 >while_dab20dc440b3_end
rmem reg0 >var_7da3db1d2e50
add reg0 reg0 1
wmem >var_7da3db1d2e50 reg0
rmem reg0 >var_7da3db1d2e50
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_dab20dc440b3_begin
:while_dab20dc440b3_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_5cf2560e6585_end
:var_5cf2560e6585
:var_5cf2560e6585_end
wmem >var_5cf2560e6585 reg0
jmp >var_69f01584c996_end
:var_69f01584c996
:var_69f01584c996_end
rmem reg0 >var_5cf2560e6585
call >flip_str
wmem >var_69f01584c996 reg0
jmp >var_58fa4853b5c2_end
:var_58fa4853b5c2
:var_58fa4853b5c2_end
rmem reg0 >var_69f01584c996
call >str_len
wmem >var_58fa4853b5c2 reg0
rmem reg0 >var_58fa4853b5c2
set reg1 1
call >subtract
wmem >var_58fa4853b5c2 reg0
jmp >var_fdc40d06d2f7_end
:var_fdc40d06d2f7
:var_fdc40d06d2f7_end
set reg0 0
wmem >var_fdc40d06d2f7 reg0
jmp >var_708debdd5935_end
:var_708debdd5935
:var_708debdd5935_end
set reg0 0
wmem >var_708debdd5935 reg0
:while_c2e87104e817_begin
rmem reg0 >var_fdc40d06d2f7
rmem reg1 >var_58fa4853b5c2
gt reg0 reg0 reg1
call >not
jf reg0 >while_c2e87104e817_end
jmp >var_5ddbd5742128_end
:var_5ddbd5742128
:var_5ddbd5742128_end
rmem reg0 >var_69f01584c996
rmem reg1 >var_fdc40d06d2f7
add reg0 reg0 reg1
wmem >var_5ddbd5742128 reg0
rmem reg0 >var_5ddbd5742128
rmem reg0 reg0
wmem >var_5ddbd5742128 reg0
jmp >var_cbb6b0d41c62_end
:var_cbb6b0d41c62
:var_cbb6b0d41c62_end
rmem reg0 >var_5ddbd5742128
set reg1 47
gt reg0 reg0 reg1
wmem >var_cbb6b0d41c62 reg0
jmp >var_0613f3c1f8eb_end
:var_0613f3c1f8eb
:var_0613f3c1f8eb_end
rmem reg0 >var_5ddbd5742128
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_0613f3c1f8eb reg0
rmem reg0 >var_cbb6b0d41c62
rmem reg1 >var_0613f3c1f8eb
call >and
jf reg0 >end_6ee07d696169
jmp >var_bdb8ae9739c5_end
:var_bdb8ae9739c5
:var_bdb8ae9739c5_end
rmem reg0 >var_5ddbd5742128
set reg1 48
call >subtract
wmem >var_bdb8ae9739c5 reg0
rmem reg0 >var_bdb8ae9739c5
call >print_number
set reg0 10
out reg0
jmp >var_a750f670ef53_end
:var_a750f670ef53
:var_a750f670ef53_end
set reg0 0
wmem >var_a750f670ef53 reg0
jmp >var_6d58c1d552c2_end
:var_6d58c1d552c2
:var_6d58c1d552c2_end
rmem reg0 >var_fdc40d06d2f7
set reg1 1
call >subtract
wmem >var_6d58c1d552c2 reg0
:while_ec8cde2a7f68_begin
rmem reg0 >var_a750f670ef53
rmem reg1 >var_6d58c1d552c2
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_ec8cde2a7f68_end
rmem reg0 >var_bdb8ae9739c5
set reg1 10
call >subtract
wmem >var_bdb8ae9739c5 reg0
rmem reg0 >var_a750f670ef53
add reg0 reg0 1
wmem >var_a750f670ef53 reg0
jmp >while_ec8cde2a7f68_begin
:while_ec8cde2a7f68_end
rmem reg0 >var_708debdd5935
rmem reg1 >var_bdb8ae9739c5
add reg0 reg0 reg1
wmem >var_708debdd5935 reg0
:end_6ee07d696169
rmem reg0 >var_fdc40d06d2f7
add reg0 reg0 1
wmem >var_fdc40d06d2f7 reg0
jmp >while_c2e87104e817_begin
:while_c2e87104e817_end
rmem reg0 >var_708debdd5935
call >print_number
rmem reg0 >var_708debdd5935
ret
ret
:int_end
set reg0 >int
jmp >main_end
:main
jmp >var_194ea9842172_end
:var_194ea9842172
:var_194ea9842172_end
wmem >var_194ea9842172 reg0
jmp >var_67958eee4a80_end
:var_67958eee4a80
:var_67958eee4a80_end
set reg0 0
wmem >var_67958eee4a80 reg0
:while_9f477308a2dc_begin
rmem reg0 >var_67958eee4a80
set reg1 100
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_9f477308a2dc_end
rmem reg0 >var_67958eee4a80
rmem reg7 >var_194ea9842172
call reg7
rmem reg0 >var_67958eee4a80
add reg0 reg0 1
wmem >var_67958eee4a80 reg0
jmp >while_9f477308a2dc_begin
:while_9f477308a2dc_end
ret
:main_end
set reg0 >main
jmp >var_dce39bf00bf5_end
:var_dce39bf00bf5
:var_dce39bf00bf5_end
jmp >function_0dd1f3549dfd_end
:function_0dd1f3549dfd
jmp >var_488bfc3462fb_end
:var_488bfc3462fb
:var_488bfc3462fb_end
wmem >var_488bfc3462fb reg0
rmem reg0 >var_488bfc3462fb
call >print_number
set reg0 10
out reg0
ret
:function_0dd1f3549dfd_end
set reg0 >function_0dd1f3549dfd
wmem >var_dce39bf00bf5 reg0
rmem reg0 >var_dce39bf00bf5
call >main

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

halt
