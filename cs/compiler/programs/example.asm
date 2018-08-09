jmp >alloc_end
:alloc
jmp >var_d0c7d417c47a_end
:var_d0c7d417c47a
:var_d0c7d417c47a_end
set reg0 0
wmem >var_d0c7d417c47a reg0
jmp >var_5abf877ebaa3_end
:var_5abf877ebaa3
:var_5abf877ebaa3_end
set reg0 0
wmem >var_5abf877ebaa3 reg0
:while_19d74d6797fb_begin
rmem reg0 >var_5abf877ebaa3
set reg1 6
gt reg0 reg0 reg1
call >not
jf reg0 >while_19d74d6797fb_end
jmp >var_937e75df5cd4_end
:var_937e75df5cd4
:var_937e75df5cd4_end
rmem reg0 >var_d0c7d417c47a
rmem reg0 reg0
wmem >var_937e75df5cd4 reg0
rmem reg0 >var_937e75df5cd4
call >not
jf reg0 >end_664197faa7c1
rmem reg0 >var_5abf877ebaa3
add reg0 reg0 1
wmem >var_5abf877ebaa3 reg0
:end_664197faa7c1
rmem reg0 >var_937e75df5cd4
jf reg0 >end_2d99319e8581
set reg0 0
wmem >var_5abf877ebaa3 reg0
:end_2d99319e8581
rmem reg0 >var_d0c7d417c47a
add reg0 reg0 1
wmem >var_d0c7d417c47a reg0
jmp >while_19d74d6797fb_begin
:while_19d74d6797fb_end
rmem reg0 >var_d0c7d417c47a
set reg1 1
call >subtract
wmem >var_d0c7d417c47a reg0
rmem reg0 >var_d0c7d417c47a
ret
ret
:alloc_end
set reg0 >alloc
jmp >mem_cp_end
:mem_cp
jmp >var_b7073a7f80e5_end
:var_b7073a7f80e5
:var_b7073a7f80e5_end
jmp >var_ba2396295c3c_end
:var_ba2396295c3c
:var_ba2396295c3c_end
jmp >var_5adbb5e13d64_end
:var_5adbb5e13d64
:var_5adbb5e13d64_end
wmem >var_b7073a7f80e5 reg0
wmem >var_ba2396295c3c reg1
wmem >var_5adbb5e13d64 reg2
jmp >var_e31fa340291b_end
:var_e31fa340291b
:var_e31fa340291b_end
set reg0 0
wmem >var_e31fa340291b reg0
:while_0be324fa122b_begin
rmem reg0 >var_e31fa340291b
rmem reg1 >var_5adbb5e13d64
gt reg0 reg0 reg1
call >not
jf reg0 >while_0be324fa122b_end
jmp >var_4528a4809cdb_end
:var_4528a4809cdb
:var_4528a4809cdb_end
rmem reg0 >var_b7073a7f80e5
rmem reg1 >var_e31fa340291b
add reg0 reg0 reg1
wmem >var_4528a4809cdb reg0
jmp >var_e2ab309d71aa_end
:var_e2ab309d71aa
:var_e2ab309d71aa_end
rmem reg0 >var_ba2396295c3c
rmem reg1 >var_e31fa340291b
add reg0 reg0 reg1
wmem >var_e2ab309d71aa reg0
rmem reg0 >var_e2ab309d71aa
rmem reg1 >var_4528a4809cdb
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_e31fa340291b
add reg0 reg0 1
wmem >var_e31fa340291b reg0
jmp >while_0be324fa122b_begin
:while_0be324fa122b_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_e4e93189bb60_end
:var_e4e93189bb60
:var_e4e93189bb60_end
wmem >var_e4e93189bb60 reg0
jmp >var_c51d751a5eac_end
:var_c51d751a5eac
:var_c51d751a5eac_end
set reg0 0
wmem >var_c51d751a5eac reg0
:while_2ceaf866cd08_begin
rmem reg0 >var_e4e93189bb60
rmem reg0 reg0
jf reg0 >while_2ceaf866cd08_end
rmem reg0 >var_e4e93189bb60
add reg0 reg0 1
wmem >var_e4e93189bb60 reg0
rmem reg0 >var_c51d751a5eac
add reg0 reg0 1
wmem >var_c51d751a5eac reg0
jmp >while_2ceaf866cd08_begin
:while_2ceaf866cd08_end
rmem reg0 >var_c51d751a5eac
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_039aebdc058e_end
:var_039aebdc058e
:var_039aebdc058e_end
jmp >var_990924d4413f_end
:var_990924d4413f
:var_990924d4413f_end
wmem >var_039aebdc058e reg0
wmem >var_990924d4413f reg1
jmp >var_1270aa2f712b_end
:var_1270aa2f712b
:var_1270aa2f712b_end
rmem reg0 >var_039aebdc058e
call >str_len
wmem >var_1270aa2f712b reg0
jmp >var_8c6fecbbdef4_end
:var_8c6fecbbdef4
:var_8c6fecbbdef4_end
rmem reg0 >var_990924d4413f
call >str_len
wmem >var_8c6fecbbdef4 reg0
set reg0 10
out reg0
set reg0 10
out reg0
jmp >var_64b807f61c33_end
:var_64b807f61c33
:var_64b807f61c33_end
call >alloc
wmem >var_64b807f61c33 reg0
rmem reg0 >var_039aebdc058e
rmem reg1 >var_64b807f61c33
rmem reg2 >var_1270aa2f712b
call >mem_cp
jmp >var_6148a2aa97a3_end
:var_6148a2aa97a3
:var_6148a2aa97a3_end
rmem reg0 >var_64b807f61c33
rmem reg1 >var_1270aa2f712b
add reg0 reg0 reg1
wmem >var_6148a2aa97a3 reg0
rmem reg0 >var_8c6fecbbdef4
add reg0 reg0 1
wmem >var_8c6fecbbdef4 reg0
rmem reg0 >var_990924d4413f
rmem reg1 >var_6148a2aa97a3
rmem reg2 >var_8c6fecbbdef4
call >mem_cp
rmem reg0 >var_64b807f61c33
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_b5e3212685d0_end
:var_b5e3212685d0
:var_b5e3212685d0_end
wmem >var_b5e3212685d0 reg0
jmp >var_a13e36371d14_end
:var_a13e36371d14
:var_a13e36371d14_end
call >alloc
wmem >var_a13e36371d14 reg0
jmp >var_3b0cb87639f3_end
:var_3b0cb87639f3
:var_3b0cb87639f3_end
rmem reg0 >var_b5e3212685d0
call >str_len
wmem >var_3b0cb87639f3 reg0
jmp >var_1a5d3b0c89e6_end
:var_1a5d3b0c89e6
:var_1a5d3b0c89e6_end
set reg0 0
wmem >var_1a5d3b0c89e6 reg0
:while_f51fc73487a3_begin
rmem reg0 >var_1a5d3b0c89e6
rmem reg1 >var_3b0cb87639f3
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_f51fc73487a3_end
jmp >var_0aafa52a8ff4_end
:var_0aafa52a8ff4
:var_0aafa52a8ff4_end
rmem reg0 >var_b5e3212685d0
rmem reg1 >var_1a5d3b0c89e6
add reg0 reg0 reg1
wmem >var_0aafa52a8ff4 reg0
rmem reg0 >var_0aafa52a8ff4
rmem reg0 reg0
rmem reg0 >var_0aafa52a8ff4
rmem reg0 reg0
push reg0
rmem reg0 >var_1a5d3b0c89e6
add reg0 reg0 1
wmem >var_1a5d3b0c89e6 reg0
jmp >while_f51fc73487a3_begin
:while_f51fc73487a3_end
jmp >var_fd955662c608_end
:var_fd955662c608
:var_fd955662c608_end
pop reg0
wmem >var_fd955662c608 reg0
set reg0 0
wmem >var_1a5d3b0c89e6 reg0
:while_a280208e3463_begin
rmem reg0 >var_1a5d3b0c89e6
rmem reg1 >var_3b0cb87639f3
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_a280208e3463_end
jmp >var_cc4e50f2428e_end
:var_cc4e50f2428e
:var_cc4e50f2428e_end
rmem reg0 >var_a13e36371d14
rmem reg1 >var_1a5d3b0c89e6
add reg0 reg0 reg1
wmem >var_cc4e50f2428e reg0
rmem reg0 >var_cc4e50f2428e
rmem reg1 >var_fd955662c608
wmem reg0 reg1
rmem reg0 >var_1a5d3b0c89e6
add reg0 reg0 1
wmem >var_1a5d3b0c89e6 reg0
pop reg0
wmem >var_fd955662c608 reg0
jmp >while_a280208e3463_begin
:while_a280208e3463_end
rmem reg0 >var_fd955662c608
rmem reg0 >var_fd955662c608
push reg0
rmem reg0 >var_a13e36371d14
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_ae4a4e058938_end
:var_ae4a4e058938
:var_ae4a4e058938_end
set reg0 16384
wmem >var_ae4a4e058938 reg0
jmp >var_68da385887df_end
:var_68da385887df
:var_68da385887df_end
in reg0
wmem >var_68da385887df reg0
jmp >var_26cdb88de6bc_end
:var_26cdb88de6bc
:var_26cdb88de6bc_end
rmem reg0 >var_68da385887df
set reg1 10
eq reg0 reg0 reg1
wmem >var_26cdb88de6bc reg0
:while_18fcfbda5975_begin
rmem reg0 >var_26cdb88de6bc
call >not
rmem reg1 >var_68da385887df
call >and
jf reg0 >while_18fcfbda5975_end
rmem reg0 >var_ae4a4e058938
rmem reg1 >var_68da385887df
wmem reg0 reg1
rmem reg0 >var_ae4a4e058938
add reg0 reg0 1
wmem >var_ae4a4e058938 reg0
in reg0
wmem >var_68da385887df reg0
rmem reg0 >var_68da385887df
set reg1 10
eq reg0 reg0 reg1
wmem >var_26cdb88de6bc reg0
jmp >while_18fcfbda5975_begin
:while_18fcfbda5975_end
rmem reg0 >var_ae4a4e058938
set reg1 0
wmem reg0 reg1
jmp >var_084f055ed210_end
:var_084f055ed210
:var_084f055ed210_end
call >alloc
wmem >var_084f055ed210 reg0
jmp >var_58e914b5689a_end
:var_58e914b5689a
:var_58e914b5689a_end
set reg0 16384
call >str_len
wmem >var_58e914b5689a reg0
set reg0 16384
rmem reg1 >var_084f055ed210
rmem reg2 >var_58e914b5689a
call >mem_cp
rmem reg0 >var_084f055ed210
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_06782c10b8d8_end
:var_06782c10b8d8
:var_06782c10b8d8_end
wmem >var_06782c10b8d8 reg0
:while_dc5fd133c319_begin
rmem reg0 >var_06782c10b8d8
rmem reg0 reg0
jf reg0 >while_dc5fd133c319_end
rmem reg0 >var_06782c10b8d8
rmem reg0 reg0
out reg0
rmem reg0 >var_06782c10b8d8
add reg0 reg0 1
wmem >var_06782c10b8d8 reg0
jmp >while_dc5fd133c319_begin
:while_dc5fd133c319_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_ffc2589df6bd_end
:var_ffc2589df6bd
:var_ffc2589df6bd_end
wmem >var_ffc2589df6bd reg0
rmem reg0 >var_ffc2589df6bd
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_97b1d8141e8b_end
:var_97b1d8141e8b
:var_97b1d8141e8b_end
wmem >var_97b1d8141e8b reg0
rmem reg0 >var_97b1d8141e8b
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_d26341669cb5
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_d26341669cb5
jmp >var_b9a3793d1ff8_end
:var_b9a3793d1ff8
:var_b9a3793d1ff8_end
jmp >var_2f31d43158ab_end
:var_2f31d43158ab
:var_2f31d43158ab_end
set reg0 0
wmem >var_2f31d43158ab reg0
:while_2c6b78c28cb5_begin
rmem reg0 >var_97b1d8141e8b
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_2c6b78c28cb5_end
rmem reg0 >var_97b1d8141e8b
set reg1 10
mod reg0 reg0 reg1
wmem >var_b9a3793d1ff8 reg0
rmem reg0 >var_b9a3793d1ff8
rmem reg0 >var_b9a3793d1ff8
push reg0
rmem reg0 >var_2f31d43158ab
add reg0 reg0 1
wmem >var_2f31d43158ab reg0
rmem reg0 >var_97b1d8141e8b
set reg1 10
call >divide
wmem >var_97b1d8141e8b reg0
jmp >while_2c6b78c28cb5_begin
:while_2c6b78c28cb5_end
rmem reg0 >var_97b1d8141e8b
set reg1 10
mod reg0 reg0 reg1
wmem >var_b9a3793d1ff8 reg0
rmem reg0 >var_b9a3793d1ff8
rmem reg0 >var_b9a3793d1ff8
push reg0
rmem reg0 >var_2f31d43158ab
add reg0 reg0 1
wmem >var_2f31d43158ab reg0
jmp >var_4e2beeb15d66_end
:var_4e2beeb15d66
:var_4e2beeb15d66_end
set reg0 0
wmem >var_4e2beeb15d66 reg0
:while_d7805ba36789_begin
rmem reg0 >var_4e2beeb15d66
rmem reg1 >var_2f31d43158ab
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_d7805ba36789_end
rmem reg0 >var_4e2beeb15d66
set reg1 1
add reg0 reg0 reg1
wmem >var_4e2beeb15d66 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_d7805ba36789_begin
:while_d7805ba36789_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_e2a72202f5bc_end
:var_e2a72202f5bc
:var_e2a72202f5bc_end
set reg0 0
wmem >var_e2a72202f5bc reg0
:while_e39efce05ed7_begin
rmem reg0 >var_e2a72202f5bc
rmem reg0 reg0
jf reg0 >while_e39efce05ed7_end
rmem reg0 >var_e2a72202f5bc
add reg0 reg0 1
wmem >var_e2a72202f5bc reg0
rmem reg0 >var_e2a72202f5bc
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_e39efce05ed7_begin
:while_e39efce05ed7_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_6b0422369f36_end
:var_6b0422369f36
:var_6b0422369f36_end
wmem >var_6b0422369f36 reg0
jmp >var_3c4deb4d6bce_end
:var_3c4deb4d6bce
:var_3c4deb4d6bce_end
rmem reg0 >var_6b0422369f36
call >flip_str
wmem >var_3c4deb4d6bce reg0
jmp >var_0172e0e94019_end
:var_0172e0e94019
:var_0172e0e94019_end
rmem reg0 >var_3c4deb4d6bce
call >str_len
wmem >var_0172e0e94019 reg0
rmem reg0 >var_0172e0e94019
set reg1 1
call >subtract
wmem >var_0172e0e94019 reg0
jmp >var_48d8e7100135_end
:var_48d8e7100135
:var_48d8e7100135_end
set reg0 0
wmem >var_48d8e7100135 reg0
jmp >var_b9054c93a5bc_end
:var_b9054c93a5bc
:var_b9054c93a5bc_end
set reg0 0
wmem >var_b9054c93a5bc reg0
:while_9bb889e25ac8_begin
rmem reg0 >var_48d8e7100135
rmem reg1 >var_0172e0e94019
gt reg0 reg0 reg1
call >not
jf reg0 >while_9bb889e25ac8_end
jmp >var_c7505cb4a6c2_end
:var_c7505cb4a6c2
:var_c7505cb4a6c2_end
rmem reg0 >var_3c4deb4d6bce
rmem reg1 >var_48d8e7100135
add reg0 reg0 reg1
wmem >var_c7505cb4a6c2 reg0
rmem reg0 >var_c7505cb4a6c2
rmem reg0 reg0
wmem >var_c7505cb4a6c2 reg0
jmp >var_8d8d3ec49aeb_end
:var_8d8d3ec49aeb
:var_8d8d3ec49aeb_end
rmem reg0 >var_c7505cb4a6c2
set reg1 47
gt reg0 reg0 reg1
wmem >var_8d8d3ec49aeb reg0
jmp >var_11bfc6bc31cb_end
:var_11bfc6bc31cb
:var_11bfc6bc31cb_end
rmem reg0 >var_c7505cb4a6c2
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_11bfc6bc31cb reg0
rmem reg0 >var_8d8d3ec49aeb
rmem reg1 >var_11bfc6bc31cb
call >and
jf reg0 >end_dbea475f6ffc
jmp >var_42a6c3e9d807_end
:var_42a6c3e9d807
:var_42a6c3e9d807_end
rmem reg0 >var_c7505cb4a6c2
set reg1 48
call >subtract
wmem >var_42a6c3e9d807 reg0
rmem reg0 >var_42a6c3e9d807
call >print_number
set reg0 10
out reg0
jmp >var_96ed72c1c98a_end
:var_96ed72c1c98a
:var_96ed72c1c98a_end
set reg0 0
wmem >var_96ed72c1c98a reg0
jmp >var_15086cc4748a_end
:var_15086cc4748a
:var_15086cc4748a_end
rmem reg0 >var_48d8e7100135
set reg1 1
call >subtract
wmem >var_15086cc4748a reg0
:while_daa9881b35d0_begin
rmem reg0 >var_96ed72c1c98a
rmem reg1 >var_15086cc4748a
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_daa9881b35d0_end
rmem reg0 >var_42a6c3e9d807
set reg1 10
call >subtract
wmem >var_42a6c3e9d807 reg0
rmem reg0 >var_96ed72c1c98a
add reg0 reg0 1
wmem >var_96ed72c1c98a reg0
jmp >while_daa9881b35d0_begin
:while_daa9881b35d0_end
rmem reg0 >var_b9054c93a5bc
rmem reg1 >var_42a6c3e9d807
add reg0 reg0 reg1
wmem >var_b9054c93a5bc reg0
:end_dbea475f6ffc
rmem reg0 >var_48d8e7100135
add reg0 reg0 1
wmem >var_48d8e7100135 reg0
jmp >while_9bb889e25ac8_begin
:while_9bb889e25ac8_end
rmem reg0 >var_b9054c93a5bc
call >print_number
rmem reg0 >var_b9054c93a5bc
ret
ret
:int_end
set reg0 >int
jmp >var_9edc563ce206_end
:var_9edc563ce206
:var_9edc563ce206_end
set reg0 1
wmem >var_9edc563ce206 reg0
:for_bcabe698ec4c_begin
rmem reg0 >var_9edc563ce206
set reg1 10
gt reg0 reg0 reg1
call >not
jf reg0 >for_bcabe698ec4c_end
rmem reg0 >var_9edc563ce206
call >print_number
set reg0 10
out reg0
rmem reg0 >var_9edc563ce206
add reg0 reg0 1
wmem >var_9edc563ce206 reg0
jmp >for_bcabe698ec4c_begin
:for_bcabe698ec4c_end
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

