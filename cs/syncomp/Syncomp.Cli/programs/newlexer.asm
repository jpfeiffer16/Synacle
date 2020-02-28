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
:while__stdlib_4_begin
rmem reg0 >var_str_ptr_stdlib_2
rmem reg0 reg0
jf reg0 >while__stdlib_4_end
rmem reg0 >var_str_ptr_stdlib_2
add reg0 reg0 1
wmem >var_str_ptr_stdlib_2 reg0
rmem reg0 >var_length_stdlib_3
add reg0 reg0 1
wmem >var_length_stdlib_3 reg0
jmp >while__stdlib_4_begin
:while__stdlib_4_end
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
:while__stdlib_13_begin
rmem reg0 >var_str_ptr_stdlib_12
rmem reg0 reg0
jf reg0 >while__stdlib_13_end
rmem reg0 >var_str_ptr_stdlib_12
rmem reg0 reg0
out reg0
rmem reg0 >var_str_ptr_stdlib_12
add reg0 reg0 1
wmem >var_str_ptr_stdlib_12 reg0
jmp >while__stdlib_13_begin
:while__stdlib_13_end
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
jmp >var_a_len_stdlib_25_end
:var_a_len_stdlib_25
:var_a_len_stdlib_25_end
rmem reg0 >var_str_a_stdlib_24
call >str_len
wmem >var_a_len_stdlib_25 reg0
jmp >var_b_len_stdlib_26_end
:var_b_len_stdlib_26
:var_b_len_stdlib_26_end
rmem reg0 >var_str_b_stdlib_24
call >str_len
wmem >var_b_len_stdlib_26 reg0
rmem reg0 >var_a_len_stdlib_25
rmem reg1 >var_b_len_stdlib_26
eq reg0 reg0 reg1
call >not
jf reg0 >end__stdlib_27
set reg0 0
ret
:end__stdlib_27
jmp >var_i_stdlib_30_end
:var_i_stdlib_30
:var_i_stdlib_30_end
set reg0 0
wmem >var_i_stdlib_30 reg0
:for__stdlib_30_begin
rmem reg0 >var_i_stdlib_30
rmem reg1 >var_a_len_stdlib_25
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for__stdlib_30_end
jmp >var_a_val_stdlib_31_end
:var_a_val_stdlib_31
:var_a_val_stdlib_31_end
rmem reg0 >var_str_a_stdlib_24
rmem reg1 >var_i_stdlib_30
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_a_val_stdlib_31 reg0
jmp >var_b_val_stdlib_32_end
:var_b_val_stdlib_32
:var_b_val_stdlib_32_end
rmem reg0 >var_str_b_stdlib_24
rmem reg1 >var_i_stdlib_30
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_b_val_stdlib_32 reg0
rmem reg0 >var_a_val_stdlib_31
rmem reg1 >var_b_val_stdlib_32
eq reg0 reg0 reg1
call >not
jf reg0 >end__stdlib_33
set reg0 0
ret
:end__stdlib_33
rmem reg0 >var_i_stdlib_30
add reg0 reg0 1
wmem >var_i_stdlib_30 reg0
jmp >for__stdlib_30_begin
:for__stdlib_30_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_data_index_stdlib_41_end
:var_data_index_stdlib_41
:var_data_index_stdlib_41_end
set reg0 16382
wmem >var_data_index_stdlib_41 reg0
:while__stdlib_42_begin
rmem reg0 >var_data_index_stdlib_41
rmem reg0 reg0
call >not
jf reg0 >while__stdlib_42_end
rmem reg0 >var_data_index_stdlib_41
set reg1 1
call >subtract
wmem >var_data_index_stdlib_41 reg0
jmp >while__stdlib_42_begin
:while__stdlib_42_end
rmem reg0 >var_data_index_stdlib_41
set reg1 2
add reg0 reg0 reg1
wmem >var_data_index_stdlib_41 reg0
rmem reg0 >var_data_index_stdlib_41
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_length_stdlib_49_end
:var_length_stdlib_49
:var_length_stdlib_49_end
wmem >var_length_stdlib_49 reg0
jmp >var_pointer_stdlib_50_end
:var_pointer_stdlib_50
:var_pointer_stdlib_50_end
call >alloc
wmem >var_pointer_stdlib_50 reg0
jmp >var_dest_ptr_stdlib_51_end
:var_dest_ptr_stdlib_51
:var_dest_ptr_stdlib_51_end
rmem reg0 >var_pointer_stdlib_50
rmem reg1 >var_length_stdlib_49
add reg0 reg0 reg1
wmem >var_dest_ptr_stdlib_51 reg0
rmem reg0 >var_dest_ptr_stdlib_51
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_pointer_stdlib_50
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_s_ptr_stdlib_56_end
:var_s_ptr_stdlib_56
:var_s_ptr_stdlib_56_end
jmp >var_d_ptr_stdlib_56_end
:var_d_ptr_stdlib_56
:var_d_ptr_stdlib_56_end
jmp >var_len_stdlib_56_end
:var_len_stdlib_56
:var_len_stdlib_56_end
wmem >var_s_ptr_stdlib_56 reg0
wmem >var_d_ptr_stdlib_56 reg1
wmem >var_len_stdlib_56 reg2
jmp >var_current_byte_stdlib_57_end
:var_current_byte_stdlib_57
:var_current_byte_stdlib_57_end
set reg0 0
wmem >var_current_byte_stdlib_57 reg0
:while__stdlib_58_begin
rmem reg0 >var_current_byte_stdlib_57
rmem reg1 >var_len_stdlib_56
gt reg0 reg0 reg1
call >not
jf reg0 >while__stdlib_58_end
jmp >var_byte_to_write_ptr_stdlib_59_end
:var_byte_to_write_ptr_stdlib_59
:var_byte_to_write_ptr_stdlib_59_end
rmem reg0 >var_s_ptr_stdlib_56
rmem reg1 >var_current_byte_stdlib_57
add reg0 reg0 reg1
wmem >var_byte_to_write_ptr_stdlib_59 reg0
jmp >var_dest_ptr_stdlib_60_end
:var_dest_ptr_stdlib_60
:var_dest_ptr_stdlib_60_end
rmem reg0 >var_d_ptr_stdlib_56
rmem reg1 >var_current_byte_stdlib_57
add reg0 reg0 reg1
wmem >var_dest_ptr_stdlib_60 reg0
rmem reg0 >var_dest_ptr_stdlib_60
rmem reg1 >var_byte_to_write_ptr_stdlib_59
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_current_byte_stdlib_57
add reg0 reg0 1
wmem >var_current_byte_stdlib_57 reg0
jmp >while__stdlib_58_begin
:while__stdlib_58_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_cat_end
:str_cat
jmp >var_str_a_stdlib_66_end
:var_str_a_stdlib_66
:var_str_a_stdlib_66_end
jmp >var_str_b_stdlib_66_end
:var_str_b_stdlib_66
:var_str_b_stdlib_66_end
wmem >var_str_a_stdlib_66 reg0
wmem >var_str_b_stdlib_66 reg1
jmp >var_a_len_stdlib_67_end
:var_a_len_stdlib_67
:var_a_len_stdlib_67_end
rmem reg0 >var_str_a_stdlib_66
call >str_len
wmem >var_a_len_stdlib_67 reg0
jmp >var_b_len_stdlib_68_end
:var_b_len_stdlib_68
:var_b_len_stdlib_68_end
rmem reg0 >var_str_b_stdlib_66
call >str_len
wmem >var_b_len_stdlib_68 reg0
jmp >var_alloc_ptr_stdlib_69_end
:var_alloc_ptr_stdlib_69
:var_alloc_ptr_stdlib_69_end
call >alloc
wmem >var_alloc_ptr_stdlib_69 reg0
rmem reg0 >var_str_a_stdlib_66
rmem reg1 >var_alloc_ptr_stdlib_69
rmem reg2 >var_a_len_stdlib_67
call >mem_cp
jmp >var_end_address_stdlib_71_end
:var_end_address_stdlib_71
:var_end_address_stdlib_71_end
rmem reg0 >var_alloc_ptr_stdlib_69
rmem reg1 >var_a_len_stdlib_67
add reg0 reg0 reg1
wmem >var_end_address_stdlib_71 reg0
rmem reg0 >var_b_len_stdlib_68
add reg0 reg0 1
wmem >var_b_len_stdlib_68 reg0
rmem reg0 >var_str_b_stdlib_66
rmem reg1 >var_end_address_stdlib_71
rmem reg2 >var_b_len_stdlib_68
call >mem_cp
rmem reg0 >var_alloc_ptr_stdlib_69
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_str_ptr_stdlib_77_end
:var_str_ptr_stdlib_77
:var_str_ptr_stdlib_77_end
wmem >var_str_ptr_stdlib_77 reg0
jmp >var_alloc_ptr_stdlib_78_end
:var_alloc_ptr_stdlib_78
:var_alloc_ptr_stdlib_78_end
call >alloc
wmem >var_alloc_ptr_stdlib_78 reg0
jmp >var_len_stdlib_79_end
:var_len_stdlib_79
:var_len_stdlib_79_end
rmem reg0 >var_str_ptr_stdlib_77
call >str_len
wmem >var_len_stdlib_79 reg0
jmp >var_index_stdlib_80_end
:var_index_stdlib_80
:var_index_stdlib_80_end
set reg0 0
wmem >var_index_stdlib_80 reg0
:while__stdlib_81_begin
rmem reg0 >var_index_stdlib_80
rmem reg1 >var_len_stdlib_79
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_81_end
jmp >var_source_index_stdlib_82_end
:var_source_index_stdlib_82
:var_source_index_stdlib_82_end
rmem reg0 >var_str_ptr_stdlib_77
rmem reg1 >var_index_stdlib_80
add reg0 reg0 reg1
wmem >var_source_index_stdlib_82 reg0
rmem reg0 >var_source_index_stdlib_82
rmem reg0 reg0
rmem reg0 >var_source_index_stdlib_82
rmem reg0 reg0
push reg0
rmem reg0 >var_index_stdlib_80
add reg0 reg0 1
wmem >var_index_stdlib_80 reg0
jmp >while__stdlib_81_begin
:while__stdlib_81_end
jmp >var_current_byte_stdlib_87_end
:var_current_byte_stdlib_87
:var_current_byte_stdlib_87_end
pop reg0
wmem >var_current_byte_stdlib_87 reg0
set reg0 0
wmem >var_index_stdlib_80 reg0
:while__stdlib_89_begin
rmem reg0 >var_index_stdlib_80
rmem reg1 >var_len_stdlib_79
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_89_end
jmp >var_dest_index_stdlib_90_end
:var_dest_index_stdlib_90
:var_dest_index_stdlib_90_end
rmem reg0 >var_alloc_ptr_stdlib_78
rmem reg1 >var_index_stdlib_80
add reg0 reg0 reg1
wmem >var_dest_index_stdlib_90 reg0
rmem reg0 >var_dest_index_stdlib_90
rmem reg1 >var_current_byte_stdlib_87
wmem reg0 reg1
rmem reg0 >var_index_stdlib_80
add reg0 reg0 1
wmem >var_index_stdlib_80 reg0
pop reg0
wmem >var_current_byte_stdlib_87 reg0
jmp >while__stdlib_89_begin
:while__stdlib_89_end
rmem reg0 >var_current_byte_stdlib_87
rmem reg0 >var_current_byte_stdlib_87
push reg0
rmem reg0 >var_alloc_ptr_stdlib_78
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_data_index_stdlib_102_end
:var_data_index_stdlib_102
:var_data_index_stdlib_102_end
set reg0 16384
wmem >var_data_index_stdlib_102 reg0
jmp >var_in_char_stdlib_103_end
:var_in_char_stdlib_103
:var_in_char_stdlib_103_end
in reg0
wmem >var_in_char_stdlib_103 reg0
jmp >var_is_newline_stdlib_104_end
:var_is_newline_stdlib_104
:var_is_newline_stdlib_104_end
rmem reg0 >var_in_char_stdlib_103
set reg1 10
eq reg0 reg0 reg1
wmem >var_is_newline_stdlib_104 reg0
:while__stdlib_105_begin
rmem reg0 >var_is_newline_stdlib_104
rmem reg1 >var_in_char_stdlib_103
call >and
call >not
jf reg0 >while__stdlib_105_end
rmem reg0 >var_data_index_stdlib_102
rmem reg1 >var_in_char_stdlib_103
wmem reg0 reg1
rmem reg0 >var_data_index_stdlib_102
add reg0 reg0 1
wmem >var_data_index_stdlib_102 reg0
in reg0
wmem >var_in_char_stdlib_103 reg0
rmem reg0 >var_in_char_stdlib_103
set reg1 10
eq reg0 reg0 reg1
wmem >var_is_newline_stdlib_104 reg0
jmp >while__stdlib_105_begin
:while__stdlib_105_end
rmem reg0 >var_data_index_stdlib_102
set reg1 0
wmem reg0 reg1
jmp >var_alloc_ptr_stdlib_112_end
:var_alloc_ptr_stdlib_112
:var_alloc_ptr_stdlib_112_end
call >alloc
wmem >var_alloc_ptr_stdlib_112 reg0
jmp >var_length_stdlib_113_end
:var_length_stdlib_113
:var_length_stdlib_113_end
set reg0 16384
call >str_len
wmem >var_length_stdlib_113 reg0
set reg0 16384
rmem reg1 >var_alloc_ptr_stdlib_112
rmem reg2 >var_length_stdlib_113
call >mem_cp
rmem reg0 >var_alloc_ptr_stdlib_112
ret
ret
:input_end
set reg0 >input
jmp >print_number_end
:print_number
jmp >var_num_stdlib_118_end
:var_num_stdlib_118
:var_num_stdlib_118_end
wmem >var_num_stdlib_118 reg0
rmem reg0 >var_num_stdlib_118
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end__stdlib_119
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end__stdlib_119
jmp >var_charNum_stdlib_124_end
:var_charNum_stdlib_124
:var_charNum_stdlib_124_end
jmp >var_length_stdlib_125_end
:var_length_stdlib_125
:var_length_stdlib_125_end
set reg0 0
wmem >var_length_stdlib_125 reg0
:while__stdlib_126_begin
rmem reg0 >var_num_stdlib_118
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while__stdlib_126_end
rmem reg0 >var_num_stdlib_118
set reg1 10
mod reg0 reg0 reg1
wmem >var_charNum_stdlib_124 reg0
rmem reg0 >var_charNum_stdlib_124
rmem reg0 >var_charNum_stdlib_124
push reg0
rmem reg0 >var_length_stdlib_125
add reg0 reg0 1
wmem >var_length_stdlib_125 reg0
rmem reg0 >var_num_stdlib_118
set reg1 10
call >divide
wmem >var_num_stdlib_118 reg0
jmp >while__stdlib_126_begin
:while__stdlib_126_end
rmem reg0 >var_num_stdlib_118
set reg1 10
mod reg0 reg0 reg1
wmem >var_charNum_stdlib_124 reg0
rmem reg0 >var_charNum_stdlib_124
rmem reg0 >var_charNum_stdlib_124
push reg0
rmem reg0 >var_length_stdlib_125
add reg0 reg0 1
wmem >var_length_stdlib_125 reg0
jmp >var_stackIndex_stdlib_137_end
:var_stackIndex_stdlib_137
:var_stackIndex_stdlib_137_end
set reg0 0
wmem >var_stackIndex_stdlib_137 reg0
:while__stdlib_139_begin
rmem reg0 >var_stackIndex_stdlib_137
rmem reg1 >var_length_stdlib_125
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_139_end
rmem reg0 >var_stackIndex_stdlib_137
set reg1 1
add reg0 reg0 reg1
wmem >var_stackIndex_stdlib_137 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while__stdlib_139_begin
:while__stdlib_139_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_i_stdlib_146_end
:var_i_stdlib_146
:var_i_stdlib_146_end
set reg0 0
wmem >var_i_stdlib_146 reg0
:while__stdlib_148_begin
rmem reg0 >var_i_stdlib_146
rmem reg0 reg0
jf reg0 >while__stdlib_148_end
rmem reg0 >var_i_stdlib_146
add reg0 reg0 1
wmem >var_i_stdlib_146 reg0
rmem reg0 >var_i_stdlib_146
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while__stdlib_148_begin
:while__stdlib_148_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_str_ptr_stdlib_155_end
:var_str_ptr_stdlib_155
:var_str_ptr_stdlib_155_end
wmem >var_str_ptr_stdlib_155 reg0
jmp >var_flipped_stdlib_156_end
:var_flipped_stdlib_156
:var_flipped_stdlib_156_end
rmem reg0 >var_str_ptr_stdlib_155
call >flip_str
wmem >var_flipped_stdlib_156 reg0
jmp >var_len_stdlib_157_end
:var_len_stdlib_157
:var_len_stdlib_157_end
rmem reg0 >var_flipped_stdlib_156
call >str_len
wmem >var_len_stdlib_157 reg0
rmem reg0 >var_len_stdlib_157
set reg1 1
call >subtract
wmem >var_len_stdlib_157 reg0
jmp >var_index_stdlib_160_end
:var_index_stdlib_160
:var_index_stdlib_160_end
set reg0 0
wmem >var_index_stdlib_160 reg0
jmp >var_num_stdlib_161_end
:var_num_stdlib_161
:var_num_stdlib_161_end
set reg0 0
wmem >var_num_stdlib_161 reg0
:while__stdlib_162_begin
rmem reg0 >var_index_stdlib_160
rmem reg1 >var_len_stdlib_157
gt reg0 reg0 reg1
call >not
jf reg0 >while__stdlib_162_end
jmp >var_char_stdlib_163_end
:var_char_stdlib_163
:var_char_stdlib_163_end
rmem reg0 >var_flipped_stdlib_156
rmem reg1 >var_index_stdlib_160
add reg0 reg0 reg1
wmem >var_char_stdlib_163 reg0
rmem reg0 >var_char_stdlib_163
rmem reg0 reg0
wmem >var_char_stdlib_163 reg0
jmp >var_is_greater_than_stdlib_165_end
:var_is_greater_than_stdlib_165
:var_is_greater_than_stdlib_165_end
rmem reg0 >var_char_stdlib_163
set reg1 47
gt reg0 reg0 reg1
wmem >var_is_greater_than_stdlib_165 reg0
jmp >var_is_less_than_stdlib_166_end
:var_is_less_than_stdlib_166
:var_is_less_than_stdlib_166_end
rmem reg0 >var_char_stdlib_163
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_is_less_than_stdlib_166 reg0
rmem reg0 >var_is_greater_than_stdlib_165
rmem reg1 >var_is_less_than_stdlib_166
call >and
jf reg0 >end__stdlib_170
jmp >var_this_digit_stdlib_171_end
:var_this_digit_stdlib_171
:var_this_digit_stdlib_171_end
rmem reg0 >var_char_stdlib_163
set reg1 48
call >subtract
wmem >var_this_digit_stdlib_171 reg0
rmem reg0 >var_this_digit_stdlib_171
call >print_number
set reg0 10
out reg0
jmp >var_digit_index_stdlib_176_end
:var_digit_index_stdlib_176
:var_digit_index_stdlib_176_end
set reg0 0
wmem >var_digit_index_stdlib_176 reg0
jmp >var_this_index_stdlib_177_end
:var_this_index_stdlib_177
:var_this_index_stdlib_177_end
rmem reg0 >var_index_stdlib_160
set reg1 1
call >subtract
wmem >var_this_index_stdlib_177 reg0
:while__stdlib_178_begin
rmem reg0 >var_digit_index_stdlib_176
rmem reg1 >var_this_index_stdlib_177
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_178_end
rmem reg0 >var_this_digit_stdlib_171
set reg1 10
mult reg0 reg0 reg1
wmem >var_this_digit_stdlib_171 reg0
rmem reg0 >var_digit_index_stdlib_176
add reg0 reg0 1
wmem >var_digit_index_stdlib_176 reg0
jmp >while__stdlib_178_begin
:while__stdlib_178_end
rmem reg0 >var_num_stdlib_161
rmem reg1 >var_this_digit_stdlib_171
add reg0 reg0 reg1
wmem >var_num_stdlib_161 reg0
:end__stdlib_170
rmem reg0 >var_index_stdlib_160
add reg0 reg0 1
wmem >var_index_stdlib_160 reg0
jmp >while__stdlib_162_begin
:while__stdlib_162_end
rmem reg0 >var_num_stdlib_161
call >print_number
rmem reg0 >var_num_stdlib_161
ret
ret
:int_end
set reg0 >int
jmp >var_test_newlexer_3_end
:var_test_newlexer_3
:var_test_newlexer_3_end
jmp >function__newlexer_3_end
:function__newlexer_3
jmp >var_num_newlexer_3_end
:var_num_newlexer_3
:var_num_newlexer_3_end
wmem >var_num_newlexer_3 reg0
rmem reg0 >var_num_newlexer_3
call >print_number
jmp >var__newlexer_6_end
:var__newlexer_6
0
:var__newlexer_6_end
wmem >var__newlexer_6 32
set reg0 >var__newlexer_6
call >println
jmp >var__newlexer_7_end
:var__newlexer_7
&e
&l
&l
&o
&,
32
&W
&o
&r
&l
&d
&!
0
:var__newlexer_7_end
wmem >var__newlexer_7 &H
set reg0 >var__newlexer_7
call >println
ret
:function__newlexer_3_end
set reg0 >function__newlexer_3
wmem >var_test_newlexer_3 reg0
set reg0 123
rmem reg7 >var_test_newlexer_3
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

