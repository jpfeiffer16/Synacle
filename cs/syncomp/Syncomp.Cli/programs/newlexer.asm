jmp >str_len_end
:str_len
jmp >var_str_ptr_stdlib_1_end
:var_str_ptr_stdlib_1
:var_str_ptr_stdlib_1_end
wmem >var_str_ptr_stdlib_1 reg0
jmp >var_length_stdlib_2_end
:var_length_stdlib_2
:var_length_stdlib_2_end
set reg0 0
wmem >var_length_stdlib_2 reg0
:while__stdlib_3_begin
rmem reg0 >var_str_ptr_stdlib_1
rmem reg0 reg0
jf reg0 >while__stdlib_3_end
rmem reg0 >var_str_ptr_stdlib_1
add reg0 reg0 1
wmem >var_str_ptr_stdlib_1 reg0
rmem reg0 >var_length_stdlib_2
add reg0 reg0 1
wmem >var_length_stdlib_2 reg0
jmp >while__stdlib_3_begin
:while__stdlib_3_end
rmem reg0 >var_length_stdlib_2
ret
ret
:str_len_end
set reg0 >str_len
jmp >print_end
:print
jmp >var_str_ptr_stdlib_10_end
:var_str_ptr_stdlib_10
:var_str_ptr_stdlib_10_end
wmem >var_str_ptr_stdlib_10 reg0
:while__stdlib_11_begin
rmem reg0 >var_str_ptr_stdlib_10
rmem reg0 reg0
jf reg0 >while__stdlib_11_end
rmem reg0 >var_str_ptr_stdlib_10
rmem reg0 reg0
out reg0
rmem reg0 >var_str_ptr_stdlib_10
add reg0 reg0 1
wmem >var_str_ptr_stdlib_10 reg0
jmp >while__stdlib_11_begin
:while__stdlib_11_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_str_ptr_stdlib_17_end
:var_str_ptr_stdlib_17
:var_str_ptr_stdlib_17_end
wmem >var_str_ptr_stdlib_17 reg0
rmem reg0 >var_str_ptr_stdlib_17
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >str_equal_end
:str_equal
jmp >var_str_a_stdlib_22_end
:var_str_a_stdlib_22
:var_str_a_stdlib_22_end
jmp >var_str_b_stdlib_22_end
:var_str_b_stdlib_22
:var_str_b_stdlib_22_end
wmem >var_str_a_stdlib_22 reg0
wmem >var_str_b_stdlib_22 reg1
jmp >var_a_len_stdlib_23_end
:var_a_len_stdlib_23
:var_a_len_stdlib_23_end
rmem reg0 >var_str_a_stdlib_22
call >str_len
wmem >var_a_len_stdlib_23 reg0
jmp >var_b_len_stdlib_24_end
:var_b_len_stdlib_24
:var_b_len_stdlib_24_end
rmem reg0 >var_str_b_stdlib_22
call >str_len
wmem >var_b_len_stdlib_24 reg0
rmem reg0 >var_a_len_stdlib_23
rmem reg1 >var_b_len_stdlib_24
eq reg0 reg0 reg1
call >not
jf reg0 >end__stdlib_25
set reg0 0
ret
:end__stdlib_25
jmp >var_i_stdlib_28_end
:var_i_stdlib_28
:var_i_stdlib_28_end
set reg0 0
wmem >var_i_stdlib_28 reg0
:for__stdlib_28_begin
rmem reg0 >var_i_stdlib_28
rmem reg1 >var_a_len_stdlib_23
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for__stdlib_28_end
jmp >var_a_val_stdlib_29_end
:var_a_val_stdlib_29
:var_a_val_stdlib_29_end
rmem reg0 >var_str_a_stdlib_22
rmem reg1 >var_i_stdlib_28
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_a_val_stdlib_29 reg0
jmp >var_b_val_stdlib_30_end
:var_b_val_stdlib_30
:var_b_val_stdlib_30_end
rmem reg0 >var_str_b_stdlib_22
rmem reg1 >var_i_stdlib_28
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_b_val_stdlib_30 reg0
rmem reg0 >var_a_val_stdlib_29
rmem reg1 >var_b_val_stdlib_30
eq reg0 reg0 reg1
call >not
jf reg0 >end__stdlib_31
set reg0 0
ret
:end__stdlib_31
rmem reg0 >var_i_stdlib_28
add reg0 reg0 1
wmem >var_i_stdlib_28 reg0
jmp >for__stdlib_28_begin
:for__stdlib_28_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_data_index_stdlib_39_end
:var_data_index_stdlib_39
:var_data_index_stdlib_39_end
set reg0 16382
wmem >var_data_index_stdlib_39 reg0
:while__stdlib_40_begin
rmem reg0 >var_data_index_stdlib_39
rmem reg0 reg0
call >not
jf reg0 >while__stdlib_40_end
rmem reg0 >var_data_index_stdlib_39
set reg1 1
call >subtract
wmem >var_data_index_stdlib_39 reg0
jmp >while__stdlib_40_begin
:while__stdlib_40_end
rmem reg0 >var_data_index_stdlib_39
set reg1 2
add reg0 reg0 reg1
wmem >var_data_index_stdlib_39 reg0
rmem reg0 >var_data_index_stdlib_39
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_length_stdlib_47_end
:var_length_stdlib_47
:var_length_stdlib_47_end
wmem >var_length_stdlib_47 reg0
jmp >var_ptr_stdlib_48_end
:var_ptr_stdlib_48
:var_ptr_stdlib_48_end
call >alloc
wmem >var_ptr_stdlib_48 reg0
jmp >var_dest_ptr_stdlib_49_end
:var_dest_ptr_stdlib_49
:var_dest_ptr_stdlib_49_end
rmem reg0 >var_ptr_stdlib_48
rmem reg1 >var_length_stdlib_47
add reg0 reg0 reg1
wmem >var_dest_ptr_stdlib_49 reg0
rmem reg0 >var_dest_ptr_stdlib_49
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_ptr_stdlib_48
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_s_ptr_stdlib_54_end
:var_s_ptr_stdlib_54
:var_s_ptr_stdlib_54_end
jmp >var_d_ptr_stdlib_54_end
:var_d_ptr_stdlib_54
:var_d_ptr_stdlib_54_end
jmp >var_len_stdlib_54_end
:var_len_stdlib_54
:var_len_stdlib_54_end
wmem >var_s_ptr_stdlib_54 reg0
wmem >var_d_ptr_stdlib_54 reg1
wmem >var_len_stdlib_54 reg2
jmp >var_current_byte_stdlib_55_end
:var_current_byte_stdlib_55
:var_current_byte_stdlib_55_end
set reg0 0
wmem >var_current_byte_stdlib_55 reg0
:while__stdlib_56_begin
rmem reg0 >var_current_byte_stdlib_55
rmem reg1 >var_len_stdlib_54
gt reg0 reg0 reg1
call >not
jf reg0 >while__stdlib_56_end
jmp >var_byte_to_write_ptr_stdlib_57_end
:var_byte_to_write_ptr_stdlib_57
:var_byte_to_write_ptr_stdlib_57_end
rmem reg0 >var_s_ptr_stdlib_54
rmem reg1 >var_current_byte_stdlib_55
add reg0 reg0 reg1
wmem >var_byte_to_write_ptr_stdlib_57 reg0
jmp >var_dest_ptr_stdlib_58_end
:var_dest_ptr_stdlib_58
:var_dest_ptr_stdlib_58_end
rmem reg0 >var_d_ptr_stdlib_54
rmem reg1 >var_current_byte_stdlib_55
add reg0 reg0 reg1
wmem >var_dest_ptr_stdlib_58 reg0
rmem reg0 >var_dest_ptr_stdlib_58
rmem reg1 >var_byte_to_write_ptr_stdlib_57
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_current_byte_stdlib_55
add reg0 reg0 1
wmem >var_current_byte_stdlib_55 reg0
jmp >while__stdlib_56_begin
:while__stdlib_56_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_cat_end
:str_cat
jmp >var_str_a_stdlib_64_end
:var_str_a_stdlib_64
:var_str_a_stdlib_64_end
jmp >var_str_b_stdlib_64_end
:var_str_b_stdlib_64
:var_str_b_stdlib_64_end
wmem >var_str_a_stdlib_64 reg0
wmem >var_str_b_stdlib_64 reg1
jmp >var_a_len_stdlib_65_end
:var_a_len_stdlib_65
:var_a_len_stdlib_65_end
rmem reg0 >var_str_a_stdlib_64
call >str_len
wmem >var_a_len_stdlib_65 reg0
jmp >var_b_len_stdlib_66_end
:var_b_len_stdlib_66
:var_b_len_stdlib_66_end
rmem reg0 >var_str_b_stdlib_64
call >str_len
wmem >var_b_len_stdlib_66 reg0
jmp >var_alloc_ptr_stdlib_67_end
:var_alloc_ptr_stdlib_67
:var_alloc_ptr_stdlib_67_end
call >alloc
wmem >var_alloc_ptr_stdlib_67 reg0
rmem reg0 >var_str_a_stdlib_64
rmem reg1 >var_alloc_ptr_stdlib_67
rmem reg2 >var_a_len_stdlib_65
call >mem_cp
jmp >var_end_address_stdlib_69_end
:var_end_address_stdlib_69
:var_end_address_stdlib_69_end
rmem reg0 >var_alloc_ptr_stdlib_67
rmem reg1 >var_a_len_stdlib_65
add reg0 reg0 reg1
wmem >var_end_address_stdlib_69 reg0
rmem reg0 >var_b_len_stdlib_66
add reg0 reg0 1
wmem >var_b_len_stdlib_66 reg0
rmem reg0 >var_str_b_stdlib_64
rmem reg1 >var_end_address_stdlib_69
rmem reg2 >var_b_len_stdlib_66
call >mem_cp
rmem reg0 >var_alloc_ptr_stdlib_67
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_str_ptr_stdlib_75_end
:var_str_ptr_stdlib_75
:var_str_ptr_stdlib_75_end
wmem >var_str_ptr_stdlib_75 reg0
jmp >var_alloc_ptr_stdlib_76_end
:var_alloc_ptr_stdlib_76
:var_alloc_ptr_stdlib_76_end
call >alloc
wmem >var_alloc_ptr_stdlib_76 reg0
jmp >var_len_stdlib_77_end
:var_len_stdlib_77
:var_len_stdlib_77_end
rmem reg0 >var_str_ptr_stdlib_75
call >str_len
wmem >var_len_stdlib_77 reg0
jmp >var_index_stdlib_78_end
:var_index_stdlib_78
:var_index_stdlib_78_end
set reg0 0
wmem >var_index_stdlib_78 reg0
:while__stdlib_79_begin
rmem reg0 >var_index_stdlib_78
rmem reg1 >var_len_stdlib_77
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_79_end
jmp >var_source_index_stdlib_80_end
:var_source_index_stdlib_80
:var_source_index_stdlib_80_end
rmem reg0 >var_str_ptr_stdlib_75
rmem reg1 >var_index_stdlib_78
add reg0 reg0 reg1
wmem >var_source_index_stdlib_80 reg0
rmem reg0 >var_source_index_stdlib_80
rmem reg0 reg0
rmem reg0 >var_source_index_stdlib_80
rmem reg0 reg0
push reg0
rmem reg0 >var_index_stdlib_78
add reg0 reg0 1
wmem >var_index_stdlib_78 reg0
jmp >while__stdlib_79_begin
:while__stdlib_79_end
jmp >var_current_byte_stdlib_85_end
:var_current_byte_stdlib_85
:var_current_byte_stdlib_85_end
pop reg0
wmem >var_current_byte_stdlib_85 reg0
set reg0 0
wmem >var_index_stdlib_78 reg0
:while__stdlib_87_begin
rmem reg0 >var_index_stdlib_78
rmem reg1 >var_len_stdlib_77
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_87_end
jmp >var_dest_index_stdlib_88_end
:var_dest_index_stdlib_88
:var_dest_index_stdlib_88_end
rmem reg0 >var_alloc_ptr_stdlib_76
rmem reg1 >var_index_stdlib_78
add reg0 reg0 reg1
wmem >var_dest_index_stdlib_88 reg0
rmem reg0 >var_dest_index_stdlib_88
rmem reg1 >var_current_byte_stdlib_85
wmem reg0 reg1
rmem reg0 >var_index_stdlib_78
add reg0 reg0 1
wmem >var_index_stdlib_78 reg0
pop reg0
wmem >var_current_byte_stdlib_85 reg0
jmp >while__stdlib_87_begin
:while__stdlib_87_end
rmem reg0 >var_current_byte_stdlib_85
rmem reg0 >var_current_byte_stdlib_85
push reg0
rmem reg0 >var_alloc_ptr_stdlib_76
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_data_index_stdlib_100_end
:var_data_index_stdlib_100
:var_data_index_stdlib_100_end
set reg0 16384
wmem >var_data_index_stdlib_100 reg0
jmp >var_in_char_stdlib_101_end
:var_in_char_stdlib_101
:var_in_char_stdlib_101_end
in reg0
wmem >var_in_char_stdlib_101 reg0
jmp >var_is_newline_stdlib_102_end
:var_is_newline_stdlib_102
:var_is_newline_stdlib_102_end
rmem reg0 >var_in_char_stdlib_101
set reg1 10
eq reg0 reg0 reg1
wmem >var_is_newline_stdlib_102 reg0
:while__stdlib_103_begin
rmem reg0 >var_is_newline_stdlib_102
rmem reg1 >var_in_char_stdlib_101
call >and
call >not
jf reg0 >while__stdlib_103_end
rmem reg0 >var_data_index_stdlib_100
rmem reg1 >var_in_char_stdlib_101
wmem reg0 reg1
rmem reg0 >var_data_index_stdlib_100
add reg0 reg0 1
wmem >var_data_index_stdlib_100 reg0
in reg0
wmem >var_in_char_stdlib_101 reg0
rmem reg0 >var_in_char_stdlib_101
set reg1 10
eq reg0 reg0 reg1
wmem >var_is_newline_stdlib_102 reg0
jmp >while__stdlib_103_begin
:while__stdlib_103_end
rmem reg0 >var_data_index_stdlib_100
set reg1 0
wmem reg0 reg1
jmp >var_alloc_ptr_stdlib_110_end
:var_alloc_ptr_stdlib_110
:var_alloc_ptr_stdlib_110_end
call >alloc
wmem >var_alloc_ptr_stdlib_110 reg0
jmp >var_length_stdlib_111_end
:var_length_stdlib_111
:var_length_stdlib_111_end
set reg0 16384
call >str_len
wmem >var_length_stdlib_111 reg0
set reg0 16384
rmem reg1 >var_alloc_ptr_stdlib_110
rmem reg2 >var_length_stdlib_111
call >mem_cp
rmem reg0 >var_alloc_ptr_stdlib_110
ret
ret
:input_end
set reg0 >input
jmp >print_number_end
:print_number
jmp >var_num_stdlib_116_end
:var_num_stdlib_116
:var_num_stdlib_116_end
wmem >var_num_stdlib_116 reg0
rmem reg0 >var_num_stdlib_116
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end__stdlib_117
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end__stdlib_117
jmp >var_charNum_stdlib_122_end
:var_charNum_stdlib_122
:var_charNum_stdlib_122_end
jmp >var_length_stdlib_123_end
:var_length_stdlib_123
:var_length_stdlib_123_end
set reg0 0
wmem >var_length_stdlib_123 reg0
:while__stdlib_124_begin
rmem reg0 >var_num_stdlib_116
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while__stdlib_124_end
rmem reg0 >var_num_stdlib_116
set reg1 10
mod reg0 reg0 reg1
wmem >var_charNum_stdlib_122 reg0
rmem reg0 >var_charNum_stdlib_122
rmem reg0 >var_charNum_stdlib_122
push reg0
rmem reg0 >var_length_stdlib_123
add reg0 reg0 1
wmem >var_length_stdlib_123 reg0
rmem reg0 >var_num_stdlib_116
set reg1 10
call >divide
wmem >var_num_stdlib_116 reg0
jmp >while__stdlib_124_begin
:while__stdlib_124_end
rmem reg0 >var_num_stdlib_116
set reg1 10
mod reg0 reg0 reg1
wmem >var_charNum_stdlib_122 reg0
rmem reg0 >var_charNum_stdlib_122
rmem reg0 >var_charNum_stdlib_122
push reg0
rmem reg0 >var_length_stdlib_123
add reg0 reg0 1
wmem >var_length_stdlib_123 reg0
jmp >var_stackIndex_stdlib_135_end
:var_stackIndex_stdlib_135
:var_stackIndex_stdlib_135_end
set reg0 0
wmem >var_stackIndex_stdlib_135 reg0
:while__stdlib_137_begin
rmem reg0 >var_stackIndex_stdlib_135
rmem reg1 >var_length_stdlib_123
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_137_end
rmem reg0 >var_stackIndex_stdlib_135
set reg1 1
add reg0 reg0 reg1
wmem >var_stackIndex_stdlib_135 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while__stdlib_137_begin
:while__stdlib_137_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_i_stdlib_144_end
:var_i_stdlib_144
:var_i_stdlib_144_end
set reg0 0
wmem >var_i_stdlib_144 reg0
:while__stdlib_146_begin
rmem reg0 >var_i_stdlib_144
rmem reg0 reg0
jf reg0 >while__stdlib_146_end
rmem reg0 >var_i_stdlib_144
add reg0 reg0 1
wmem >var_i_stdlib_144 reg0
rmem reg0 >var_i_stdlib_144
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while__stdlib_146_begin
:while__stdlib_146_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_str_ptr_stdlib_153_end
:var_str_ptr_stdlib_153
:var_str_ptr_stdlib_153_end
wmem >var_str_ptr_stdlib_153 reg0
jmp >var_flipped_stdlib_154_end
:var_flipped_stdlib_154
:var_flipped_stdlib_154_end
rmem reg0 >var_str_ptr_stdlib_153
call >flip_str
wmem >var_flipped_stdlib_154 reg0
jmp >var_len_stdlib_155_end
:var_len_stdlib_155
:var_len_stdlib_155_end
rmem reg0 >var_flipped_stdlib_154
call >str_len
wmem >var_len_stdlib_155 reg0
rmem reg0 >var_len_stdlib_155
set reg1 1
call >subtract
wmem >var_len_stdlib_155 reg0
jmp >var_index_stdlib_158_end
:var_index_stdlib_158
:var_index_stdlib_158_end
set reg0 0
wmem >var_index_stdlib_158 reg0
jmp >var_num_stdlib_159_end
:var_num_stdlib_159
:var_num_stdlib_159_end
set reg0 0
wmem >var_num_stdlib_159 reg0
:while__stdlib_160_begin
rmem reg0 >var_index_stdlib_158
rmem reg1 >var_len_stdlib_155
gt reg0 reg0 reg1
call >not
jf reg0 >while__stdlib_160_end
jmp >var_char_stdlib_161_end
:var_char_stdlib_161
:var_char_stdlib_161_end
rmem reg0 >var_flipped_stdlib_154
rmem reg1 >var_index_stdlib_158
add reg0 reg0 reg1
wmem >var_char_stdlib_161 reg0
rmem reg0 >var_char_stdlib_161
rmem reg0 reg0
wmem >var_char_stdlib_161 reg0
jmp >var_is_greater_than_stdlib_163_end
:var_is_greater_than_stdlib_163
:var_is_greater_than_stdlib_163_end
rmem reg0 >var_char_stdlib_161
set reg1 47
gt reg0 reg0 reg1
wmem >var_is_greater_than_stdlib_163 reg0
jmp >var_is_less_than_stdlib_164_end
:var_is_less_than_stdlib_164
:var_is_less_than_stdlib_164_end
rmem reg0 >var_char_stdlib_161
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_is_less_than_stdlib_164 reg0
rmem reg0 >var_is_greater_than_stdlib_163
rmem reg1 >var_is_less_than_stdlib_164
call >and
jf reg0 >end__stdlib_168
jmp >var_this_digit_stdlib_169_end
:var_this_digit_stdlib_169
:var_this_digit_stdlib_169_end
rmem reg0 >var_char_stdlib_161
set reg1 48
call >subtract
wmem >var_this_digit_stdlib_169 reg0
rmem reg0 >var_this_digit_stdlib_169
call >print_number
set reg0 10
out reg0
jmp >var_digit_index_stdlib_174_end
:var_digit_index_stdlib_174
:var_digit_index_stdlib_174_end
set reg0 0
wmem >var_digit_index_stdlib_174 reg0
jmp >var_this_index_stdlib_175_end
:var_this_index_stdlib_175
:var_this_index_stdlib_175_end
rmem reg0 >var_index_stdlib_158
set reg1 1
call >subtract
wmem >var_this_index_stdlib_175 reg0
:while__stdlib_176_begin
rmem reg0 >var_digit_index_stdlib_174
rmem reg1 >var_this_index_stdlib_175
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_176_end
rmem reg0 >var_this_digit_stdlib_169
set reg1 10
mult reg0 reg0 reg1
wmem >var_this_digit_stdlib_169 reg0
rmem reg0 >var_digit_index_stdlib_174
add reg0 reg0 1
wmem >var_digit_index_stdlib_174 reg0
jmp >while__stdlib_176_begin
:while__stdlib_176_end
rmem reg0 >var_num_stdlib_159
rmem reg1 >var_this_digit_stdlib_169
add reg0 reg0 reg1
wmem >var_num_stdlib_159 reg0
:end__stdlib_168
rmem reg0 >var_index_stdlib_158
add reg0 reg0 1
wmem >var_index_stdlib_158 reg0
jmp >while__stdlib_160_begin
:while__stdlib_160_end
rmem reg0 >var_num_stdlib_159
call >print_number
rmem reg0 >var_num_stdlib_159
ret
ret
:int_end
set reg0 >int
jmp >main_end
:main
jmp >var_a_newlexer_5_end
:var_a_newlexer_5
:var_a_newlexer_5_end
call >input
wmem >var_a_newlexer_5 reg0
jmp >var_b_newlexer_6_end
:var_b_newlexer_6
:var_b_newlexer_6_end
call >input
wmem >var_b_newlexer_6 reg0
rmem reg0 >var_a_newlexer_5
rmem reg1 >var_b_newlexer_6
call >str_equal
jf reg0 >end__newlexer_7
ret
:end__newlexer_7
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

