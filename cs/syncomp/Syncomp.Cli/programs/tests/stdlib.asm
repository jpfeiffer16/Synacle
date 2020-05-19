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
jf reg0 >end__stdlib_29
set reg0 0
ret
:end__stdlib_29
jmp >var_i_stdlib_32_end
:var_i_stdlib_32
:var_i_stdlib_32_end
set reg0 0
wmem >var_i_stdlib_32 reg0
:for__stdlib_32_begin
rmem reg0 >var_i_stdlib_32
rmem reg1 >var_a_len_stdlib_27
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for__stdlib_32_end
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
jf reg0 >end__stdlib_35
set reg0 0
ret
:end__stdlib_35
rmem reg0 >var_i_stdlib_32
add reg0 reg0 1
wmem >var_i_stdlib_32 reg0
jmp >for__stdlib_32_begin
:for__stdlib_32_end
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
:while__stdlib_44_begin
rmem reg0 >var_data_index_stdlib_43
rmem reg0 reg0
call >not
jf reg0 >while__stdlib_44_end
rmem reg0 >var_data_index_stdlib_43
set reg1 1
call >subtract
wmem >var_data_index_stdlib_43 reg0
jmp >while__stdlib_44_begin
:while__stdlib_44_end
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
:while__stdlib_60_begin
rmem reg0 >var_current_byte_stdlib_59
rmem reg1 >var_len_stdlib_58
gt reg0 reg0 reg1
call >not
jf reg0 >while__stdlib_60_end
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
jmp >while__stdlib_60_begin
:while__stdlib_60_end
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
:while__stdlib_83_begin
rmem reg0 >var_index_stdlib_82
rmem reg1 >var_len_stdlib_81
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_83_end
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
jmp >while__stdlib_83_begin
:while__stdlib_83_end
jmp >var_current_byte_stdlib_89_end
:var_current_byte_stdlib_89
:var_current_byte_stdlib_89_end
pop reg0
wmem >var_current_byte_stdlib_89 reg0
set reg0 0
wmem >var_index_stdlib_82 reg0
:while__stdlib_91_begin
rmem reg0 >var_index_stdlib_82
rmem reg1 >var_len_stdlib_81
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_91_end
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
jmp >while__stdlib_91_begin
:while__stdlib_91_end
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
:while__stdlib_107_begin
rmem reg0 >var_is_newline_stdlib_106
rmem reg1 >var_in_char_stdlib_105
call >and
call >not
jf reg0 >while__stdlib_107_end
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
jmp >while__stdlib_107_begin
:while__stdlib_107_end
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
:for__stdlib_124_begin
rmem reg0 >var_len_stdlib_121
set reg1 0
gt reg0 reg0 reg1
jf reg0 >for__stdlib_124_end
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
:for__stdlib_129_begin
rmem reg0 >var_tens_place_stdlib_126
set reg1 0
gt reg0 reg0 reg1
jf reg0 >for__stdlib_129_end
rmem reg0 >var_diget_stdlib_127
set reg1 10
mult reg0 reg0 reg1
wmem >var_diget_stdlib_127 reg0
rmem reg0 >var_tens_place_stdlib_126
set reg1 1
call >subtract
wmem >var_tens_place_stdlib_126 reg0
jmp >for__stdlib_129_begin
:for__stdlib_129_end
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
jmp >for__stdlib_124_begin
:for__stdlib_124_end
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
:while__stdlib_143_begin
rmem reg0 >var_num_stdlib_140
set reg1 9
gt reg0 reg0 reg1
jf reg0 >while__stdlib_143_end
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
jmp >while__stdlib_143_begin
:while__stdlib_143_end
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
:while__stdlib_157_begin
rmem reg0 >var_stack_index_stdlib_154
rmem reg1 >var_length_stdlib_142
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_157_end
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
jmp >while__stdlib_157_begin
:while__stdlib_157_end
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
:while__stdlib_174_begin
rmem reg0 >var_i_stdlib_172
rmem reg0 reg0
jf reg0 >while__stdlib_174_end
rmem reg0 >var_i_stdlib_172
add reg0 reg0 1
wmem >var_i_stdlib_172 reg0
rmem reg0 >var_i_stdlib_172
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while__stdlib_174_begin
:while__stdlib_174_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >tty_set_green_end
:tty_set_green
jmp >var_str_ptr_tty_colors_5_end
:var_str_ptr_tty_colors_5
:var_str_ptr_tty_colors_5_end
call >alloc
wmem >var_str_ptr_tty_colors_5 reg0
jmp >var_write_ptr_tty_colors_6_end
:var_write_ptr_tty_colors_6
:var_write_ptr_tty_colors_6_end
rmem reg0 >var_str_ptr_tty_colors_5
wmem >var_write_ptr_tty_colors_6 reg0
rmem reg0 >var_write_ptr_tty_colors_6
set reg1 27
wmem reg0 reg1
rmem reg0 >var_write_ptr_tty_colors_6
add reg0 reg0 1
wmem >var_write_ptr_tty_colors_6 reg0
rmem reg0 >var_write_ptr_tty_colors_6
jmp >var__tty_colors_9_end
:var__tty_colors_9
0
:var__tty_colors_9_end
wmem >var__tty_colors_9 &[
set reg1 >var__tty_colors_9
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_write_ptr_tty_colors_6
add reg0 reg0 1
wmem >var_write_ptr_tty_colors_6 reg0
rmem reg0 >var_write_ptr_tty_colors_6
jmp >var__tty_colors_11_end
:var__tty_colors_11
0
:var__tty_colors_11_end
wmem >var__tty_colors_11 &3
set reg1 >var__tty_colors_11
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_write_ptr_tty_colors_6
add reg0 reg0 1
wmem >var_write_ptr_tty_colors_6 reg0
rmem reg0 >var_write_ptr_tty_colors_6
jmp >var__tty_colors_13_end
:var__tty_colors_13
0
:var__tty_colors_13_end
wmem >var__tty_colors_13 &2
set reg1 >var__tty_colors_13
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_write_ptr_tty_colors_6
add reg0 reg0 1
wmem >var_write_ptr_tty_colors_6 reg0
rmem reg0 >var_write_ptr_tty_colors_6
jmp >var__tty_colors_15_end
:var__tty_colors_15
0
:var__tty_colors_15_end
wmem >var__tty_colors_15 &m
set reg1 >var__tty_colors_15
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_str_ptr_tty_colors_5
call >print
ret
:tty_set_green_end
set reg0 >tty_set_green
jmp >tty_set_red_end
:tty_set_red
jmp >var_str_ptr_tty_colors_21_end
:var_str_ptr_tty_colors_21
:var_str_ptr_tty_colors_21_end
call >alloc
wmem >var_str_ptr_tty_colors_21 reg0
jmp >var_write_ptr_tty_colors_22_end
:var_write_ptr_tty_colors_22
:var_write_ptr_tty_colors_22_end
rmem reg0 >var_str_ptr_tty_colors_21
wmem >var_write_ptr_tty_colors_22 reg0
rmem reg0 >var_write_ptr_tty_colors_22
set reg1 27
wmem reg0 reg1
rmem reg0 >var_write_ptr_tty_colors_22
add reg0 reg0 1
wmem >var_write_ptr_tty_colors_22 reg0
rmem reg0 >var_write_ptr_tty_colors_22
jmp >var__tty_colors_25_end
:var__tty_colors_25
0
:var__tty_colors_25_end
wmem >var__tty_colors_25 &[
set reg1 >var__tty_colors_25
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_write_ptr_tty_colors_22
add reg0 reg0 1
wmem >var_write_ptr_tty_colors_22 reg0
rmem reg0 >var_write_ptr_tty_colors_22
jmp >var__tty_colors_27_end
:var__tty_colors_27
0
:var__tty_colors_27_end
wmem >var__tty_colors_27 &3
set reg1 >var__tty_colors_27
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_write_ptr_tty_colors_22
add reg0 reg0 1
wmem >var_write_ptr_tty_colors_22 reg0
rmem reg0 >var_write_ptr_tty_colors_22
jmp >var__tty_colors_29_end
:var__tty_colors_29
0
:var__tty_colors_29_end
wmem >var__tty_colors_29 &1
set reg1 >var__tty_colors_29
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_write_ptr_tty_colors_22
add reg0 reg0 1
wmem >var_write_ptr_tty_colors_22 reg0
rmem reg0 >var_write_ptr_tty_colors_22
jmp >var__tty_colors_31_end
:var__tty_colors_31
0
:var__tty_colors_31_end
wmem >var__tty_colors_31 &m
set reg1 >var__tty_colors_31
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_str_ptr_tty_colors_21
call >print
ret
:tty_set_red_end
set reg0 >tty_set_red
jmp >tty_reset_end
:tty_reset
jmp >var_str_ptr_tty_colors_37_end
:var_str_ptr_tty_colors_37
:var_str_ptr_tty_colors_37_end
call >alloc
wmem >var_str_ptr_tty_colors_37 reg0
jmp >var_write_ptr_tty_colors_38_end
:var_write_ptr_tty_colors_38
:var_write_ptr_tty_colors_38_end
rmem reg0 >var_str_ptr_tty_colors_37
wmem >var_write_ptr_tty_colors_38 reg0
rmem reg0 >var_write_ptr_tty_colors_38
set reg1 27
wmem reg0 reg1
rmem reg0 >var_write_ptr_tty_colors_38
add reg0 reg0 1
wmem >var_write_ptr_tty_colors_38 reg0
rmem reg0 >var_write_ptr_tty_colors_38
jmp >var__tty_colors_41_end
:var__tty_colors_41
0
:var__tty_colors_41_end
wmem >var__tty_colors_41 &[
set reg1 >var__tty_colors_41
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_write_ptr_tty_colors_38
add reg0 reg0 1
wmem >var_write_ptr_tty_colors_38 reg0
rmem reg0 >var_write_ptr_tty_colors_38
jmp >var__tty_colors_43_end
:var__tty_colors_43
0
:var__tty_colors_43_end
wmem >var__tty_colors_43 &0
set reg1 >var__tty_colors_43
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_write_ptr_tty_colors_38
add reg0 reg0 1
wmem >var_write_ptr_tty_colors_38 reg0
rmem reg0 >var_write_ptr_tty_colors_38
jmp >var__tty_colors_45_end
:var__tty_colors_45
0
:var__tty_colors_45_end
wmem >var__tty_colors_45 &m
set reg1 >var__tty_colors_45
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_str_ptr_tty_colors_37
call >print
ret
:tty_reset_end
set reg0 >tty_reset
jmp >var_true_bool_4_end
:var_true_bool_4
:var_true_bool_4_end
set reg0 1
wmem >var_true_bool_4 reg0
jmp >var_false_bool_5_end
:var_false_bool_5
:var_false_bool_5_end
set reg0 0
wmem >var_false_bool_5 reg0
jmp >var_current_category_testlib_5_end
:var_current_category_testlib_5
:var_current_category_testlib_5_end
jmp >var_current_test_testlib_6_end
:var_current_test_testlib_6
:var_current_test_testlib_6_end
jmp >var_current_before_each_testlib_7_end
:var_current_before_each_testlib_7
:var_current_before_each_testlib_7_end
jmp >function__testlib_7_end
:function__testlib_7
ret
:function__testlib_7_end
set reg0 >function__testlib_7
wmem >var_current_before_each_testlib_7 reg0
jmp >var_current_after_each_testlib_8_end
:var_current_after_each_testlib_8
:var_current_after_each_testlib_8_end
jmp >function__testlib_8_end
:function__testlib_8
ret
:function__testlib_8_end
set reg0 >function__testlib_8
wmem >var_current_after_each_testlib_8 reg0
jmp >category_end
:category
jmp >var_name_testlib_10_end
:var_name_testlib_10
:var_name_testlib_10_end
jmp >var_cat_func_testlib_10_end
:var_cat_func_testlib_10
:var_cat_func_testlib_10_end
wmem >var_name_testlib_10 reg0
wmem >var_cat_func_testlib_10 reg1
rmem reg0 >var_name_testlib_10
call >println
rmem reg0 >var_name_testlib_10
wmem >var_current_category_testlib_5 reg0
rmem reg7 >var_cat_func_testlib_10
call reg7
ret
:category_end
set reg0 >category
jmp >var_before_each_testlib_17_end
:var_before_each_testlib_17
:var_before_each_testlib_17_end
jmp >function__testlib_17_end
:function__testlib_17
jmp >var_before_each_func_testlib_17_end
:var_before_each_func_testlib_17
:var_before_each_func_testlib_17_end
wmem >var_before_each_func_testlib_17 reg0
rmem reg0 >var_before_each_func_testlib_17
wmem >var_current_before_each_testlib_7 reg0
ret
ret
:function__testlib_17_end
set reg0 >function__testlib_17
wmem >var_before_each_testlib_17 reg0
jmp >var_after_each_testlib_20_end
:var_after_each_testlib_20
:var_after_each_testlib_20_end
jmp >function__testlib_20_end
:function__testlib_20
jmp >var_after_each_func_testlib_20_end
:var_after_each_func_testlib_20
:var_after_each_func_testlib_20_end
wmem >var_after_each_func_testlib_20 reg0
rmem reg0 >var_after_each_func_testlib_20
wmem >var_current_after_each_testlib_8 reg0
ret
ret
:function__testlib_20_end
set reg0 >function__testlib_20
wmem >var_after_each_testlib_20 reg0
jmp >test_end
:test
jmp >var_name_testlib_23_end
:var_name_testlib_23
:var_name_testlib_23_end
jmp >var_test_func_testlib_23_end
:var_test_func_testlib_23
:var_test_func_testlib_23_end
wmem >var_name_testlib_23 reg0
wmem >var_test_func_testlib_23 reg1
rmem reg0 >var_current_before_each_testlib_7
jf reg0 >end__testlib_25
rmem reg7 >var_current_before_each_testlib_7
call reg7
:end__testlib_25
rmem reg0 >var_name_testlib_23
wmem >var_current_test_testlib_6 reg0
rmem reg7 >var_test_func_testlib_23
call reg7
rmem reg0 >var_current_after_each_testlib_8
jf reg0 >end__testlib_31
rmem reg7 >var_current_after_each_testlib_8
call reg7
:end__testlib_31
ret
:test_end
set reg0 >test
jmp >assert_end
:assert
jmp >var_fact_testlib_37_end
:var_fact_testlib_37
:var_fact_testlib_37_end
wmem >var_fact_testlib_37 reg0
jmp >var__testlib_38_end
:var__testlib_38
0
:var__testlib_38_end
wmem >var__testlib_38 9
set reg0 >var__testlib_38
call >print
rmem reg0 >var_current_test_testlib_6
jmp >var__testlib_39_end
:var__testlib_39
&:
32
0
:var__testlib_39_end
wmem >var__testlib_39 32
set reg1 >var__testlib_39
call >str_cat
call >print
rmem reg0 >var_fact_testlib_37
set reg1 1
eq reg0 reg0 reg1
call >not
jf reg0 >end__testlib_40
call >tty_set_red
jmp >var__testlib_43_end
:var__testlib_43
&A
&I
&L
&E
&D
0
:var__testlib_43_end
wmem >var__testlib_43 &F
set reg0 >var__testlib_43
call >println
call >tty_reset
rmem reg0 >var_false_bool_5
ret
:end__testlib_40
call >tty_set_green
jmp >var__testlib_48_end
:var__testlib_48
&A
&S
&S
&E
&D
0
:var__testlib_48_end
wmem >var__testlib_48 &P
set reg0 >var__testlib_48
call >println
call >tty_reset
rmem reg0 >var_true_bool_4
ret
ret
:assert_end
set reg0 >assert
jmp >assert_type_factory_end
:assert_type_factory
jmp >var_left_testlib_62_end
:var_left_testlib_62
:var_left_testlib_62_end
wmem >var_left_testlib_62 reg0
jmp >var_a_type_backing_testlib_64_end
:var_a_type_backing_testlib_64
:fld_a_type_backing_testlib_64_left
:fld_a_type_backing_testlib_64_equal_to
:fld_a_type_backing_testlib_64_greater_than
:fld_a_type_backing_testlib_64_less_than
:var_a_type_backing_testlib_64_end
jmp >var_a_type_testlib_64_end
:var_a_type_testlib_64
:var_a_type_testlib_64_end
wmem >var_a_type_testlib_64 >var_a_type_backing_testlib_64
rmem reg0 >var_left_testlib_62
rmem reg7 >var_a_type_testlib_64
add reg7 reg7 1
wmem reg7 reg0
jmp >function__testlib_66_end
:function__testlib_66
jmp >var_right_testlib_66_end
:var_right_testlib_66
:var_right_testlib_66_end
wmem >var_right_testlib_66 reg0
jmp >var_result_testlib_68_end
:var_result_testlib_68
:var_result_testlib_68_end
rmem reg0 >var_left_testlib_62
rmem reg1 >var_right_testlib_66
eq reg0 reg0 reg1
wmem >var_result_testlib_68 reg0
rmem reg0 >var_result_testlib_68
ret
ret
:function__testlib_66_end
set reg0 >function__testlib_66
rmem reg7 >var_a_type_testlib_64
add reg7 reg7 2
wmem reg7 reg0
rmem reg0 >var_a_type_testlib_64
ret
ret
:assert_type_factory_end
set reg0 >assert_type_factory
jmp >is_end
:is
jmp >var_left_testlib_74_end
:var_left_testlib_74
:var_left_testlib_74_end
wmem >var_left_testlib_74 reg0
rmem reg0 >var_left_testlib_74
call >assert_type_factory
ret
ret
:is_end
set reg0 >is
jmp >var__stdlib_4_end
:var__stdlib_4
&t
&r
&_
&l
&e
&n
32
&t
&e
&s
&t
&s
0
:var__stdlib_4_end
wmem >var__stdlib_4 &s
set reg0 >var__stdlib_4
jmp >function__stdlib_4_end
:function__stdlib_4
jmp >var_result_stdlib_5_end
:var_result_stdlib_5
:var_result_stdlib_5_end
set reg0 0
wmem >var_result_stdlib_5 reg0
jmp >function__stdlib_6_end
:function__stdlib_6
jmp >var__stdlib_6_end
:var__stdlib_6
&2
&3
0
:var__stdlib_6_end
wmem >var__stdlib_6 &1
set reg0 >var__stdlib_6
call >str_len
wmem >var_result_stdlib_5 reg0
ret
:function__stdlib_6_end
set reg0 >function__stdlib_6
rmem reg7 >var_before_each_testlib_17
call reg7
jmp >var__stdlib_8_end
:var__stdlib_8
&t
&r
&i
&n
&g
32
&l
&e
&n
&g
&t
&h
32
&s
&h
&o
&u
&l
&d
32
&b
&e
32
&3
0
:var__stdlib_8_end
wmem >var__stdlib_8 &s
set reg0 >var__stdlib_8
jmp >function__stdlib_8_end
:function__stdlib_8
rmem reg0 >var_result_stdlib_5
call >is
add reg0 reg0 2
rmem reg0 reg0
set reg7 reg0
set reg0 3
call reg7
call >assert
ret
:function__stdlib_8_end
set reg1 >function__stdlib_8
call >test
ret
:function__stdlib_4_end
set reg1 >function__stdlib_4
call >category
jmp >var__stdlib_13_end
:var__stdlib_13
&t
&r
&_
&e
&q
&u
&a
&l
32
&t
&e
&s
&t
&s
0
:var__stdlib_13_end
wmem >var__stdlib_13 &s
set reg0 >var__stdlib_13
jmp >function__stdlib_13_end
:function__stdlib_13
jmp >var__stdlib_14_end
:var__stdlib_14
&t
&r
&i
&n
&g
32
&s
&h
&o
&u
&l
&d
32
&b
&e
32
&e
&q
&u
&a
&l
0
:var__stdlib_14_end
wmem >var__stdlib_14 &s
set reg0 >var__stdlib_14
jmp >function__stdlib_14_end
:function__stdlib_14
jmp >var_a_stdlib_15_end
:var_a_stdlib_15
:var_a_stdlib_15_end
jmp >var__stdlib_15_end
:var__stdlib_15
&2
&3
0
:var__stdlib_15_end
wmem >var__stdlib_15 &1
set reg0 >var__stdlib_15
wmem >var_a_stdlib_15 reg0
jmp >var_b_stdlib_16_end
:var_b_stdlib_16
:var_b_stdlib_16_end
jmp >var__stdlib_16_end
:var__stdlib_16
&2
&3
0
:var__stdlib_16_end
wmem >var__stdlib_16 &1
set reg0 >var__stdlib_16
wmem >var_b_stdlib_16 reg0
jmp >var_positive_stdlib_17_end
:var_positive_stdlib_17
:var_positive_stdlib_17_end
rmem reg0 >var_a_stdlib_15
rmem reg1 >var_b_stdlib_16
call >str_equal
wmem >var_positive_stdlib_17 reg0
rmem reg0 >var_positive_stdlib_17
call >print_number
jmp >var__stdlib_21_end
:var__stdlib_21
0
:var__stdlib_21_end
wmem >var__stdlib_21 32
set reg0 >var__stdlib_21
call >println
rmem reg0 >var_positive_stdlib_17
call >is
add reg0 reg0 2
rmem reg0 reg0
set reg7 reg0
set reg0 1
call reg7
call >assert
ret
:function__stdlib_14_end
set reg1 >function__stdlib_14
call >test
jmp >var__stdlib_25_end
:var__stdlib_25
&t
&r
&i
&n
&g
32
&n
&o
&t
32
&s
&h
&o
&u
&l
&d
32
&b
&e
32
&e
&q
&u
&a
&l
0
:var__stdlib_25_end
wmem >var__stdlib_25 &s
set reg0 >var__stdlib_25
jmp >function__stdlib_25_end
:function__stdlib_25
jmp >var_negative_stdlib_26_end
:var_negative_stdlib_26
:var_negative_stdlib_26_end
jmp >var__stdlib_26_end
:var__stdlib_26
&3
0
:var__stdlib_26_end
wmem >var__stdlib_26 &2
set reg0 >var__stdlib_26
jmp >var__stdlib_26_end
:var__stdlib_26
&2
&3
0
:var__stdlib_26_end
wmem >var__stdlib_26 &1
set reg1 >var__stdlib_26
call >str_equal
wmem >var_negative_stdlib_26 reg0
rmem reg0 >var_negative_stdlib_26
call >is
add reg0 reg0 2
rmem reg0 reg0
set reg7 reg0
set reg0 0
call reg7
call >assert
ret
:function__stdlib_25_end
set reg1 >function__stdlib_25
call >test
ret
:function__stdlib_13_end
set reg1 >function__stdlib_13
call >category
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

