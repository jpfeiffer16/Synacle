jmp >str_equal_end
:str_equal
jmp >var_a0d03bdc3068_end
:var_a0d03bdc3068
:var_a0d03bdc3068_end
jmp >var_48c334332d03_end
:var_48c334332d03
:var_48c334332d03_end
wmem >var_a0d03bdc3068 reg0
wmem >var_48c334332d03 reg1
jmp >var_215704c9a25e_end
:var_215704c9a25e
:var_215704c9a25e_end
rmem reg0 >var_a0d03bdc3068
call >str_len
wmem >var_215704c9a25e reg0
jmp >var_730322c9181b_end
:var_730322c9181b
:var_730322c9181b_end
rmem reg0 >var_48c334332d03
call >str_len
wmem >var_730322c9181b reg0
rmem reg0 >var_215704c9a25e
rmem reg1 >var_730322c9181b
eq reg0 reg0 reg1
call >not
jf reg0 >end_d912af0077e6
set reg0 0
ret
:end_d912af0077e6
jmp >var_c342f856bd78_end
:var_c342f856bd78
:var_c342f856bd78_end
set reg0 0
wmem >var_c342f856bd78 reg0
:for_f8fcb1c42d9c_begin
rmem reg0 >var_c342f856bd78
rmem reg1 >var_215704c9a25e
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_f8fcb1c42d9c_end
jmp >var_714f36a3c2f3_end
:var_714f36a3c2f3
:var_714f36a3c2f3_end
rmem reg0 >var_a0d03bdc3068
rmem reg1 >var_c342f856bd78
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_714f36a3c2f3 reg0
jmp >var_9646c38f28e1_end
:var_9646c38f28e1
:var_9646c38f28e1_end
rmem reg0 >var_48c334332d03
rmem reg1 >var_c342f856bd78
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_9646c38f28e1 reg0
rmem reg0 >var_714f36a3c2f3
rmem reg1 >var_9646c38f28e1
eq reg0 reg0 reg1
call >not
jf reg0 >end_f38f11b7407d
set reg0 0
ret
:end_f38f11b7407d
rmem reg0 >var_c342f856bd78
add reg0 reg0 1
wmem >var_c342f856bd78 reg0
jmp >for_f8fcb1c42d9c_begin
:for_f8fcb1c42d9c_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_811619e16991_end
:var_811619e16991
:var_811619e16991_end
set reg0 16382
wmem >var_811619e16991 reg0
:while_21d7926dcaa0_begin
rmem reg0 >var_811619e16991
rmem reg0 reg0
call >not
jf reg0 >while_21d7926dcaa0_end
rmem reg0 >var_811619e16991
set reg1 1
call >subtract
wmem >var_811619e16991 reg0
jmp >while_21d7926dcaa0_begin
:while_21d7926dcaa0_end
rmem reg0 >var_811619e16991
set reg1 2
add reg0 reg0 reg1
wmem >var_811619e16991 reg0
rmem reg0 >var_811619e16991
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_d88e58f57cbc_end
:var_d88e58f57cbc
:var_d88e58f57cbc_end
wmem >var_d88e58f57cbc reg0
jmp >var_e6c93dd74cf6_end
:var_e6c93dd74cf6
:var_e6c93dd74cf6_end
call >alloc
wmem >var_e6c93dd74cf6 reg0
jmp >var_ae6ffc88d047_end
:var_ae6ffc88d047
:var_ae6ffc88d047_end
rmem reg0 >var_e6c93dd74cf6
rmem reg1 >var_d88e58f57cbc
add reg0 reg0 reg1
wmem >var_ae6ffc88d047 reg0
rmem reg0 >var_ae6ffc88d047
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_e6c93dd74cf6
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_acd2780a6276_end
:var_acd2780a6276
:var_acd2780a6276_end
jmp >var_8a65bfdf0187_end
:var_8a65bfdf0187
:var_8a65bfdf0187_end
jmp >var_e441aa18843c_end
:var_e441aa18843c
:var_e441aa18843c_end
wmem >var_acd2780a6276 reg0
wmem >var_8a65bfdf0187 reg1
wmem >var_e441aa18843c reg2
jmp >var_8c768169c0ad_end
:var_8c768169c0ad
:var_8c768169c0ad_end
set reg0 0
wmem >var_8c768169c0ad reg0
:while_5930780c22e4_begin
rmem reg0 >var_8c768169c0ad
rmem reg1 >var_e441aa18843c
gt reg0 reg0 reg1
call >not
jf reg0 >while_5930780c22e4_end
jmp >var_61d9ee66d2b2_end
:var_61d9ee66d2b2
:var_61d9ee66d2b2_end
rmem reg0 >var_acd2780a6276
rmem reg1 >var_8c768169c0ad
add reg0 reg0 reg1
wmem >var_61d9ee66d2b2 reg0
jmp >var_7b3c9c80f394_end
:var_7b3c9c80f394
:var_7b3c9c80f394_end
rmem reg0 >var_8a65bfdf0187
rmem reg1 >var_8c768169c0ad
add reg0 reg0 reg1
wmem >var_7b3c9c80f394 reg0
rmem reg0 >var_7b3c9c80f394
rmem reg1 >var_61d9ee66d2b2
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_8c768169c0ad
add reg0 reg0 1
wmem >var_8c768169c0ad reg0
jmp >while_5930780c22e4_begin
:while_5930780c22e4_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_af6678837420_end
:var_af6678837420
:var_af6678837420_end
wmem >var_af6678837420 reg0
jmp >var_1d8215a54410_end
:var_1d8215a54410
:var_1d8215a54410_end
set reg0 0
wmem >var_1d8215a54410 reg0
:while_add77848d072_begin
rmem reg0 >var_af6678837420
rmem reg0 reg0
jf reg0 >while_add77848d072_end
rmem reg0 >var_af6678837420
add reg0 reg0 1
wmem >var_af6678837420 reg0
rmem reg0 >var_1d8215a54410
add reg0 reg0 1
wmem >var_1d8215a54410 reg0
jmp >while_add77848d072_begin
:while_add77848d072_end
rmem reg0 >var_1d8215a54410
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_290cbb67db07_end
:var_290cbb67db07
:var_290cbb67db07_end
jmp >var_5e2c56726e8b_end
:var_5e2c56726e8b
:var_5e2c56726e8b_end
wmem >var_290cbb67db07 reg0
wmem >var_5e2c56726e8b reg1
jmp >var_b58a3c9f9c5a_end
:var_b58a3c9f9c5a
:var_b58a3c9f9c5a_end
rmem reg0 >var_290cbb67db07
call >str_len
wmem >var_b58a3c9f9c5a reg0
jmp >var_c6947e39f1ab_end
:var_c6947e39f1ab
:var_c6947e39f1ab_end
rmem reg0 >var_5e2c56726e8b
call >str_len
wmem >var_c6947e39f1ab reg0
jmp >var_0af6c73f90a8_end
:var_0af6c73f90a8
:var_0af6c73f90a8_end
call >alloc
wmem >var_0af6c73f90a8 reg0
rmem reg0 >var_290cbb67db07
rmem reg1 >var_0af6c73f90a8
rmem reg2 >var_b58a3c9f9c5a
call >mem_cp
jmp >var_cd5fccef75b4_end
:var_cd5fccef75b4
:var_cd5fccef75b4_end
rmem reg0 >var_0af6c73f90a8
rmem reg1 >var_b58a3c9f9c5a
add reg0 reg0 reg1
wmem >var_cd5fccef75b4 reg0
rmem reg0 >var_c6947e39f1ab
add reg0 reg0 1
wmem >var_c6947e39f1ab reg0
rmem reg0 >var_5e2c56726e8b
rmem reg1 >var_cd5fccef75b4
rmem reg2 >var_c6947e39f1ab
call >mem_cp
rmem reg0 >var_0af6c73f90a8
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_d92e33a3f4ad_end
:var_d92e33a3f4ad
:var_d92e33a3f4ad_end
wmem >var_d92e33a3f4ad reg0
jmp >var_b106d80c8d64_end
:var_b106d80c8d64
:var_b106d80c8d64_end
call >alloc
wmem >var_b106d80c8d64 reg0
jmp >var_9bea85df5b88_end
:var_9bea85df5b88
:var_9bea85df5b88_end
rmem reg0 >var_d92e33a3f4ad
call >str_len
wmem >var_9bea85df5b88 reg0
jmp >var_259cc93cf6a9_end
:var_259cc93cf6a9
:var_259cc93cf6a9_end
set reg0 0
wmem >var_259cc93cf6a9 reg0
:while_9e3a88607211_begin
rmem reg0 >var_259cc93cf6a9
rmem reg1 >var_9bea85df5b88
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_9e3a88607211_end
jmp >var_fd557efa0b02_end
:var_fd557efa0b02
:var_fd557efa0b02_end
rmem reg0 >var_d92e33a3f4ad
rmem reg1 >var_259cc93cf6a9
add reg0 reg0 reg1
wmem >var_fd557efa0b02 reg0
rmem reg0 >var_fd557efa0b02
rmem reg0 reg0
rmem reg0 >var_fd557efa0b02
rmem reg0 reg0
push reg0
rmem reg0 >var_259cc93cf6a9
add reg0 reg0 1
wmem >var_259cc93cf6a9 reg0
jmp >while_9e3a88607211_begin
:while_9e3a88607211_end
jmp >var_76f4bb8f8499_end
:var_76f4bb8f8499
:var_76f4bb8f8499_end
pop reg0
wmem >var_76f4bb8f8499 reg0
set reg0 0
wmem >var_259cc93cf6a9 reg0
:while_db7a62369771_begin
rmem reg0 >var_259cc93cf6a9
rmem reg1 >var_9bea85df5b88
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_db7a62369771_end
jmp >var_b03a08f5293a_end
:var_b03a08f5293a
:var_b03a08f5293a_end
rmem reg0 >var_b106d80c8d64
rmem reg1 >var_259cc93cf6a9
add reg0 reg0 reg1
wmem >var_b03a08f5293a reg0
rmem reg0 >var_b03a08f5293a
rmem reg1 >var_76f4bb8f8499
wmem reg0 reg1
rmem reg0 >var_259cc93cf6a9
add reg0 reg0 1
wmem >var_259cc93cf6a9 reg0
pop reg0
wmem >var_76f4bb8f8499 reg0
jmp >while_db7a62369771_begin
:while_db7a62369771_end
rmem reg0 >var_76f4bb8f8499
rmem reg0 >var_76f4bb8f8499
push reg0
rmem reg0 >var_b106d80c8d64
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_856daa0ffd31_end
:var_856daa0ffd31
:var_856daa0ffd31_end
set reg0 16384
wmem >var_856daa0ffd31 reg0
jmp >var_e197a96581de_end
:var_e197a96581de
:var_e197a96581de_end
in reg0
wmem >var_e197a96581de reg0
jmp >var_f4535f6b6ab6_end
:var_f4535f6b6ab6
:var_f4535f6b6ab6_end
rmem reg0 >var_e197a96581de
set reg1 10
eq reg0 reg0 reg1
wmem >var_f4535f6b6ab6 reg0
:while_3eb500d12ab4_begin
rmem reg0 >var_f4535f6b6ab6
rmem reg1 >var_e197a96581de
call >and
call >not
jf reg0 >while_3eb500d12ab4_end
rmem reg0 >var_856daa0ffd31
rmem reg1 >var_e197a96581de
wmem reg0 reg1
rmem reg0 >var_856daa0ffd31
add reg0 reg0 1
wmem >var_856daa0ffd31 reg0
in reg0
wmem >var_e197a96581de reg0
rmem reg0 >var_e197a96581de
set reg1 10
eq reg0 reg0 reg1
wmem >var_f4535f6b6ab6 reg0
jmp >while_3eb500d12ab4_begin
:while_3eb500d12ab4_end
rmem reg0 >var_856daa0ffd31
set reg1 0
wmem reg0 reg1
jmp >var_b561853d20e9_end
:var_b561853d20e9
:var_b561853d20e9_end
call >alloc
wmem >var_b561853d20e9 reg0
jmp >var_54c6615f179a_end
:var_54c6615f179a
:var_54c6615f179a_end
set reg0 16384
call >str_len
wmem >var_54c6615f179a reg0
set reg0 16384
rmem reg1 >var_b561853d20e9
rmem reg2 >var_54c6615f179a
call >mem_cp
rmem reg0 >var_b561853d20e9
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_15773dc05ad5_end
:var_15773dc05ad5
:var_15773dc05ad5_end
wmem >var_15773dc05ad5 reg0
:while_d3d1df8c96b2_begin
rmem reg0 >var_15773dc05ad5
rmem reg0 reg0
jf reg0 >while_d3d1df8c96b2_end
rmem reg0 >var_15773dc05ad5
rmem reg0 reg0
out reg0
rmem reg0 >var_15773dc05ad5
add reg0 reg0 1
wmem >var_15773dc05ad5 reg0
jmp >while_d3d1df8c96b2_begin
:while_d3d1df8c96b2_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_a1bcb9561e05_end
:var_a1bcb9561e05
:var_a1bcb9561e05_end
wmem >var_a1bcb9561e05 reg0
rmem reg0 >var_a1bcb9561e05
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_fc73dbe56c2e_end
:var_fc73dbe56c2e
:var_fc73dbe56c2e_end
wmem >var_fc73dbe56c2e reg0
rmem reg0 >var_fc73dbe56c2e
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_c1dce0753a9f
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_c1dce0753a9f
jmp >var_67d373ec5a15_end
:var_67d373ec5a15
:var_67d373ec5a15_end
jmp >var_09e433a8a0e2_end
:var_09e433a8a0e2
:var_09e433a8a0e2_end
set reg0 0
wmem >var_09e433a8a0e2 reg0
:while_2ea49886e023_begin
rmem reg0 >var_fc73dbe56c2e
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_2ea49886e023_end
rmem reg0 >var_fc73dbe56c2e
set reg1 10
mod reg0 reg0 reg1
wmem >var_67d373ec5a15 reg0
rmem reg0 >var_67d373ec5a15
rmem reg0 >var_67d373ec5a15
push reg0
rmem reg0 >var_09e433a8a0e2
add reg0 reg0 1
wmem >var_09e433a8a0e2 reg0
rmem reg0 >var_fc73dbe56c2e
set reg1 10
call >divide
wmem >var_fc73dbe56c2e reg0
jmp >while_2ea49886e023_begin
:while_2ea49886e023_end
rmem reg0 >var_fc73dbe56c2e
set reg1 10
mod reg0 reg0 reg1
wmem >var_67d373ec5a15 reg0
rmem reg0 >var_67d373ec5a15
rmem reg0 >var_67d373ec5a15
push reg0
rmem reg0 >var_09e433a8a0e2
add reg0 reg0 1
wmem >var_09e433a8a0e2 reg0
jmp >var_2ef75db1cc71_end
:var_2ef75db1cc71
:var_2ef75db1cc71_end
set reg0 0
wmem >var_2ef75db1cc71 reg0
:while_09da74f49780_begin
rmem reg0 >var_2ef75db1cc71
rmem reg1 >var_09e433a8a0e2
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_09da74f49780_end
rmem reg0 >var_2ef75db1cc71
set reg1 1
add reg0 reg0 reg1
wmem >var_2ef75db1cc71 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_09da74f49780_begin
:while_09da74f49780_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_abc48380eb3b_end
:var_abc48380eb3b
:var_abc48380eb3b_end
set reg0 0
wmem >var_abc48380eb3b reg0
:while_162bcf00e309_begin
rmem reg0 >var_abc48380eb3b
rmem reg0 reg0
jf reg0 >while_162bcf00e309_end
rmem reg0 >var_abc48380eb3b
add reg0 reg0 1
wmem >var_abc48380eb3b reg0
rmem reg0 >var_abc48380eb3b
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_162bcf00e309_begin
:while_162bcf00e309_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_fdc532ec9d48_end
:var_fdc532ec9d48
:var_fdc532ec9d48_end
wmem >var_fdc532ec9d48 reg0
jmp >var_a7b7c8a9f6f6_end
:var_a7b7c8a9f6f6
:var_a7b7c8a9f6f6_end
rmem reg0 >var_fdc532ec9d48
call >flip_str
wmem >var_a7b7c8a9f6f6 reg0
jmp >var_f6b41ebe9c0f_end
:var_f6b41ebe9c0f
:var_f6b41ebe9c0f_end
rmem reg0 >var_a7b7c8a9f6f6
call >str_len
wmem >var_f6b41ebe9c0f reg0
rmem reg0 >var_f6b41ebe9c0f
set reg1 1
call >subtract
wmem >var_f6b41ebe9c0f reg0
jmp >var_953a15f6aa21_end
:var_953a15f6aa21
:var_953a15f6aa21_end
set reg0 0
wmem >var_953a15f6aa21 reg0
jmp >var_147022f1066e_end
:var_147022f1066e
:var_147022f1066e_end
set reg0 0
wmem >var_147022f1066e reg0
:while_846e9ddfd6b0_begin
rmem reg0 >var_953a15f6aa21
rmem reg1 >var_f6b41ebe9c0f
gt reg0 reg0 reg1
call >not
jf reg0 >while_846e9ddfd6b0_end
jmp >var_6da6a63028cf_end
:var_6da6a63028cf
:var_6da6a63028cf_end
rmem reg0 >var_a7b7c8a9f6f6
rmem reg1 >var_953a15f6aa21
add reg0 reg0 reg1
wmem >var_6da6a63028cf reg0
rmem reg0 >var_6da6a63028cf
rmem reg0 reg0
wmem >var_6da6a63028cf reg0
jmp >var_e400adfe20a2_end
:var_e400adfe20a2
:var_e400adfe20a2_end
rmem reg0 >var_6da6a63028cf
set reg1 47
gt reg0 reg0 reg1
wmem >var_e400adfe20a2 reg0
jmp >var_e11a43cd0ff9_end
:var_e11a43cd0ff9
:var_e11a43cd0ff9_end
rmem reg0 >var_6da6a63028cf
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_e11a43cd0ff9 reg0
rmem reg0 >var_e400adfe20a2
rmem reg1 >var_e11a43cd0ff9
call >and
jf reg0 >end_20e7844750d8
jmp >var_0e0b42539f1c_end
:var_0e0b42539f1c
:var_0e0b42539f1c_end
rmem reg0 >var_6da6a63028cf
set reg1 48
call >subtract
wmem >var_0e0b42539f1c reg0
rmem reg0 >var_0e0b42539f1c
call >print_number
set reg0 10
out reg0
jmp >var_68bc87384c71_end
:var_68bc87384c71
:var_68bc87384c71_end
set reg0 0
wmem >var_68bc87384c71 reg0
jmp >var_bc9e140674f7_end
:var_bc9e140674f7
:var_bc9e140674f7_end
rmem reg0 >var_953a15f6aa21
set reg1 1
call >subtract
wmem >var_bc9e140674f7 reg0
:while_bd83fc4df4d0_begin
rmem reg0 >var_68bc87384c71
rmem reg1 >var_bc9e140674f7
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_bd83fc4df4d0_end
rmem reg0 >var_0e0b42539f1c
set reg1 10
mult reg0 reg0 reg1
wmem >var_0e0b42539f1c reg0
rmem reg0 >var_68bc87384c71
add reg0 reg0 1
wmem >var_68bc87384c71 reg0
jmp >while_bd83fc4df4d0_begin
:while_bd83fc4df4d0_end
rmem reg0 >var_147022f1066e
rmem reg1 >var_0e0b42539f1c
add reg0 reg0 reg1
wmem >var_147022f1066e reg0
:end_20e7844750d8
rmem reg0 >var_953a15f6aa21
add reg0 reg0 1
wmem >var_953a15f6aa21 reg0
jmp >while_846e9ddfd6b0_begin
:while_846e9ddfd6b0_end
rmem reg0 >var_147022f1066e
call >print_number
rmem reg0 >var_147022f1066e
ret
ret
:int_end
set reg0 >int
jmp >var_647282b8f6c0_end
:var_647282b8f6c0
:var_647282b8f6c0_end
set reg0 3
wmem >var_647282b8f6c0 reg0
jmp >main_end
:main
:while_f3ee93a05972_begin
set reg0 1
jf reg0 >while_f3ee93a05972_end
jmp >var_777423fa0051_end
:var_777423fa0051
&o
&u
32
&h
&a
&v
&e
32
0
:var_777423fa0051_end
wmem >var_777423fa0051 &Y
set reg0 >var_777423fa0051
call >print
rmem reg0 >var_647282b8f6c0
call >print_number
jmp >var_0c4e59cb0c6f_end
:var_0c4e59cb0c6f
&b
&o
&t
&t
&l
&e
&s
32
&l
&e
&f
&t
&.
32
&W
&h
&a
&t
32
&d
&o
32
&y
&o
&u
32
&d
&o
&?
0
:var_0c4e59cb0c6f_end
wmem >var_0c4e59cb0c6f 32
set reg0 >var_0c4e59cb0c6f
call >println
jmp >var_9f8a2f7c3c08_end
:var_9f8a2f7c3c08
:var_9f8a2f7c3c08_end
call >input
wmem >var_9f8a2f7c3c08 reg0
rmem reg0 >var_9f8a2f7c3c08
jmp >var_85ce09891bb4_end
:var_85ce09891bb4
0
:var_85ce09891bb4_end
wmem >var_85ce09891bb4 &+
set reg1 >var_85ce09891bb4
call >str_equal
jf reg0 >end_3373b007869c
jmp >var_677b75adce22_end
:var_677b75adce22
&o
&u
32
&a
&d
&d
32
&o
&n
&e
0
:var_677b75adce22_end
wmem >var_677b75adce22 &Y
set reg0 >var_677b75adce22
call >println
rmem reg0 >var_647282b8f6c0
add reg0 reg0 1
wmem >var_647282b8f6c0 reg0
:end_3373b007869c
rmem reg0 >var_9f8a2f7c3c08
jmp >var_ed0403089664_end
:var_ed0403089664
0
:var_ed0403089664_end
wmem >var_ed0403089664 &-
set reg1 >var_ed0403089664
call >str_equal
jf reg0 >end_1ec9fff7f0f6
jmp >var_4f9071766e30_end
:var_4f9071766e30
&o
&u
32
&d
&r
&i
&n
&k
32
&o
&n
&e
0
:var_4f9071766e30_end
wmem >var_4f9071766e30 &Y
set reg0 >var_4f9071766e30
call >println
rmem reg0 >var_647282b8f6c0
set reg1 1
call >subtract
wmem >var_647282b8f6c0 reg0
:end_1ec9fff7f0f6
rmem reg0 >var_647282b8f6c0
set reg1 1
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >end_19af29a5aa24
jmp >var_b78ecee84df3_end
:var_b78ecee84df3
&o
&u
32
&d
&i
&e
&.
&.
&.
0
:var_b78ecee84df3_end
wmem >var_b78ecee84df3 &Y
set reg0 >var_b78ecee84df3
call >println
ret
:end_19af29a5aa24
jmp >while_f3ee93a05972_begin
:while_f3ee93a05972_end
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

