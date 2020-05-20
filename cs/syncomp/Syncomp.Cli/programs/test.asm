jmp >str_len_end
:str_len
jmp >var_str_stdlib_1_end
:var_str_stdlib_1
:var_str_stdlib_1_end
wmem >var_str_stdlib_1 reg0
jmp >var_str_ptr_stdlib_2_end
:var_str_ptr_stdlib_2
:var_str_ptr_stdlib_2_end
rmem reg0 >var_str_stdlib_1
wmem >var_str_ptr_stdlib_2 reg0
jmp >var_length_stdlib_3_end
:var_length_stdlib_3
:var_length_stdlib_3_end
set reg0 0
wmem >var_length_stdlib_3 reg0
:while_4f38_stdlib_4_begin
rmem reg0 >var_str_ptr_stdlib_2
rmem reg0 reg0
jf reg0 >while_4f38_stdlib_4_end
rmem reg0 >var_str_ptr_stdlib_2
add reg0 reg0 1
wmem >var_str_ptr_stdlib_2 reg0
rmem reg0 >var_length_stdlib_3
add reg0 reg0 1
wmem >var_length_stdlib_3 reg0
jmp >while_4f38_stdlib_4_begin
:while_4f38_stdlib_4_end
rmem reg0 >var_length_stdlib_3
ret
ret
:str_len_end
set reg0 >str_len
jmp >print_end
:print
jmp >var_str_stdlib_11_end
:var_str_stdlib_11
:var_str_stdlib_11_end
wmem >var_str_stdlib_11 reg0
jmp >var_str_ptr_stdlib_12_end
:var_str_ptr_stdlib_12
:var_str_ptr_stdlib_12_end
rmem reg0 >var_str_stdlib_11
wmem >var_str_ptr_stdlib_12 reg0
:while_ef43_stdlib_13_begin
rmem reg0 >var_str_ptr_stdlib_12
rmem reg0 reg0
jf reg0 >while_ef43_stdlib_13_end
rmem reg0 >var_str_ptr_stdlib_12
rmem reg0 reg0
out reg0
rmem reg0 >var_str_ptr_stdlib_12
add reg0 reg0 1
wmem >var_str_ptr_stdlib_12 reg0
jmp >while_ef43_stdlib_13_begin
:while_ef43_stdlib_13_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_str_ptr_stdlib_19_end
:var_str_ptr_stdlib_19
:var_str_ptr_stdlib_19_end
wmem >var_str_ptr_stdlib_19 reg0
rmem reg0 >var_str_ptr_stdlib_19
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >str_equal_end
:str_equal
jmp >var_str_a_stdlib_24_end
:var_str_a_stdlib_24
:var_str_a_stdlib_24_end
jmp >var_str_b_stdlib_24_end
:var_str_b_stdlib_24
:var_str_b_stdlib_24_end
wmem >var_str_a_stdlib_24 reg0
wmem >var_str_b_stdlib_24 reg1
rmem reg0 >var_str_a_stdlib_24
call >println
rmem reg0 >var_str_b_stdlib_24
call >println
jmp >var_a_len_stdlib_27_end
:var_a_len_stdlib_27
:var_a_len_stdlib_27_end
rmem reg0 >var_str_a_stdlib_24
call >str_len
wmem >var_a_len_stdlib_27 reg0
jmp >var_b_len_stdlib_28_end
:var_b_len_stdlib_28
:var_b_len_stdlib_28_end
rmem reg0 >var_str_b_stdlib_24
call >str_len
wmem >var_b_len_stdlib_28 reg0
rmem reg0 >var_a_len_stdlib_27
rmem reg1 >var_b_len_stdlib_28
eq reg0 reg0 reg1
call >not
jf reg0 >end_2a18_stdlib_29
set reg0 0
ret
:end_2a18_stdlib_29
jmp >var_i_stdlib_32_end
:var_i_stdlib_32
:var_i_stdlib_32_end
set reg0 0
wmem >var_i_stdlib_32 reg0
:for_1b0b_stdlib_32_begin
rmem reg0 >var_i_stdlib_32
rmem reg1 >var_a_len_stdlib_27
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_1b0b_stdlib_32_end
jmp >var_a_val_stdlib_33_end
:var_a_val_stdlib_33
:var_a_val_stdlib_33_end
rmem reg0 >var_str_a_stdlib_24
rmem reg1 >var_i_stdlib_32
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_a_val_stdlib_33 reg0
jmp >var_b_val_stdlib_34_end
:var_b_val_stdlib_34
:var_b_val_stdlib_34_end
rmem reg0 >var_str_b_stdlib_24
rmem reg1 >var_i_stdlib_32
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_b_val_stdlib_34 reg0
rmem reg0 >var_a_val_stdlib_33
rmem reg1 >var_b_val_stdlib_34
eq reg0 reg0 reg1
call >not
jf reg0 >end_487d_stdlib_35
set reg0 0
ret
:end_487d_stdlib_35
rmem reg0 >var_i_stdlib_32
add reg0 reg0 1
wmem >var_i_stdlib_32 reg0
jmp >for_1b0b_stdlib_32_begin
:for_1b0b_stdlib_32_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_data_index_stdlib_43_end
:var_data_index_stdlib_43
:var_data_index_stdlib_43_end
set reg0 16382
wmem >var_data_index_stdlib_43 reg0
:while_98c9_stdlib_44_begin
rmem reg0 >var_data_index_stdlib_43
rmem reg0 reg0
call >not
jf reg0 >while_98c9_stdlib_44_end
rmem reg0 >var_data_index_stdlib_43
set reg1 1
call >subtract
wmem >var_data_index_stdlib_43 reg0
jmp >while_98c9_stdlib_44_begin
:while_98c9_stdlib_44_end
rmem reg0 >var_data_index_stdlib_43
set reg1 2
add reg0 reg0 reg1
wmem >var_data_index_stdlib_43 reg0
rmem reg0 >var_data_index_stdlib_43
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_length_stdlib_51_end
:var_length_stdlib_51
:var_length_stdlib_51_end
wmem >var_length_stdlib_51 reg0
jmp >var_pointer_stdlib_52_end
:var_pointer_stdlib_52
:var_pointer_stdlib_52_end
call >alloc
wmem >var_pointer_stdlib_52 reg0
jmp >var_dest_ptr_stdlib_53_end
:var_dest_ptr_stdlib_53
:var_dest_ptr_stdlib_53_end
rmem reg0 >var_pointer_stdlib_52
rmem reg1 >var_length_stdlib_51
add reg0 reg0 reg1
wmem >var_dest_ptr_stdlib_53 reg0
rmem reg0 >var_dest_ptr_stdlib_53
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_pointer_stdlib_52
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_s_ptr_stdlib_58_end
:var_s_ptr_stdlib_58
:var_s_ptr_stdlib_58_end
jmp >var_d_ptr_stdlib_58_end
:var_d_ptr_stdlib_58
:var_d_ptr_stdlib_58_end
jmp >var_len_stdlib_58_end
:var_len_stdlib_58
:var_len_stdlib_58_end
wmem >var_s_ptr_stdlib_58 reg0
wmem >var_d_ptr_stdlib_58 reg1
wmem >var_len_stdlib_58 reg2
jmp >var_current_byte_stdlib_59_end
:var_current_byte_stdlib_59
:var_current_byte_stdlib_59_end
set reg0 0
wmem >var_current_byte_stdlib_59 reg0
:while_c2d2_stdlib_60_begin
rmem reg0 >var_current_byte_stdlib_59
rmem reg1 >var_len_stdlib_58
gt reg0 reg0 reg1
call >not
jf reg0 >while_c2d2_stdlib_60_end
jmp >var_byte_to_write_ptr_stdlib_61_end
:var_byte_to_write_ptr_stdlib_61
:var_byte_to_write_ptr_stdlib_61_end
rmem reg0 >var_s_ptr_stdlib_58
rmem reg1 >var_current_byte_stdlib_59
add reg0 reg0 reg1
wmem >var_byte_to_write_ptr_stdlib_61 reg0
jmp >var_dest_ptr_stdlib_62_end
:var_dest_ptr_stdlib_62
:var_dest_ptr_stdlib_62_end
rmem reg0 >var_d_ptr_stdlib_58
rmem reg1 >var_current_byte_stdlib_59
add reg0 reg0 reg1
wmem >var_dest_ptr_stdlib_62 reg0
rmem reg0 >var_dest_ptr_stdlib_62
rmem reg1 >var_byte_to_write_ptr_stdlib_61
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_current_byte_stdlib_59
add reg0 reg0 1
wmem >var_current_byte_stdlib_59 reg0
jmp >while_c2d2_stdlib_60_begin
:while_c2d2_stdlib_60_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_cat_end
:str_cat
jmp >var_str_a_stdlib_68_end
:var_str_a_stdlib_68
:var_str_a_stdlib_68_end
jmp >var_str_b_stdlib_68_end
:var_str_b_stdlib_68
:var_str_b_stdlib_68_end
wmem >var_str_a_stdlib_68 reg0
wmem >var_str_b_stdlib_68 reg1
jmp >var_a_len_stdlib_69_end
:var_a_len_stdlib_69
:var_a_len_stdlib_69_end
rmem reg0 >var_str_a_stdlib_68
call >str_len
wmem >var_a_len_stdlib_69 reg0
jmp >var_b_len_stdlib_70_end
:var_b_len_stdlib_70
:var_b_len_stdlib_70_end
rmem reg0 >var_str_b_stdlib_68
call >str_len
wmem >var_b_len_stdlib_70 reg0
jmp >var_alloc_ptr_stdlib_71_end
:var_alloc_ptr_stdlib_71
:var_alloc_ptr_stdlib_71_end
call >alloc
wmem >var_alloc_ptr_stdlib_71 reg0
rmem reg0 >var_str_a_stdlib_68
rmem reg1 >var_alloc_ptr_stdlib_71
rmem reg2 >var_a_len_stdlib_69
call >mem_cp
jmp >var_end_address_stdlib_73_end
:var_end_address_stdlib_73
:var_end_address_stdlib_73_end
rmem reg0 >var_alloc_ptr_stdlib_71
rmem reg1 >var_a_len_stdlib_69
add reg0 reg0 reg1
wmem >var_end_address_stdlib_73 reg0
rmem reg0 >var_b_len_stdlib_70
add reg0 reg0 1
wmem >var_b_len_stdlib_70 reg0
rmem reg0 >var_str_b_stdlib_68
rmem reg1 >var_end_address_stdlib_73
rmem reg2 >var_b_len_stdlib_70
call >mem_cp
rmem reg0 >var_alloc_ptr_stdlib_71
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_str_ptr_stdlib_79_end
:var_str_ptr_stdlib_79
:var_str_ptr_stdlib_79_end
wmem >var_str_ptr_stdlib_79 reg0
jmp >var_alloc_ptr_stdlib_80_end
:var_alloc_ptr_stdlib_80
:var_alloc_ptr_stdlib_80_end
call >alloc
wmem >var_alloc_ptr_stdlib_80 reg0
jmp >var_len_stdlib_81_end
:var_len_stdlib_81
:var_len_stdlib_81_end
rmem reg0 >var_str_ptr_stdlib_79
call >str_len
wmem >var_len_stdlib_81 reg0
jmp >var_index_stdlib_82_end
:var_index_stdlib_82
:var_index_stdlib_82_end
set reg0 0
wmem >var_index_stdlib_82 reg0
:while_ccff_stdlib_83_begin
rmem reg0 >var_index_stdlib_82
rmem reg1 >var_len_stdlib_81
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_ccff_stdlib_83_end
jmp >var_source_index_stdlib_84_end
:var_source_index_stdlib_84
:var_source_index_stdlib_84_end
rmem reg0 >var_str_ptr_stdlib_79
rmem reg1 >var_index_stdlib_82
add reg0 reg0 reg1
wmem >var_source_index_stdlib_84 reg0
rmem reg0 >var_source_index_stdlib_84
rmem reg0 reg0
rmem reg0 >var_source_index_stdlib_84
rmem reg0 reg0
push reg0
rmem reg0 >var_index_stdlib_82
add reg0 reg0 1
wmem >var_index_stdlib_82 reg0
jmp >while_ccff_stdlib_83_begin
:while_ccff_stdlib_83_end
jmp >var_current_byte_stdlib_89_end
:var_current_byte_stdlib_89
:var_current_byte_stdlib_89_end
pop reg0
wmem >var_current_byte_stdlib_89 reg0
set reg0 0
wmem >var_index_stdlib_82 reg0
:while_52ca_stdlib_91_begin
rmem reg0 >var_index_stdlib_82
rmem reg1 >var_len_stdlib_81
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_52ca_stdlib_91_end
jmp >var_dest_index_stdlib_92_end
:var_dest_index_stdlib_92
:var_dest_index_stdlib_92_end
rmem reg0 >var_alloc_ptr_stdlib_80
rmem reg1 >var_index_stdlib_82
add reg0 reg0 reg1
wmem >var_dest_index_stdlib_92 reg0
rmem reg0 >var_dest_index_stdlib_92
rmem reg1 >var_current_byte_stdlib_89
wmem reg0 reg1
rmem reg0 >var_index_stdlib_82
add reg0 reg0 1
wmem >var_index_stdlib_82 reg0
pop reg0
wmem >var_current_byte_stdlib_89 reg0
jmp >while_52ca_stdlib_91_begin
:while_52ca_stdlib_91_end
rmem reg0 >var_current_byte_stdlib_89
rmem reg0 >var_current_byte_stdlib_89
push reg0
rmem reg0 >var_alloc_ptr_stdlib_80
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_data_index_stdlib_104_end
:var_data_index_stdlib_104
:var_data_index_stdlib_104_end
set reg0 16384
wmem >var_data_index_stdlib_104 reg0
jmp >var_in_char_stdlib_105_end
:var_in_char_stdlib_105
:var_in_char_stdlib_105_end
in reg0
wmem >var_in_char_stdlib_105 reg0
jmp >var_is_newline_stdlib_106_end
:var_is_newline_stdlib_106
:var_is_newline_stdlib_106_end
rmem reg0 >var_in_char_stdlib_105
set reg1 10
eq reg0 reg0 reg1
wmem >var_is_newline_stdlib_106 reg0
:while_7d98_stdlib_107_begin
rmem reg0 >var_is_newline_stdlib_106
rmem reg1 >var_in_char_stdlib_105
call >and
call >not
jf reg0 >while_7d98_stdlib_107_end
rmem reg0 >var_data_index_stdlib_104
rmem reg1 >var_in_char_stdlib_105
wmem reg0 reg1
rmem reg0 >var_data_index_stdlib_104
add reg0 reg0 1
wmem >var_data_index_stdlib_104 reg0
in reg0
wmem >var_in_char_stdlib_105 reg0
rmem reg0 >var_in_char_stdlib_105
set reg1 10
eq reg0 reg0 reg1
wmem >var_is_newline_stdlib_106 reg0
jmp >while_7d98_stdlib_107_begin
:while_7d98_stdlib_107_end
rmem reg0 >var_data_index_stdlib_104
set reg1 0
wmem reg0 reg1
jmp >var_alloc_ptr_stdlib_114_end
:var_alloc_ptr_stdlib_114
:var_alloc_ptr_stdlib_114_end
call >alloc
wmem >var_alloc_ptr_stdlib_114 reg0
jmp >var_length_stdlib_115_end
:var_length_stdlib_115
:var_length_stdlib_115_end
set reg0 16384
call >str_len
wmem >var_length_stdlib_115 reg0
set reg0 16384
rmem reg1 >var_alloc_ptr_stdlib_114
rmem reg2 >var_length_stdlib_115
call >mem_cp
rmem reg0 >var_alloc_ptr_stdlib_114
ret
ret
:input_end
set reg0 >input
jmp >int_end
:int
jmp >var_str_stdlib_120_end
:var_str_stdlib_120
:var_str_stdlib_120_end
wmem >var_str_stdlib_120 reg0
jmp >var_len_stdlib_121_end
:var_len_stdlib_121
:var_len_stdlib_121_end
rmem reg0 >var_str_stdlib_120
call >str_len
wmem >var_len_stdlib_121 reg0
jmp >var_index_stdlib_122_end
:var_index_stdlib_122
:var_index_stdlib_122_end
set reg0 0
wmem >var_index_stdlib_122 reg0
jmp >var_accumulation_stdlib_123_end
:var_accumulation_stdlib_123
:var_accumulation_stdlib_123_end
set reg0 0
wmem >var_accumulation_stdlib_123 reg0
:for_c820_stdlib_124_begin
rmem reg0 >var_len_stdlib_121
set reg1 0
gt reg0 reg0 reg1
jf reg0 >for_c820_stdlib_124_end
jmp >var_tens_place_stdlib_126_end
:var_tens_place_stdlib_126
:var_tens_place_stdlib_126_end
set reg0 1
set reg1 10
rmem reg2 >var_len_stdlib_121
set reg3 1
push reg0
push reg1
set reg0 reg2
set reg1 reg3
call >subtract
pop reg1
set reg2 reg0
pop reg0
mult reg1 reg1 reg2
rmem reg1 >var_len_stdlib_121
set reg2 1
push reg0
push reg1
set reg0 reg1
set reg1 reg2
call >subtract
pop reg1
set reg1 reg0
pop reg0
mult reg0 reg0 reg1
wmem >var_tens_place_stdlib_126 reg0
jmp >var_diget_stdlib_127_end
:var_diget_stdlib_127
:var_diget_stdlib_127_end
rmem reg0 >var_str_stdlib_120
rmem reg1 >var_index_stdlib_122
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_diget_stdlib_127 reg0
rmem reg0 >var_diget_stdlib_127
set reg1 48
call >subtract
wmem >var_diget_stdlib_127 reg0
:for_427a_stdlib_129_begin
rmem reg0 >var_tens_place_stdlib_126
set reg1 0
gt reg0 reg0 reg1
jf reg0 >for_427a_stdlib_129_end
rmem reg0 >var_diget_stdlib_127
set reg1 10
mult reg0 reg0 reg1
wmem >var_diget_stdlib_127 reg0
rmem reg0 >var_tens_place_stdlib_126
set reg1 1
call >subtract
wmem >var_tens_place_stdlib_126 reg0
jmp >for_427a_stdlib_129_begin
:for_427a_stdlib_129_end
rmem reg0 >var_accumulation_stdlib_123
rmem reg1 >var_diget_stdlib_127
add reg0 reg0 reg1
wmem >var_accumulation_stdlib_123 reg0
rmem reg0 >var_index_stdlib_122
add reg0 reg0 1
wmem >var_index_stdlib_122 reg0
rmem reg0 >var_len_stdlib_121
set reg1 1
call >subtract
wmem >var_len_stdlib_121 reg0
jmp >for_c820_stdlib_124_begin
:for_c820_stdlib_124_end
rmem reg0 >var_accumulation_stdlib_123
ret
ret
:int_end
set reg0 >int
jmp >string_end
:string
jmp >var_num_stdlib_140_end
:var_num_stdlib_140
:var_num_stdlib_140_end
wmem >var_num_stdlib_140 reg0
jmp >var_charNum_stdlib_141_end
:var_charNum_stdlib_141
:var_charNum_stdlib_141_end
jmp >var_length_stdlib_142_end
:var_length_stdlib_142
:var_length_stdlib_142_end
set reg0 0
wmem >var_length_stdlib_142 reg0
:while_64c5_stdlib_143_begin
rmem reg0 >var_num_stdlib_140
set reg1 9
gt reg0 reg0 reg1
jf reg0 >while_64c5_stdlib_143_end
rmem reg0 >var_num_stdlib_140
set reg1 10
mod reg0 reg0 reg1
wmem >var_charNum_stdlib_141 reg0
rmem reg0 >var_charNum_stdlib_141
rmem reg0 >var_charNum_stdlib_141
push reg0
rmem reg0 >var_length_stdlib_142
add reg0 reg0 1
wmem >var_length_stdlib_142 reg0
rmem reg0 >var_num_stdlib_140
set reg1 10
call >divide
wmem >var_num_stdlib_140 reg0
jmp >while_64c5_stdlib_143_begin
:while_64c5_stdlib_143_end
rmem reg0 >var_num_stdlib_140
set reg1 10
mod reg0 reg0 reg1
wmem >var_charNum_stdlib_141 reg0
rmem reg0 >var_charNum_stdlib_141
rmem reg0 >var_charNum_stdlib_141
push reg0
rmem reg0 >var_length_stdlib_142
add reg0 reg0 1
wmem >var_length_stdlib_142 reg0
jmp >var_stack_index_stdlib_154_end
:var_stack_index_stdlib_154
:var_stack_index_stdlib_154_end
set reg0 0
wmem >var_stack_index_stdlib_154 reg0
jmp >var_dest_ptr_stdlib_155_end
:var_dest_ptr_stdlib_155
:var_dest_ptr_stdlib_155_end
call >alloc
wmem >var_dest_ptr_stdlib_155 reg0
:while_29e1_stdlib_157_begin
rmem reg0 >var_stack_index_stdlib_154
rmem reg1 >var_length_stdlib_142
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_29e1_stdlib_157_end
rmem reg0 >var_dest_ptr_stdlib_155
rmem reg1 >var_stack_index_stdlib_154
add reg0 reg0 reg1
pop reg1
set reg2 48
add reg1 reg1 reg2
wmem reg0 reg1
rmem reg0 >var_stack_index_stdlib_154
set reg1 1
add reg0 reg0 reg1
wmem >var_stack_index_stdlib_154 reg0
jmp >while_29e1_stdlib_157_begin
:while_29e1_stdlib_157_end
rmem reg0 >var_dest_ptr_stdlib_155
rmem reg1 >var_stack_index_stdlib_154
add reg0 reg0 reg1
set reg1 0
wmem reg0 reg1
rmem reg0 >var_dest_ptr_stdlib_155
ret
ret
:string_end
set reg0 >string
jmp >print_number_end
:print_number
jmp >var_num_stdlib_166_end
:var_num_stdlib_166
:var_num_stdlib_166_end
wmem >var_num_stdlib_166 reg0
rmem reg0 >var_num_stdlib_166
call >string
call >print
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_i_stdlib_172_end
:var_i_stdlib_172
:var_i_stdlib_172_end
set reg0 0
wmem >var_i_stdlib_172 reg0
:while_cca3_stdlib_174_begin
rmem reg0 >var_i_stdlib_172
rmem reg0 reg0
jf reg0 >while_cca3_stdlib_174_end
rmem reg0 >var_i_stdlib_172
add reg0 reg0 1
wmem >var_i_stdlib_172 reg0
rmem reg0 >var_i_stdlib_172
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_cca3_stdlib_174_begin
:while_cca3_stdlib_174_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >test_end
:test
jmp >var_name_test_3_end
:var_name_test_3
:var_name_test_3_end
jmp >var_f_test_3_end
:var_f_test_3
:var_f_test_3_end
wmem >var_name_test_3 reg0
wmem >var_f_test_3 reg1
rmem reg7 >var_f_test_3
call reg7
ret
:test_end
set reg0 >test
jmp >var_2c15_test_8_end
:var_2c15_test_8
&e
&s
&t
&1
0
:var_2c15_test_8_end
wmem >var_2c15_test_8 &t
set reg0 >var_2c15_test_8
jmp >function_33f0_test_8_end
:function_33f0_test_8
jmp >var_aaf3_test_9_end
:var_aaf3_test_9
&e
&s
&t
&2
0
:var_aaf3_test_9_end
wmem >var_aaf3_test_9 &t
set reg0 >var_aaf3_test_9
jmp >function_5580_test_9_end
:function_5580_test_9
jmp >var_result_test_12_end
:var_result_test_12
:var_result_test_12_end
jmp >var_badd_test_12_end
:var_badd_test_12
&2
&3
0
:var_badd_test_12_end
wmem >var_badd_test_12 &1
set reg0 >var_badd_test_12
jmp >var_e7d6_test_12_end
:var_e7d6_test_12
&2
&3
0
:var_e7d6_test_12_end
wmem >var_e7d6_test_12 &1
set reg1 >var_e7d6_test_12
call >str_equal
wmem >var_result_test_12 reg0
rmem reg0 >var_result_test_12
call >print_number
ret
:function_5580_test_9_end
set reg1 >function_5580_test_9
call >test
ret
:function_33f0_test_8_end
set reg1 >function_33f0_test_8
call >test
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

