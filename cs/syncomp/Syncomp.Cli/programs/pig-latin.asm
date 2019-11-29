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
jmp >str_equal_end
:str_equal
jmp >var_str_a_stdlib_10_end
:var_str_a_stdlib_10
:var_str_a_stdlib_10_end
jmp >var_str_b_stdlib_10_end
:var_str_b_stdlib_10
:var_str_b_stdlib_10_end
wmem >var_str_a_stdlib_10 reg0
wmem >var_str_b_stdlib_10 reg1
jmp >var_a_len_stdlib_11_end
:var_a_len_stdlib_11
:var_a_len_stdlib_11_end
rmem reg0 >var_str_a_stdlib_10
call >str_len
wmem >var_a_len_stdlib_11 reg0
jmp >var_b_len_stdlib_12_end
:var_b_len_stdlib_12
:var_b_len_stdlib_12_end
rmem reg0 >var_str_b_stdlib_10
call >str_len
wmem >var_b_len_stdlib_12 reg0
rmem reg0 >var_a_len_stdlib_11
rmem reg1 >var_b_len_stdlib_12
eq reg0 reg0 reg1
call >not
jf reg0 >end__stdlib_13
set reg0 0
ret
:end__stdlib_13
jmp >var_i_stdlib_16_end
:var_i_stdlib_16
:var_i_stdlib_16_end
set reg0 0
wmem >var_i_stdlib_16 reg0
:for__stdlib_16_begin
rmem reg0 >var_i_stdlib_16
rmem reg1 >var_a_len_stdlib_11
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for__stdlib_16_end
jmp >var_a_val_stdlib_17_end
:var_a_val_stdlib_17
:var_a_val_stdlib_17_end
rmem reg0 >var_str_a_stdlib_10
rmem reg1 >var_i_stdlib_16
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_a_val_stdlib_17 reg0
jmp >var_b_val_stdlib_18_end
:var_b_val_stdlib_18
:var_b_val_stdlib_18_end
rmem reg0 >var_str_b_stdlib_10
rmem reg1 >var_i_stdlib_16
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_b_val_stdlib_18 reg0
rmem reg0 >var_a_val_stdlib_17
rmem reg1 >var_b_val_stdlib_18
eq reg0 reg0 reg1
call >not
jf reg0 >end__stdlib_19
set reg0 0
ret
:end__stdlib_19
rmem reg0 >var_i_stdlib_16
add reg0 reg0 1
wmem >var_i_stdlib_16 reg0
jmp >for__stdlib_16_begin
:for__stdlib_16_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_data_index_stdlib_27_end
:var_data_index_stdlib_27
:var_data_index_stdlib_27_end
set reg0 16382
wmem >var_data_index_stdlib_27 reg0
:while__stdlib_28_begin
rmem reg0 >var_data_index_stdlib_27
rmem reg0 reg0
call >not
jf reg0 >while__stdlib_28_end
rmem reg0 >var_data_index_stdlib_27
set reg1 1
call >subtract
wmem >var_data_index_stdlib_27 reg0
jmp >while__stdlib_28_begin
:while__stdlib_28_end
rmem reg0 >var_data_index_stdlib_27
set reg1 2
add reg0 reg0 reg1
wmem >var_data_index_stdlib_27 reg0
rmem reg0 >var_data_index_stdlib_27
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_length_stdlib_35_end
:var_length_stdlib_35
:var_length_stdlib_35_end
wmem >var_length_stdlib_35 reg0
jmp >var_ptr_stdlib_36_end
:var_ptr_stdlib_36
:var_ptr_stdlib_36_end
call >alloc
wmem >var_ptr_stdlib_36 reg0
jmp >var_dest_ptr_stdlib_37_end
:var_dest_ptr_stdlib_37
:var_dest_ptr_stdlib_37_end
rmem reg0 >var_ptr_stdlib_36
rmem reg1 >var_length_stdlib_35
add reg0 reg0 reg1
wmem >var_dest_ptr_stdlib_37 reg0
rmem reg0 >var_dest_ptr_stdlib_37
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_ptr_stdlib_36
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_s_ptr_stdlib_42_end
:var_s_ptr_stdlib_42
:var_s_ptr_stdlib_42_end
jmp >var_d_ptr_stdlib_42_end
:var_d_ptr_stdlib_42
:var_d_ptr_stdlib_42_end
jmp >var_len_stdlib_42_end
:var_len_stdlib_42
:var_len_stdlib_42_end
wmem >var_s_ptr_stdlib_42 reg0
wmem >var_d_ptr_stdlib_42 reg1
wmem >var_len_stdlib_42 reg2
jmp >var_current_byte_stdlib_43_end
:var_current_byte_stdlib_43
:var_current_byte_stdlib_43_end
set reg0 0
wmem >var_current_byte_stdlib_43 reg0
:while__stdlib_44_begin
rmem reg0 >var_current_byte_stdlib_43
rmem reg1 >var_len_stdlib_42
gt reg0 reg0 reg1
call >not
jf reg0 >while__stdlib_44_end
jmp >var_byte_to_write_ptr_stdlib_45_end
:var_byte_to_write_ptr_stdlib_45
:var_byte_to_write_ptr_stdlib_45_end
rmem reg0 >var_s_ptr_stdlib_42
rmem reg1 >var_current_byte_stdlib_43
add reg0 reg0 reg1
wmem >var_byte_to_write_ptr_stdlib_45 reg0
jmp >var_dest_ptr_stdlib_46_end
:var_dest_ptr_stdlib_46
:var_dest_ptr_stdlib_46_end
rmem reg0 >var_d_ptr_stdlib_42
rmem reg1 >var_current_byte_stdlib_43
add reg0 reg0 reg1
wmem >var_dest_ptr_stdlib_46 reg0
rmem reg0 >var_dest_ptr_stdlib_46
rmem reg1 >var_byte_to_write_ptr_stdlib_45
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_current_byte_stdlib_43
add reg0 reg0 1
wmem >var_current_byte_stdlib_43 reg0
jmp >while__stdlib_44_begin
:while__stdlib_44_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_cat_end
:str_cat
jmp >var_str_a_stdlib_52_end
:var_str_a_stdlib_52
:var_str_a_stdlib_52_end
jmp >var_str_b_stdlib_52_end
:var_str_b_stdlib_52
:var_str_b_stdlib_52_end
wmem >var_str_a_stdlib_52 reg0
wmem >var_str_b_stdlib_52 reg1
jmp >var_a_len_stdlib_53_end
:var_a_len_stdlib_53
:var_a_len_stdlib_53_end
rmem reg0 >var_str_a_stdlib_52
call >str_len
wmem >var_a_len_stdlib_53 reg0
jmp >var_b_len_stdlib_54_end
:var_b_len_stdlib_54
:var_b_len_stdlib_54_end
rmem reg0 >var_str_b_stdlib_52
call >str_len
wmem >var_b_len_stdlib_54 reg0
jmp >var_alloc_ptr_stdlib_55_end
:var_alloc_ptr_stdlib_55
:var_alloc_ptr_stdlib_55_end
call >alloc
wmem >var_alloc_ptr_stdlib_55 reg0
rmem reg2 >var_a_len_stdlib_53
call >mem_cp
jmp >var_end_address_stdlib_57_end
:var_end_address_stdlib_57
:var_end_address_stdlib_57_end
rmem reg0 >var_alloc_ptr_stdlib_55
rmem reg1 >var_a_len_stdlib_53
add reg0 reg0 reg1
wmem >var_end_address_stdlib_57 reg0
rmem reg0 >var_b_len_stdlib_54
add reg0 reg0 1
wmem >var_b_len_stdlib_54 reg0
rmem reg2 >var_b_len_stdlib_54
call >mem_cp
rmem reg0 >var_alloc_ptr_stdlib_55
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_str_ptr_stdlib_63_end
:var_str_ptr_stdlib_63
:var_str_ptr_stdlib_63_end
wmem >var_str_ptr_stdlib_63 reg0
jmp >var_alloc_ptr_stdlib_64_end
:var_alloc_ptr_stdlib_64
:var_alloc_ptr_stdlib_64_end
call >alloc
wmem >var_alloc_ptr_stdlib_64 reg0
jmp >var_len_stdlib_65_end
:var_len_stdlib_65
:var_len_stdlib_65_end
rmem reg0 >var_str_ptr_stdlib_63
call >str_len
wmem >var_len_stdlib_65 reg0
jmp >var_index_stdlib_66_end
:var_index_stdlib_66
:var_index_stdlib_66_end
set reg0 0
wmem >var_index_stdlib_66 reg0
:while__stdlib_67_begin
rmem reg0 >var_index_stdlib_66
rmem reg1 >var_len_stdlib_65
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_67_end
jmp >var_source_index_stdlib_68_end
:var_source_index_stdlib_68
:var_source_index_stdlib_68_end
rmem reg0 >var_str_ptr_stdlib_63
rmem reg1 >var_index_stdlib_66
add reg0 reg0 reg1
wmem >var_source_index_stdlib_68 reg0
rmem reg0 >var_source_index_stdlib_68
rmem reg0 reg0
rmem reg0 >var_source_index_stdlib_68
rmem reg0 reg0
push reg0
rmem reg0 >var_index_stdlib_66
add reg0 reg0 1
wmem >var_index_stdlib_66 reg0
jmp >while__stdlib_67_begin
:while__stdlib_67_end
jmp >var_current_byte_stdlib_73_end
:var_current_byte_stdlib_73
:var_current_byte_stdlib_73_end
pop reg0
wmem >var_current_byte_stdlib_73 reg0
set reg0 0
wmem >var_index_stdlib_66 reg0
:while__stdlib_75_begin
rmem reg0 >var_index_stdlib_66
rmem reg1 >var_len_stdlib_65
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_75_end
jmp >var_dest_index_stdlib_76_end
:var_dest_index_stdlib_76
:var_dest_index_stdlib_76_end
rmem reg0 >var_alloc_ptr_stdlib_64
rmem reg1 >var_index_stdlib_66
add reg0 reg0 reg1
wmem >var_dest_index_stdlib_76 reg0
rmem reg0 >var_dest_index_stdlib_76
rmem reg1 >var_current_byte_stdlib_73
wmem reg0 reg1
rmem reg0 >var_index_stdlib_66
add reg0 reg0 1
wmem >var_index_stdlib_66 reg0
pop reg0
wmem >var_current_byte_stdlib_73 reg0
jmp >while__stdlib_75_begin
:while__stdlib_75_end
rmem reg0 >var_current_byte_stdlib_73
rmem reg0 >var_current_byte_stdlib_73
push reg0
rmem reg0 >var_alloc_ptr_stdlib_64
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_data_index_stdlib_88_end
:var_data_index_stdlib_88
:var_data_index_stdlib_88_end
set reg0 16384
wmem >var_data_index_stdlib_88 reg0
jmp >var_in_char_stdlib_89_end
:var_in_char_stdlib_89
:var_in_char_stdlib_89_end
in reg0
wmem >var_in_char_stdlib_89 reg0
jmp >var_is_newline_stdlib_90_end
:var_is_newline_stdlib_90
:var_is_newline_stdlib_90_end
rmem reg0 >var_in_char_stdlib_89
set reg1 10
eq reg0 reg0 reg1
wmem >var_is_newline_stdlib_90 reg0
:while__stdlib_91_begin
rmem reg0 >var_is_newline_stdlib_90
rmem reg1 >var_in_char_stdlib_89
call >and
call >not
jf reg0 >while__stdlib_91_end
rmem reg0 >var_data_index_stdlib_88
rmem reg1 >var_in_char_stdlib_89
wmem reg0 reg1
rmem reg0 >var_data_index_stdlib_88
add reg0 reg0 1
wmem >var_data_index_stdlib_88 reg0
in reg0
wmem >var_in_char_stdlib_89 reg0
rmem reg0 >var_in_char_stdlib_89
set reg1 10
eq reg0 reg0 reg1
wmem >var_is_newline_stdlib_90 reg0
jmp >while__stdlib_91_begin
:while__stdlib_91_end
rmem reg0 >var_data_index_stdlib_88
set reg1 0
wmem reg0 reg1
jmp >var_alloc_ptr_stdlib_98_end
:var_alloc_ptr_stdlib_98
:var_alloc_ptr_stdlib_98_end
call >alloc
wmem >var_alloc_ptr_stdlib_98 reg0
jmp >var_length_stdlib_99_end
:var_length_stdlib_99
:var_length_stdlib_99_end
set reg0 16384
call >str_len
wmem >var_length_stdlib_99 reg0
set reg0 16384
rmem reg1 >var_alloc_ptr_stdlib_98
rmem reg2 >var_length_stdlib_99
call >mem_cp
rmem reg0 >var_alloc_ptr_stdlib_98
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_str_ptr_stdlib_104_end
:var_str_ptr_stdlib_104
:var_str_ptr_stdlib_104_end
wmem >var_str_ptr_stdlib_104 reg0
:while__stdlib_105_begin
rmem reg0 >var_str_ptr_stdlib_104
rmem reg0 reg0
jf reg0 >while__stdlib_105_end
rmem reg0 >var_str_ptr_stdlib_104
rmem reg0 reg0
out reg0
rmem reg0 >var_str_ptr_stdlib_104
add reg0 reg0 1
wmem >var_str_ptr_stdlib_104 reg0
jmp >while__stdlib_105_begin
:while__stdlib_105_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_str_ptr_stdlib_111_end
:var_str_ptr_stdlib_111
:var_str_ptr_stdlib_111_end
wmem >var_str_ptr_stdlib_111 reg0
rmem reg0 >var_str_ptr_stdlib_111
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
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
jmp >var__pig-latin_4_end
:var__pig-latin_4
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
:var__pig-latin_4_end
wmem >var__pig-latin_4 &E
set reg0 >var__pig-latin_4
call >print
jmp >var_name_pig-latin_5_end
:var_name_pig-latin_5
:var_name_pig-latin_5_end
call >input
wmem >var_name_pig-latin_5 reg0
rmem reg0 >var_name_pig-latin_5
jmp >var__pig-latin_6_end
:var__pig-latin_6
&x
&i
&t
0
:var__pig-latin_6_end
wmem >var__pig-latin_6 &e
set reg1 >var__pig-latin_6
call >str_equal
jf reg0 >end__pig-latin_6
ret
:end__pig-latin_6
jmp >var_first_letter_pig-latin_9_end
:var_first_letter_pig-latin_9
:var_first_letter_pig-latin_9_end
call >alloc
wmem >var_first_letter_pig-latin_9 reg0
rmem reg0 >var_first_letter_pig-latin_9
rmem reg1 >var_name_pig-latin_5
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_name_pig-latin_5
add reg0 reg0 1
wmem >var_name_pig-latin_5 reg0
rmem reg0 >var_name_pig-latin_5
rmem reg1 >var_first_letter_pig-latin_9
jmp >var__pig-latin_14_end
:var__pig-latin_14
&e
&s
&t
0
:var__pig-latin_14_end
wmem >var__pig-latin_14 &t
set reg2 >var__pig-latin_14
call >str_cat
jmp >var__pig-latin_15_end
:var__pig-latin_15
&y
0
:var__pig-latin_15_end
wmem >var__pig-latin_15 &a
set reg1 >var__pig-latin_15
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

