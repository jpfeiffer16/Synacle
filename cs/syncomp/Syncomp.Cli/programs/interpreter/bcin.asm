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
jmp >var_ptr_stdlib_50_end
:var_ptr_stdlib_50
:var_ptr_stdlib_50_end
call >alloc
wmem >var_ptr_stdlib_50 reg0
jmp >var_dest_ptr_stdlib_51_end
:var_dest_ptr_stdlib_51
:var_dest_ptr_stdlib_51_end
rmem reg0 >var_ptr_stdlib_50
rmem reg1 >var_length_stdlib_49
add reg0 reg0 reg1
wmem >var_dest_ptr_stdlib_51 reg0
rmem reg0 >var_dest_ptr_stdlib_51
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_ptr_stdlib_50
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
jmp >throw_end
:throw
jmp >var_msg_error_2_end
:var_msg_error_2
:var_msg_error_2_end
wmem >var_msg_error_2 reg0
rmem reg0 >var_msg_error_2
call >println
halt
ret
:throw_end
set reg0 >throw
jmp >var_INDEX_OUT_OF_BOUNDS_MESSAGE_array_wrapper_4_end
:var_INDEX_OUT_OF_BOUNDS_MESSAGE_array_wrapper_4
:var_INDEX_OUT_OF_BOUNDS_MESSAGE_array_wrapper_4_end
jmp >var__array_wrapper_4_end
:var__array_wrapper_4
&n
&d
&e
&x
32
&o
&u
&t
&s
&i
&d
&e
32
&o
&f
32
&t
&h
&e
32
&b
&o
&u
&n
&d
&s
32
&o
&f
32
&a
&r
&r
&a
&y
0
:var__array_wrapper_4_end
wmem >var__array_wrapper_4 &I
set reg0 >var__array_wrapper_4
wmem >var_INDEX_OUT_OF_BOUNDS_MESSAGE_array_wrapper_4 reg0
jmp >array_length_end
:array_length
jmp >var_ptr_array_wrapper_9_end
:var_ptr_array_wrapper_9
:var_ptr_array_wrapper_9_end
wmem >var_ptr_array_wrapper_9 reg0
jmp >var_length_array_wrapper_11_end
:var_length_array_wrapper_11
:var_length_array_wrapper_11_end
set reg0 0
wmem >var_length_array_wrapper_11 reg0
jmp >var_value_array_wrapper_12_end
:var_value_array_wrapper_12
:var_value_array_wrapper_12_end
rmem reg0 >var_ptr_array_wrapper_9
rmem reg1 >var_length_array_wrapper_11
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_value_array_wrapper_12 reg0
:while__array_wrapper_13_begin
rmem reg0 >var_value_array_wrapper_12
set reg1 32767
eq reg0 reg0 reg1
call >not
jf reg0 >while__array_wrapper_13_end
rmem reg0 >var_length_array_wrapper_11
add reg0 reg0 1
wmem >var_length_array_wrapper_11 reg0
rmem reg0 >var_ptr_array_wrapper_9
rmem reg1 >var_length_array_wrapper_11
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_value_array_wrapper_12 reg0
jmp >while__array_wrapper_13_begin
:while__array_wrapper_13_end
rmem reg0 >var_length_array_wrapper_11
ret
ret
:array_length_end
set reg0 >array_length
jmp >array_new_end
:array_new
jmp >var_length_array_wrapper_21_end
:var_length_array_wrapper_21
:var_length_array_wrapper_21_end
wmem >var_length_array_wrapper_21 reg0
jmp >var_alloc_ptr_array_wrapper_23_end
:var_alloc_ptr_array_wrapper_23
:var_alloc_ptr_array_wrapper_23_end
rmem reg0 >var_length_array_wrapper_21
call >alloc_chunk
wmem >var_alloc_ptr_array_wrapper_23 reg0
rmem reg0 >var_alloc_ptr_array_wrapper_23
ret
ret
:array_new_end
set reg0 >array_new
jmp >array_get_nth_end
:array_get_nth
jmp >var_ptr_array_wrapper_27_end
:var_ptr_array_wrapper_27
:var_ptr_array_wrapper_27_end
jmp >var_index_array_wrapper_27_end
:var_index_array_wrapper_27
:var_index_array_wrapper_27_end
wmem >var_ptr_array_wrapper_27 reg0
wmem >var_index_array_wrapper_27 reg1
jmp >var_length_array_wrapper_29_end
:var_length_array_wrapper_29
:var_length_array_wrapper_29_end
rmem reg0 >var_ptr_array_wrapper_27
call >array_length
wmem >var_length_array_wrapper_29 reg0
rmem reg0 >var_index_array_wrapper_27
rmem reg1 >var_length_array_wrapper_29
gt reg2 reg0 reg1
eq reg3 reg0 reg1
or reg0 reg2 reg3
jf reg0 >end__array_wrapper_30
rmem reg0 >var_INDEX_OUT_OF_BOUNDS_MESSAGE_array_wrapper_4
call >throw
:end__array_wrapper_30
jmp >var_return_value_array_wrapper_34_end
:var_return_value_array_wrapper_34
:var_return_value_array_wrapper_34_end
rmem reg0 >var_ptr_array_wrapper_27
rmem reg1 >var_index_array_wrapper_27
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_return_value_array_wrapper_34 reg0
rmem reg0 >var_return_value_array_wrapper_34
ret
ret
:array_get_nth_end
set reg0 >array_get_nth
jmp >array_set_nth_end
:array_set_nth
jmp >var_ptr_array_wrapper_38_end
:var_ptr_array_wrapper_38
:var_ptr_array_wrapper_38_end
jmp >var_index_array_wrapper_38_end
:var_index_array_wrapper_38
:var_index_array_wrapper_38_end
jmp >var_value_array_wrapper_38_end
:var_value_array_wrapper_38
:var_value_array_wrapper_38_end
wmem >var_ptr_array_wrapper_38 reg0
wmem >var_index_array_wrapper_38 reg1
wmem >var_value_array_wrapper_38 reg2
jmp >var_length_array_wrapper_40_end
:var_length_array_wrapper_40
:var_length_array_wrapper_40_end
rmem reg0 >var_ptr_array_wrapper_38
call >array_length
wmem >var_length_array_wrapper_40 reg0
rmem reg0 >var_index_array_wrapper_38
rmem reg1 >var_length_array_wrapper_40
gt reg2 reg0 reg1
eq reg3 reg0 reg1
or reg0 reg2 reg3
jf reg0 >end__array_wrapper_41
rmem reg0 >var_INDEX_OUT_OF_BOUNDS_MESSAGE_array_wrapper_4
call >throw
:end__array_wrapper_41
rmem reg0 >var_ptr_array_wrapper_38
rmem reg1 >var_index_array_wrapper_38
add reg0 reg0 reg1
rmem reg1 >var_value_array_wrapper_38
wmem reg0 reg1
ret
:array_set_nth_end
set reg0 >array_set_nth
jmp >array_foreach_end
:array_foreach
jmp >var_ptr_array_wrapper_49_end
:var_ptr_array_wrapper_49
:var_ptr_array_wrapper_49_end
jmp >var_cb_array_wrapper_49_end
:var_cb_array_wrapper_49
:var_cb_array_wrapper_49_end
wmem >var_ptr_array_wrapper_49 reg0
wmem >var_cb_array_wrapper_49 reg1
jmp >var_length_array_wrapper_51_end
:var_length_array_wrapper_51
:var_length_array_wrapper_51_end
rmem reg0 >var_ptr_array_wrapper_49
call >array_length
wmem >var_length_array_wrapper_51 reg0
jmp >var_i_array_wrapper_52_end
:var_i_array_wrapper_52
:var_i_array_wrapper_52_end
set reg0 0
wmem >var_i_array_wrapper_52 reg0
:for__array_wrapper_52_begin
rmem reg0 >var_i_array_wrapper_52
rmem reg1 >var_length_array_wrapper_51
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for__array_wrapper_52_end
rmem reg0 >var_ptr_array_wrapper_49
rmem reg1 >var_i_array_wrapper_52
add reg0 reg0 reg1
rmem reg1 >var_i_array_wrapper_52
rmem reg7 >var_cb_array_wrapper_49
call reg7
rmem reg0 >var_i_array_wrapper_52
add reg0 reg0 1
wmem >var_i_array_wrapper_52 reg0
jmp >for__array_wrapper_52_begin
:for__array_wrapper_52_end
ret
:array_foreach_end
set reg0 >array_foreach
jmp >array_map_end
:array_map
jmp >var_ptr_array_wrapper_58_end
:var_ptr_array_wrapper_58
:var_ptr_array_wrapper_58_end
jmp >var_cb_array_wrapper_58_end
:var_cb_array_wrapper_58
:var_cb_array_wrapper_58_end
wmem >var_ptr_array_wrapper_58 reg0
wmem >var_cb_array_wrapper_58 reg1
jmp >var_length_array_wrapper_60_end
:var_length_array_wrapper_60
:var_length_array_wrapper_60_end
rmem reg0 >var_ptr_array_wrapper_58
call >array_length
wmem >var_length_array_wrapper_60 reg0
jmp >var_new_array_array_wrapper_61_end
:var_new_array_array_wrapper_61
:var_new_array_array_wrapper_61_end
rmem reg0 >var_length_array_wrapper_60
call >alloc_chunk
wmem >var_new_array_array_wrapper_61 reg0
jmp >var_i_array_wrapper_62_end
:var_i_array_wrapper_62
:var_i_array_wrapper_62_end
set reg0 0
wmem >var_i_array_wrapper_62 reg0
:for__array_wrapper_62_begin
rmem reg0 >var_i_array_wrapper_62
rmem reg1 >var_length_array_wrapper_60
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for__array_wrapper_62_end
jmp >var_value_array_wrapper_64_end
:var_value_array_wrapper_64
:var_value_array_wrapper_64_end
rmem reg0 >var_ptr_array_wrapper_58
rmem reg1 >var_i_array_wrapper_62
call >array_get_nth
wmem >var_value_array_wrapper_64 reg0
jmp >var_new_value_array_wrapper_65_end
:var_new_value_array_wrapper_65
:var_new_value_array_wrapper_65_end
rmem reg0 >var_value_array_wrapper_64
rmem reg7 >var_cb_array_wrapper_58
call reg7
wmem >var_new_value_array_wrapper_65 reg0
rmem reg0 >var_new_array_array_wrapper_61
rmem reg1 >var_i_array_wrapper_62
rmem reg2 >var_new_value_array_wrapper_65
call >array_set_nth
rmem reg0 >var_i_array_wrapper_62
add reg0 reg0 1
wmem >var_i_array_wrapper_62 reg0
jmp >for__array_wrapper_62_begin
:for__array_wrapper_62_end
rmem reg0 >var_new_array_array_wrapper_61
ret
ret
:array_map_end
set reg0 >array_map
jmp >interpret_command_end
:interpret_command
jmp >var_cmd_shell_3_end
:var_cmd_shell_3
:var_cmd_shell_3_end
wmem >var_cmd_shell_3 reg0
rmem reg0 >var_cmd_shell_3
jmp >var__shell_4_end
:var__shell_4
&e
&l
&p
0
:var__shell_4_end
wmem >var__shell_4 &h
set reg1 >var__shell_4
call >str_equal
jf reg0 >end__shell_4
jmp >var__shell_5_end
:var__shell_5
&h
&i
&s
32
&i
&s
32
&h
&e
&l
&p
0
:var__shell_5_end
wmem >var__shell_5 &T
set reg0 >var__shell_5
call >println
:end__shell_4
ret
:interpret_command_end
set reg0 >interpret_command
jmp >interpret_loop_end
:interpret_loop
jmp >var__shell_10_end
:var__shell_10
32
0
:var__shell_10_end
wmem >var__shell_10 &>
set reg0 >var__shell_10
call >print
jmp >var_command_shell_11_end
:var_command_shell_11
:var_command_shell_11_end
call >input
wmem >var_command_shell_11 reg0
rmem reg0 >var_command_shell_11
call >interpret_command
call >interpret_loop
ret
:interpret_loop_end
set reg0 >interpret_loop
jmp >var_opcodes_bcin_30_end
:var_opcodes_bcin_30
:fld_opcodes_bcin_30_HALT
:fld_opcodes_bcin_30_SET
:fld_opcodes_bcin_30_PUSH
:fld_opcodes_bcin_30_POP
:fld_opcodes_bcin_30_EQ
:fld_opcodes_bcin_30_GT
:fld_opcodes_bcin_30_JMP
:fld_opcodes_bcin_30_JT
:fld_opcodes_bcin_30_JF
:fld_opcodes_bcin_30_ADD
:fld_opcodes_bcin_30_MULT
:fld_opcodes_bcin_30_MOD
:fld_opcodes_bcin_30_AND
:fld_opcodes_bcin_30_OR
:fld_opcodes_bcin_30_NOT
:fld_opcodes_bcin_30_RMEM
:fld_opcodes_bcin_30_WMEM
:fld_opcodes_bcin_30_CALL
:fld_opcodes_bcin_30_RET
:fld_opcodes_bcin_30_OUT
:fld_opcodes_bcin_30_IN
:fld_opcodes_bcin_30_NOOP
:var_opcodes_bcin_30_end
set reg0 0
wmem >fld_opcodes_bcin_30_HALT reg0
set reg0 1
wmem >fld_opcodes_bcin_30_SET reg0
set reg0 2
wmem >fld_opcodes_bcin_30_PUSH reg0
set reg0 3
wmem >fld_opcodes_bcin_30_POP reg0
set reg0 4
wmem >fld_opcodes_bcin_30_EQ reg0
set reg0 5
wmem >fld_opcodes_bcin_30_GT reg0
set reg0 6
wmem >fld_opcodes_bcin_30_JMP reg0
set reg0 7
wmem >fld_opcodes_bcin_30_JT reg0
set reg0 8
wmem >fld_opcodes_bcin_30_JF reg0
set reg0 9
wmem >fld_opcodes_bcin_30_ADD reg0
set reg0 10
wmem >fld_opcodes_bcin_30_MULT reg0
set reg0 11
wmem >fld_opcodes_bcin_30_MOD reg0
set reg0 12
wmem >fld_opcodes_bcin_30_AND reg0
set reg0 13
wmem >fld_opcodes_bcin_30_OR reg0
set reg0 14
wmem >fld_opcodes_bcin_30_NOT reg0
set reg0 15
wmem >fld_opcodes_bcin_30_RMEM reg0
set reg0 16
wmem >fld_opcodes_bcin_30_WMEM reg0
set reg0 17
wmem >fld_opcodes_bcin_30_CALL reg0
set reg0 18
wmem >fld_opcodes_bcin_30_RET reg0
set reg0 19
wmem >fld_opcodes_bcin_30_OUT reg0
set reg0 20
wmem >fld_opcodes_bcin_30_IN reg0
set reg0 21
wmem >fld_opcodes_bcin_30_NOOP reg0
jmp >take_end
:take
jmp >var_op_name_bcin_60_end
:var_op_name_bcin_60
:var_op_name_bcin_60_end
jmp >var_num_bcin_60_end
:var_num_bcin_60
:var_num_bcin_60_end
jmp >var_p_counter_bcin_60_end
:var_p_counter_bcin_60
:var_p_counter_bcin_60_end
wmem >var_op_name_bcin_60 reg0
wmem >var_num_bcin_60 reg1
wmem >var_p_counter_bcin_60 reg2
rmem reg0 >var_op_name_bcin_60
call >print
jmp >var__bcin_63_end
:var__bcin_63
0
:var__bcin_63_end
wmem >var__bcin_63 32
set reg0 >var__bcin_63
call >print
jmp >var_r_bcin_64_end
:var_r_bcin_64
:fld_r_bcin_64_p_counter
:fld_r_bcin_64_items
:var_r_bcin_64_end
jmp >var_result_bcin_64_end
:var_result_bcin_64
:var_result_bcin_64_end
set reg0 >var_r_bcin_64
wmem >var_result_bcin_64 reg0
jmp >var_take_array_bcin_65_end
:var_take_array_bcin_65
:var_take_array_bcin_65_end
set reg0 3
call >array_new
wmem >var_take_array_bcin_65 reg0
jmp >var_i_bcin_66_end
:var_i_bcin_66
:var_i_bcin_66_end
set reg0 0
wmem >var_i_bcin_66 reg0
:for__bcin_66_begin
rmem reg0 >var_i_bcin_66
rmem reg1 >var_num_bcin_60
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for__bcin_66_end
rmem reg0 >var_p_counter_bcin_60
add reg0 reg0 1
wmem >var_p_counter_bcin_60 reg0
rmem reg0 >var_p_counter_bcin_60
rmem reg0 reg0
call >print_number
jmp >var__bcin_70_end
:var__bcin_70
0
:var__bcin_70_end
wmem >var__bcin_70 32
set reg0 >var__bcin_70
call >print
rmem reg0 >var_take_array_bcin_65
rmem reg1 >var_i_bcin_66
rmem reg2 >var_p_counter_bcin_60
rmem reg2 reg2
call >array_set_nth
rmem reg0 >var_i_bcin_66
add reg0 reg0 1
wmem >var_i_bcin_66 reg0
jmp >for__bcin_66_begin
:for__bcin_66_end
jmp >var__bcin_73_end
:var__bcin_73
0
:var__bcin_73_end
wmem >var__bcin_73 32
set reg0 >var__bcin_73
call >println
rmem reg0 >var_p_counter_bcin_60
rmem reg7 >var_result_bcin_64
add reg7 reg7 1
wmem reg7 reg0
rmem reg0 >var_take_array_bcin_65
rmem reg7 >var_result_bcin_64
add reg7 reg7 2
wmem reg7 reg0
rmem reg0 >var_result_bcin_64
ret
ret
:take_end
set reg0 >take
jmp >var_entrypoint_bcin_79_end
:var_entrypoint_bcin_79
:var_entrypoint_bcin_79_end
jmp >function__bcin_79_end
:function__bcin_79
jmp >var__bcin_81_end
:var__bcin_81
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
:var__bcin_81_end
wmem >var__bcin_81 &H
set reg0 >var__bcin_81
call >println
ret
:function__bcin_79_end
set reg0 >function__bcin_79
wmem >var_entrypoint_bcin_79 reg0
jmp >var_p_counter_bcin_85_end
:var_p_counter_bcin_85
:var_p_counter_bcin_85_end
rmem reg0 >var_entrypoint_bcin_79
wmem >var_p_counter_bcin_85 reg0
:for__bcin_86_begin
rmem reg0 >var_p_counter_bcin_85
set reg1 32767
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for__bcin_86_end
jmp >var_op_bcin_87_end
:var_op_bcin_87
:var_op_bcin_87_end
rmem reg0 >var_p_counter_bcin_85
rmem reg0 reg0
wmem >var_op_bcin_87 reg0
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_HALT
eq reg0 reg0 reg1
jf reg0 >end__bcin_88
jmp >var_result_bcin_89_end
:var_result_bcin_89
:var_result_bcin_89_end
jmp >var__bcin_89_end
:var__bcin_89
&A
&L
&T
0
:var__bcin_89_end
wmem >var__bcin_89 &H
set reg0 >var__bcin_89
set reg1 0
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_88
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_SET
eq reg0 reg0 reg1
jf reg0 >end__bcin_92
jmp >var_result_bcin_93_end
:var_result_bcin_93
:var_result_bcin_93_end
jmp >var__bcin_93_end
:var__bcin_93
&E
&T
0
:var__bcin_93_end
wmem >var__bcin_93 &S
set reg0 >var__bcin_93
set reg1 2
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 2
rmem reg0 reg0
set reg1 0
call >array_get_nth
breakpoint
rmem reg0 >var_result_bcin_89
add reg0 reg0 2
rmem reg0 reg0
set reg1 1
call >array_get_nth
breakpoint
:end__bcin_92
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_PUSH
eq reg0 reg0 reg1
jf reg0 >end__bcin_100
jmp >var_result_bcin_101_end
:var_result_bcin_101
:var_result_bcin_101_end
jmp >var__bcin_101_end
:var__bcin_101
&U
&S
&H
0
:var__bcin_101_end
wmem >var__bcin_101 &P
set reg0 >var__bcin_101
set reg1 1
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_100
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_POP
eq reg0 reg0 reg1
jf reg0 >end__bcin_104
jmp >var_result_bcin_105_end
:var_result_bcin_105
:var_result_bcin_105_end
jmp >var__bcin_105_end
:var__bcin_105
&O
&P
0
:var__bcin_105_end
wmem >var__bcin_105 &P
set reg0 >var__bcin_105
set reg1 1
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_104
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_EQ
eq reg0 reg0 reg1
jf reg0 >end__bcin_108
jmp >var_result_bcin_109_end
:var_result_bcin_109
:var_result_bcin_109_end
jmp >var__bcin_109_end
:var__bcin_109
&Q
0
:var__bcin_109_end
wmem >var__bcin_109 &E
set reg0 >var__bcin_109
set reg1 3
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_108
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_GT
eq reg0 reg0 reg1
jf reg0 >end__bcin_112
jmp >var_result_bcin_113_end
:var_result_bcin_113
:var_result_bcin_113_end
jmp >var__bcin_113_end
:var__bcin_113
&T
0
:var__bcin_113_end
wmem >var__bcin_113 &G
set reg0 >var__bcin_113
set reg1 3
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_112
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_JMP
eq reg0 reg0 reg1
jf reg0 >end__bcin_116
jmp >var_result_bcin_117_end
:var_result_bcin_117
:var_result_bcin_117_end
jmp >var__bcin_117_end
:var__bcin_117
&M
&P
0
:var__bcin_117_end
wmem >var__bcin_117 &J
set reg0 >var__bcin_117
set reg1 1
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_116
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_JT
eq reg0 reg0 reg1
jf reg0 >end__bcin_120
jmp >var_result_bcin_121_end
:var_result_bcin_121
:var_result_bcin_121_end
jmp >var__bcin_121_end
:var__bcin_121
&T
0
:var__bcin_121_end
wmem >var__bcin_121 &J
set reg0 >var__bcin_121
set reg1 2
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_120
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_JF
eq reg0 reg0 reg1
jf reg0 >end__bcin_124
jmp >var_result_bcin_125_end
:var_result_bcin_125
:var_result_bcin_125_end
jmp >var__bcin_125_end
:var__bcin_125
&F
0
:var__bcin_125_end
wmem >var__bcin_125 &J
set reg0 >var__bcin_125
set reg1 2
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_124
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_ADD
eq reg0 reg0 reg1
jf reg0 >end__bcin_128
jmp >var_result_bcin_129_end
:var_result_bcin_129
:var_result_bcin_129_end
jmp >var__bcin_129_end
:var__bcin_129
&D
&D
0
:var__bcin_129_end
wmem >var__bcin_129 &A
set reg0 >var__bcin_129
set reg1 3
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_128
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_MULT
eq reg0 reg0 reg1
jf reg0 >end__bcin_132
jmp >var_result_bcin_133_end
:var_result_bcin_133
:var_result_bcin_133_end
jmp >var__bcin_133_end
:var__bcin_133
&U
&L
&T
0
:var__bcin_133_end
wmem >var__bcin_133 &M
set reg0 >var__bcin_133
set reg1 3
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_132
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_MOD
eq reg0 reg0 reg1
jf reg0 >end__bcin_136
jmp >var_result_bcin_137_end
:var_result_bcin_137
:var_result_bcin_137_end
jmp >var__bcin_137_end
:var__bcin_137
&O
&D
0
:var__bcin_137_end
wmem >var__bcin_137 &M
set reg0 >var__bcin_137
set reg1 3
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_136
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_AND
eq reg0 reg0 reg1
jf reg0 >end__bcin_140
jmp >var_result_bcin_141_end
:var_result_bcin_141
:var_result_bcin_141_end
jmp >var__bcin_141_end
:var__bcin_141
&N
&D
0
:var__bcin_141_end
wmem >var__bcin_141 &A
set reg0 >var__bcin_141
set reg1 3
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_140
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_OR
eq reg0 reg0 reg1
jf reg0 >end__bcin_144
jmp >var_result_bcin_145_end
:var_result_bcin_145
:var_result_bcin_145_end
jmp >var__bcin_145_end
:var__bcin_145
&R
0
:var__bcin_145_end
wmem >var__bcin_145 &O
set reg0 >var__bcin_145
set reg1 3
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_144
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_NOT
eq reg0 reg0 reg1
jf reg0 >end__bcin_148
jmp >var_result_bcin_149_end
:var_result_bcin_149
:var_result_bcin_149_end
jmp >var__bcin_149_end
:var__bcin_149
&O
&T
0
:var__bcin_149_end
wmem >var__bcin_149 &N
set reg0 >var__bcin_149
set reg1 2
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_148
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_RMEM
eq reg0 reg0 reg1
jf reg0 >end__bcin_152
jmp >var_result_bcin_153_end
:var_result_bcin_153
:var_result_bcin_153_end
jmp >var__bcin_153_end
:var__bcin_153
&M
&E
&M
0
:var__bcin_153_end
wmem >var__bcin_153 &R
set reg0 >var__bcin_153
set reg1 2
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_152
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_WMEM
eq reg0 reg0 reg1
jf reg0 >end__bcin_156
jmp >var_result_bcin_157_end
:var_result_bcin_157
:var_result_bcin_157_end
jmp >var__bcin_157_end
:var__bcin_157
&M
&E
&M
0
:var__bcin_157_end
wmem >var__bcin_157 &W
set reg0 >var__bcin_157
set reg1 2
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_156
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_CALL
eq reg0 reg0 reg1
jf reg0 >end__bcin_160
jmp >var_result_bcin_161_end
:var_result_bcin_161
:var_result_bcin_161_end
jmp >var__bcin_161_end
:var__bcin_161
&A
&L
&L
0
:var__bcin_161_end
wmem >var__bcin_161 &C
set reg0 >var__bcin_161
set reg1 1
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_160
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_RET
eq reg0 reg0 reg1
jf reg0 >end__bcin_164
jmp >var_result_bcin_165_end
:var_result_bcin_165
:var_result_bcin_165_end
jmp >var__bcin_165_end
:var__bcin_165
&E
&T
0
:var__bcin_165_end
wmem >var__bcin_165 &R
set reg0 >var__bcin_165
set reg1 0
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_164
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_OUT
eq reg0 reg0 reg1
jf reg0 >end__bcin_168
jmp >var_result_bcin_169_end
:var_result_bcin_169
:var_result_bcin_169_end
jmp >var__bcin_169_end
:var__bcin_169
&U
&T
0
:var__bcin_169_end
wmem >var__bcin_169 &O
set reg0 >var__bcin_169
set reg1 1
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_168
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_IN
eq reg0 reg0 reg1
jf reg0 >end__bcin_172
jmp >var_result_bcin_173_end
:var_result_bcin_173
:var_result_bcin_173_end
jmp >var__bcin_173_end
:var__bcin_173
&N
0
:var__bcin_173_end
wmem >var__bcin_173 &I
set reg0 >var__bcin_173
set reg1 1
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_172
rmem reg0 >var_op_bcin_87
rmem reg1 >fld_opcodes_bcin_30_NOOP
eq reg0 reg0 reg1
jf reg0 >end__bcin_176
jmp >var_result_bcin_177_end
:var_result_bcin_177
:var_result_bcin_177_end
jmp >var__bcin_177_end
:var__bcin_177
&O
&O
&P
0
:var__bcin_177_end
wmem >var__bcin_177 &N
set reg0 >var__bcin_177
set reg1 0
rmem reg2 >var_p_counter_bcin_85
call >take
wmem >var_result_bcin_89 reg0
rmem reg0 >var_result_bcin_89
add reg0 reg0 1
rmem reg0 reg0
wmem >var_p_counter_bcin_85 reg0
:end__bcin_176
rmem reg0 >var_p_counter_bcin_85
add reg0 reg0 1
wmem >var_p_counter_bcin_85 reg0
jmp >for__bcin_86_begin
:for__bcin_86_end
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

