jmp >str_equal_end
:str_equal
jmp >var_4d81c4ed8396_end
:var_4d81c4ed8396
:var_4d81c4ed8396_end
jmp >var_a18489489eb1_end
:var_a18489489eb1
:var_a18489489eb1_end
wmem >var_4d81c4ed8396 reg0
wmem >var_a18489489eb1 reg1
jmp >var_789c5018954a_end
:var_789c5018954a
:var_789c5018954a_end
rmem reg0 >var_4d81c4ed8396
call >str_len
wmem >var_789c5018954a reg0
jmp >var_43f318b2b733_end
:var_43f318b2b733
:var_43f318b2b733_end
rmem reg0 >var_a18489489eb1
call >str_len
wmem >var_43f318b2b733 reg0
rmem reg0 >var_789c5018954a
rmem reg1 >var_43f318b2b733
eq reg0 reg0 reg1
call >not
jf reg0 >end_15e9d291c76d
set reg0 0
ret
:end_15e9d291c76d
jmp >var_964898fe4109_end
:var_964898fe4109
:var_964898fe4109_end
set reg0 0
wmem >var_964898fe4109 reg0
:for_38853f735380_begin
rmem reg0 >var_964898fe4109
rmem reg1 >var_789c5018954a
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_38853f735380_end
jmp >var_671c68df8ad6_end
:var_671c68df8ad6
:var_671c68df8ad6_end
rmem reg0 >var_4d81c4ed8396
rmem reg1 >var_964898fe4109
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_671c68df8ad6 reg0
jmp >var_d933f528b003_end
:var_d933f528b003
:var_d933f528b003_end
rmem reg0 >var_a18489489eb1
rmem reg1 >var_964898fe4109
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_d933f528b003 reg0
rmem reg0 >var_671c68df8ad6
rmem reg1 >var_d933f528b003
eq reg0 reg0 reg1
call >not
jf reg0 >end_2ee4fb33905e
set reg0 0
ret
:end_2ee4fb33905e
rmem reg0 >var_964898fe4109
add reg0 reg0 1
wmem >var_964898fe4109 reg0
jmp >for_38853f735380_begin
:for_38853f735380_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_e970b66eea64_end
:var_e970b66eea64
:var_e970b66eea64_end
set reg0 16382
wmem >var_e970b66eea64 reg0
:while_958f344177a9_begin
rmem reg0 >var_e970b66eea64
rmem reg0 reg0
call >not
jf reg0 >while_958f344177a9_end
rmem reg0 >var_e970b66eea64
set reg1 1
call >subtract
wmem >var_e970b66eea64 reg0
jmp >while_958f344177a9_begin
:while_958f344177a9_end
rmem reg0 >var_e970b66eea64
set reg1 2
add reg0 reg0 reg1
wmem >var_e970b66eea64 reg0
rmem reg0 >var_e970b66eea64
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_39bd70867f23_end
:var_39bd70867f23
:var_39bd70867f23_end
wmem >var_39bd70867f23 reg0
jmp >var_bd452abfff9f_end
:var_bd452abfff9f
:var_bd452abfff9f_end
call >alloc
wmem >var_bd452abfff9f reg0
jmp >var_dd150d3b56a7_end
:var_dd150d3b56a7
:var_dd150d3b56a7_end
rmem reg0 >var_bd452abfff9f
rmem reg1 >var_39bd70867f23
add reg0 reg0 reg1
wmem >var_dd150d3b56a7 reg0
rmem reg0 >var_dd150d3b56a7
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_bd452abfff9f
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_0e8d1a9b3b9e_end
:var_0e8d1a9b3b9e
:var_0e8d1a9b3b9e_end
jmp >var_8a24323d2bdb_end
:var_8a24323d2bdb
:var_8a24323d2bdb_end
jmp >var_2c76f29e213c_end
:var_2c76f29e213c
:var_2c76f29e213c_end
wmem >var_0e8d1a9b3b9e reg0
wmem >var_8a24323d2bdb reg1
wmem >var_2c76f29e213c reg2
jmp >var_bcb60030e997_end
:var_bcb60030e997
:var_bcb60030e997_end
set reg0 0
wmem >var_bcb60030e997 reg0
:while_c09371032da8_begin
rmem reg0 >var_bcb60030e997
rmem reg1 >var_2c76f29e213c
gt reg0 reg0 reg1
call >not
jf reg0 >while_c09371032da8_end
jmp >var_529b43036754_end
:var_529b43036754
:var_529b43036754_end
rmem reg0 >var_0e8d1a9b3b9e
rmem reg1 >var_bcb60030e997
add reg0 reg0 reg1
wmem >var_529b43036754 reg0
jmp >var_e52a7491e688_end
:var_e52a7491e688
:var_e52a7491e688_end
rmem reg0 >var_8a24323d2bdb
rmem reg1 >var_bcb60030e997
add reg0 reg0 reg1
wmem >var_e52a7491e688 reg0
rmem reg0 >var_e52a7491e688
rmem reg1 >var_529b43036754
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_bcb60030e997
add reg0 reg0 1
wmem >var_bcb60030e997 reg0
jmp >while_c09371032da8_begin
:while_c09371032da8_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_7d4b9e331a0b_end
:var_7d4b9e331a0b
:var_7d4b9e331a0b_end
wmem >var_7d4b9e331a0b reg0
jmp >var_8f556770f823_end
:var_8f556770f823
:var_8f556770f823_end
set reg0 0
wmem >var_8f556770f823 reg0
:while_5e6258bbf148_begin
rmem reg0 >var_7d4b9e331a0b
rmem reg0 reg0
jf reg0 >while_5e6258bbf148_end
rmem reg0 >var_7d4b9e331a0b
add reg0 reg0 1
wmem >var_7d4b9e331a0b reg0
rmem reg0 >var_8f556770f823
add reg0 reg0 1
wmem >var_8f556770f823 reg0
jmp >while_5e6258bbf148_begin
:while_5e6258bbf148_end
rmem reg0 >var_8f556770f823
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_633038bd6eda_end
:var_633038bd6eda
:var_633038bd6eda_end
jmp >var_3c544f3f8202_end
:var_3c544f3f8202
:var_3c544f3f8202_end
wmem >var_633038bd6eda reg0
wmem >var_3c544f3f8202 reg1
jmp >var_4773388021cb_end
:var_4773388021cb
:var_4773388021cb_end
rmem reg0 >var_633038bd6eda
call >str_len
wmem >var_4773388021cb reg0
jmp >var_02914a70fafc_end
:var_02914a70fafc
:var_02914a70fafc_end
rmem reg0 >var_3c544f3f8202
call >str_len
wmem >var_02914a70fafc reg0
jmp >var_3396de86d212_end
:var_3396de86d212
:var_3396de86d212_end
call >alloc
wmem >var_3396de86d212 reg0
rmem reg0 >var_633038bd6eda
rmem reg1 >var_3396de86d212
rmem reg2 >var_4773388021cb
call >mem_cp
jmp >var_85d22fcf3faa_end
:var_85d22fcf3faa
:var_85d22fcf3faa_end
rmem reg0 >var_3396de86d212
rmem reg1 >var_4773388021cb
add reg0 reg0 reg1
wmem >var_85d22fcf3faa reg0
rmem reg0 >var_02914a70fafc
add reg0 reg0 1
wmem >var_02914a70fafc reg0
rmem reg0 >var_3c544f3f8202
rmem reg1 >var_85d22fcf3faa
rmem reg2 >var_02914a70fafc
call >mem_cp
rmem reg0 >var_3396de86d212
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_f7e381ccab98_end
:var_f7e381ccab98
:var_f7e381ccab98_end
wmem >var_f7e381ccab98 reg0
jmp >var_435af6b6ffca_end
:var_435af6b6ffca
:var_435af6b6ffca_end
call >alloc
wmem >var_435af6b6ffca reg0
jmp >var_bc333c2ed6b8_end
:var_bc333c2ed6b8
:var_bc333c2ed6b8_end
rmem reg0 >var_f7e381ccab98
call >str_len
wmem >var_bc333c2ed6b8 reg0
jmp >var_e791c4d1a5a7_end
:var_e791c4d1a5a7
:var_e791c4d1a5a7_end
set reg0 0
wmem >var_e791c4d1a5a7 reg0
:while_bdb6106cfa75_begin
rmem reg0 >var_e791c4d1a5a7
rmem reg1 >var_bc333c2ed6b8
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_bdb6106cfa75_end
jmp >var_00da58ec635d_end
:var_00da58ec635d
:var_00da58ec635d_end
rmem reg0 >var_f7e381ccab98
rmem reg1 >var_e791c4d1a5a7
add reg0 reg0 reg1
wmem >var_00da58ec635d reg0
rmem reg0 >var_00da58ec635d
rmem reg0 reg0
rmem reg0 >var_00da58ec635d
rmem reg0 reg0
push reg0
rmem reg0 >var_e791c4d1a5a7
add reg0 reg0 1
wmem >var_e791c4d1a5a7 reg0
jmp >while_bdb6106cfa75_begin
:while_bdb6106cfa75_end
jmp >var_4596a07e781f_end
:var_4596a07e781f
:var_4596a07e781f_end
pop reg0
wmem >var_4596a07e781f reg0
set reg0 0
wmem >var_e791c4d1a5a7 reg0
:while_764bcdd3f81b_begin
rmem reg0 >var_e791c4d1a5a7
rmem reg1 >var_bc333c2ed6b8
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_764bcdd3f81b_end
jmp >var_32e2c6dc8887_end
:var_32e2c6dc8887
:var_32e2c6dc8887_end
rmem reg0 >var_435af6b6ffca
rmem reg1 >var_e791c4d1a5a7
add reg0 reg0 reg1
wmem >var_32e2c6dc8887 reg0
rmem reg0 >var_32e2c6dc8887
rmem reg1 >var_4596a07e781f
wmem reg0 reg1
rmem reg0 >var_e791c4d1a5a7
add reg0 reg0 1
wmem >var_e791c4d1a5a7 reg0
pop reg0
wmem >var_4596a07e781f reg0
jmp >while_764bcdd3f81b_begin
:while_764bcdd3f81b_end
rmem reg0 >var_4596a07e781f
rmem reg0 >var_4596a07e781f
push reg0
rmem reg0 >var_435af6b6ffca
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_8b7c894526f8_end
:var_8b7c894526f8
:var_8b7c894526f8_end
set reg0 16384
wmem >var_8b7c894526f8 reg0
jmp >var_6c187401f584_end
:var_6c187401f584
:var_6c187401f584_end
in reg0
wmem >var_6c187401f584 reg0
jmp >var_1c8f36c90e2e_end
:var_1c8f36c90e2e
:var_1c8f36c90e2e_end
rmem reg0 >var_6c187401f584
set reg1 10
eq reg0 reg0 reg1
wmem >var_1c8f36c90e2e reg0
:while_ffa5aaaee2cb_begin
rmem reg0 >var_1c8f36c90e2e
rmem reg1 >var_6c187401f584
call >and
call >not
jf reg0 >while_ffa5aaaee2cb_end
rmem reg0 >var_8b7c894526f8
rmem reg1 >var_6c187401f584
wmem reg0 reg1
rmem reg0 >var_8b7c894526f8
add reg0 reg0 1
wmem >var_8b7c894526f8 reg0
in reg0
wmem >var_6c187401f584 reg0
rmem reg0 >var_6c187401f584
set reg1 10
eq reg0 reg0 reg1
wmem >var_1c8f36c90e2e reg0
jmp >while_ffa5aaaee2cb_begin
:while_ffa5aaaee2cb_end
rmem reg0 >var_8b7c894526f8
set reg1 0
wmem reg0 reg1
jmp >var_23b98a5c2097_end
:var_23b98a5c2097
:var_23b98a5c2097_end
call >alloc
wmem >var_23b98a5c2097 reg0
jmp >var_f6dc85755b67_end
:var_f6dc85755b67
:var_f6dc85755b67_end
set reg0 16384
call >str_len
wmem >var_f6dc85755b67 reg0
set reg0 16384
rmem reg1 >var_23b98a5c2097
rmem reg2 >var_f6dc85755b67
call >mem_cp
rmem reg0 >var_23b98a5c2097
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_10959c90c496_end
:var_10959c90c496
:var_10959c90c496_end
wmem >var_10959c90c496 reg0
:while_adc9a89c71a4_begin
rmem reg0 >var_10959c90c496
rmem reg0 reg0
jf reg0 >while_adc9a89c71a4_end
rmem reg0 >var_10959c90c496
rmem reg0 reg0
out reg0
rmem reg0 >var_10959c90c496
add reg0 reg0 1
wmem >var_10959c90c496 reg0
jmp >while_adc9a89c71a4_begin
:while_adc9a89c71a4_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_d24d871ee7ec_end
:var_d24d871ee7ec
:var_d24d871ee7ec_end
wmem >var_d24d871ee7ec reg0
rmem reg0 >var_d24d871ee7ec
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_d3dba87fba78_end
:var_d3dba87fba78
:var_d3dba87fba78_end
wmem >var_d3dba87fba78 reg0
rmem reg0 >var_d3dba87fba78
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_c4874ae99f89
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_c4874ae99f89
jmp >var_df4ce605075e_end
:var_df4ce605075e
:var_df4ce605075e_end
jmp >var_353d209c74f9_end
:var_353d209c74f9
:var_353d209c74f9_end
set reg0 0
wmem >var_353d209c74f9 reg0
:while_d3710cf94717_begin
rmem reg0 >var_d3dba87fba78
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_d3710cf94717_end
rmem reg0 >var_d3dba87fba78
set reg1 10
mod reg0 reg0 reg1
wmem >var_df4ce605075e reg0
rmem reg0 >var_df4ce605075e
rmem reg0 >var_df4ce605075e
push reg0
rmem reg0 >var_353d209c74f9
add reg0 reg0 1
wmem >var_353d209c74f9 reg0
rmem reg0 >var_d3dba87fba78
set reg1 10
call >divide
wmem >var_d3dba87fba78 reg0
jmp >while_d3710cf94717_begin
:while_d3710cf94717_end
rmem reg0 >var_d3dba87fba78
set reg1 10
mod reg0 reg0 reg1
wmem >var_df4ce605075e reg0
rmem reg0 >var_df4ce605075e
rmem reg0 >var_df4ce605075e
push reg0
rmem reg0 >var_353d209c74f9
add reg0 reg0 1
wmem >var_353d209c74f9 reg0
jmp >var_35ff4a14502e_end
:var_35ff4a14502e
:var_35ff4a14502e_end
set reg0 0
wmem >var_35ff4a14502e reg0
:while_b807b8d7ed88_begin
rmem reg0 >var_35ff4a14502e
rmem reg1 >var_353d209c74f9
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_b807b8d7ed88_end
rmem reg0 >var_35ff4a14502e
set reg1 1
add reg0 reg0 reg1
wmem >var_35ff4a14502e reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_b807b8d7ed88_begin
:while_b807b8d7ed88_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_ade8e999d17c_end
:var_ade8e999d17c
:var_ade8e999d17c_end
set reg0 0
wmem >var_ade8e999d17c reg0
:while_58b8da06a256_begin
rmem reg0 >var_ade8e999d17c
rmem reg0 reg0
jf reg0 >while_58b8da06a256_end
rmem reg0 >var_ade8e999d17c
add reg0 reg0 1
wmem >var_ade8e999d17c reg0
rmem reg0 >var_ade8e999d17c
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_58b8da06a256_begin
:while_58b8da06a256_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_8e94d72fa9b8_end
:var_8e94d72fa9b8
:var_8e94d72fa9b8_end
wmem >var_8e94d72fa9b8 reg0
jmp >var_c289cf43488d_end
:var_c289cf43488d
:var_c289cf43488d_end
rmem reg0 >var_8e94d72fa9b8
call >flip_str
wmem >var_c289cf43488d reg0
jmp >var_6f5436082894_end
:var_6f5436082894
:var_6f5436082894_end
rmem reg0 >var_c289cf43488d
call >str_len
wmem >var_6f5436082894 reg0
rmem reg0 >var_6f5436082894
set reg1 1
call >subtract
wmem >var_6f5436082894 reg0
jmp >var_a77914e8d35d_end
:var_a77914e8d35d
:var_a77914e8d35d_end
set reg0 0
wmem >var_a77914e8d35d reg0
jmp >var_4adba372feb4_end
:var_4adba372feb4
:var_4adba372feb4_end
set reg0 0
wmem >var_4adba372feb4 reg0
:while_c0581b18c419_begin
rmem reg0 >var_a77914e8d35d
rmem reg1 >var_6f5436082894
gt reg0 reg0 reg1
call >not
jf reg0 >while_c0581b18c419_end
jmp >var_8a862e254918_end
:var_8a862e254918
:var_8a862e254918_end
rmem reg0 >var_c289cf43488d
rmem reg1 >var_a77914e8d35d
add reg0 reg0 reg1
wmem >var_8a862e254918 reg0
rmem reg0 >var_8a862e254918
rmem reg0 reg0
wmem >var_8a862e254918 reg0
jmp >var_2191eaa27661_end
:var_2191eaa27661
:var_2191eaa27661_end
rmem reg0 >var_8a862e254918
set reg1 47
gt reg0 reg0 reg1
wmem >var_2191eaa27661 reg0
jmp >var_9a0bfccbff0a_end
:var_9a0bfccbff0a
:var_9a0bfccbff0a_end
rmem reg0 >var_8a862e254918
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_9a0bfccbff0a reg0
rmem reg0 >var_2191eaa27661
rmem reg1 >var_9a0bfccbff0a
call >and
jf reg0 >end_782cff9206da
jmp >var_83f79b3bc431_end
:var_83f79b3bc431
:var_83f79b3bc431_end
rmem reg0 >var_8a862e254918
set reg1 48
call >subtract
wmem >var_83f79b3bc431 reg0
rmem reg0 >var_83f79b3bc431
call >print_number
set reg0 10
out reg0
jmp >var_765d99f7e4d5_end
:var_765d99f7e4d5
:var_765d99f7e4d5_end
set reg0 0
wmem >var_765d99f7e4d5 reg0
jmp >var_fde8d54a568a_end
:var_fde8d54a568a
:var_fde8d54a568a_end
rmem reg0 >var_a77914e8d35d
set reg1 1
call >subtract
wmem >var_fde8d54a568a reg0
:while_b7e0d3ae9cdc_begin
rmem reg0 >var_765d99f7e4d5
rmem reg1 >var_fde8d54a568a
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_b7e0d3ae9cdc_end
rmem reg0 >var_83f79b3bc431
set reg1 10
mult reg0 reg0 reg1
wmem >var_83f79b3bc431 reg0
rmem reg0 >var_765d99f7e4d5
add reg0 reg0 1
wmem >var_765d99f7e4d5 reg0
jmp >while_b7e0d3ae9cdc_begin
:while_b7e0d3ae9cdc_end
rmem reg0 >var_4adba372feb4
rmem reg1 >var_83f79b3bc431
add reg0 reg0 reg1
wmem >var_4adba372feb4 reg0
:end_782cff9206da
rmem reg0 >var_a77914e8d35d
add reg0 reg0 1
wmem >var_a77914e8d35d reg0
jmp >while_c0581b18c419_begin
:while_c0581b18c419_end
rmem reg0 >var_4adba372feb4
call >print_number
rmem reg0 >var_4adba372feb4
ret
ret
:int_end
set reg0 >int
jmp >main_end
:main
jmp >var_419f80af9d8a_end
:var_419f80af9d8a
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
:var_419f80af9d8a_end
wmem >var_419f80af9d8a &H
set reg0 >var_419f80af9d8a
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

