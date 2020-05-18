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
jmp >int_end
:int
jmp >var_str_stdlib_118_end
:var_str_stdlib_118
:var_str_stdlib_118_end
wmem >var_str_stdlib_118 reg0
jmp >var_len_stdlib_119_end
:var_len_stdlib_119
:var_len_stdlib_119_end
rmem reg0 >var_str_stdlib_118
call >str_len
wmem >var_len_stdlib_119 reg0
jmp >var_index_stdlib_120_end
:var_index_stdlib_120
:var_index_stdlib_120_end
set reg0 0
wmem >var_index_stdlib_120 reg0
jmp >var_accumulation_stdlib_121_end
:var_accumulation_stdlib_121
:var_accumulation_stdlib_121_end
set reg0 0
wmem >var_accumulation_stdlib_121 reg0
:for__stdlib_122_begin
rmem reg0 >var_len_stdlib_119
set reg1 0
gt reg0 reg0 reg1
jf reg0 >for__stdlib_122_end
jmp >var_tens_place_stdlib_124_end
:var_tens_place_stdlib_124
:var_tens_place_stdlib_124_end
set reg0 1
set reg1 10
rmem reg2 >var_len_stdlib_119
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
rmem reg1 >var_len_stdlib_119
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
wmem >var_tens_place_stdlib_124 reg0
jmp >var_diget_stdlib_125_end
:var_diget_stdlib_125
:var_diget_stdlib_125_end
rmem reg0 >var_str_stdlib_118
rmem reg1 >var_index_stdlib_120
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_diget_stdlib_125 reg0
rmem reg0 >var_diget_stdlib_125
set reg1 48
call >subtract
wmem >var_diget_stdlib_125 reg0
:for__stdlib_127_begin
rmem reg0 >var_tens_place_stdlib_124
set reg1 0
gt reg0 reg0 reg1
jf reg0 >for__stdlib_127_end
rmem reg0 >var_diget_stdlib_125
set reg1 10
mult reg0 reg0 reg1
wmem >var_diget_stdlib_125 reg0
rmem reg0 >var_tens_place_stdlib_124
set reg1 1
call >subtract
wmem >var_tens_place_stdlib_124 reg0
jmp >for__stdlib_127_begin
:for__stdlib_127_end
rmem reg0 >var_accumulation_stdlib_121
rmem reg1 >var_diget_stdlib_125
add reg0 reg0 reg1
wmem >var_accumulation_stdlib_121 reg0
rmem reg0 >var_index_stdlib_120
add reg0 reg0 1
wmem >var_index_stdlib_120 reg0
rmem reg0 >var_len_stdlib_119
set reg1 1
call >subtract
wmem >var_len_stdlib_119 reg0
jmp >for__stdlib_122_begin
:for__stdlib_122_end
rmem reg0 >var_accumulation_stdlib_121
ret
ret
:int_end
set reg0 >int
jmp >string_end
:string
jmp >var_num_stdlib_138_end
:var_num_stdlib_138
:var_num_stdlib_138_end
wmem >var_num_stdlib_138 reg0
jmp >var_charNum_stdlib_139_end
:var_charNum_stdlib_139
:var_charNum_stdlib_139_end
jmp >var_length_stdlib_140_end
:var_length_stdlib_140
:var_length_stdlib_140_end
set reg0 0
wmem >var_length_stdlib_140 reg0
:while__stdlib_141_begin
rmem reg0 >var_num_stdlib_138
set reg1 9
gt reg0 reg0 reg1
jf reg0 >while__stdlib_141_end
rmem reg0 >var_num_stdlib_138
set reg1 10
mod reg0 reg0 reg1
wmem >var_charNum_stdlib_139 reg0
rmem reg0 >var_charNum_stdlib_139
rmem reg0 >var_charNum_stdlib_139
push reg0
rmem reg0 >var_length_stdlib_140
add reg0 reg0 1
wmem >var_length_stdlib_140 reg0
rmem reg0 >var_num_stdlib_138
set reg1 10
call >divide
wmem >var_num_stdlib_138 reg0
jmp >while__stdlib_141_begin
:while__stdlib_141_end
rmem reg0 >var_num_stdlib_138
set reg1 10
mod reg0 reg0 reg1
wmem >var_charNum_stdlib_139 reg0
rmem reg0 >var_charNum_stdlib_139
rmem reg0 >var_charNum_stdlib_139
push reg0
rmem reg0 >var_length_stdlib_140
add reg0 reg0 1
wmem >var_length_stdlib_140 reg0
jmp >var_stack_index_stdlib_152_end
:var_stack_index_stdlib_152
:var_stack_index_stdlib_152_end
set reg0 0
wmem >var_stack_index_stdlib_152 reg0
jmp >var_dest_ptr_stdlib_153_end
:var_dest_ptr_stdlib_153
:var_dest_ptr_stdlib_153_end
call >alloc
wmem >var_dest_ptr_stdlib_153 reg0
:while__stdlib_155_begin
rmem reg0 >var_stack_index_stdlib_152
rmem reg1 >var_length_stdlib_140
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_155_end
rmem reg0 >var_dest_ptr_stdlib_153
rmem reg1 >var_stack_index_stdlib_152
add reg0 reg0 reg1
pop reg1
set reg2 48
add reg1 reg1 reg2
wmem reg0 reg1
rmem reg0 >var_stack_index_stdlib_152
set reg1 1
add reg0 reg0 reg1
wmem >var_stack_index_stdlib_152 reg0
jmp >while__stdlib_155_begin
:while__stdlib_155_end
rmem reg0 >var_dest_ptr_stdlib_153
rmem reg1 >var_stack_index_stdlib_152
add reg0 reg0 reg1
set reg1 0
wmem reg0 reg1
rmem reg0 >var_dest_ptr_stdlib_153
ret
ret
:string_end
set reg0 >string
jmp >print_number_end
:print_number
jmp >var_num_stdlib_164_end
:var_num_stdlib_164
:var_num_stdlib_164_end
wmem >var_num_stdlib_164 reg0
rmem reg0 >var_num_stdlib_164
call >string
call >print
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_i_stdlib_170_end
:var_i_stdlib_170
:var_i_stdlib_170_end
set reg0 0
wmem >var_i_stdlib_170 reg0
:while__stdlib_172_begin
rmem reg0 >var_i_stdlib_170
rmem reg0 reg0
jf reg0 >while__stdlib_172_end
rmem reg0 >var_i_stdlib_170
add reg0 reg0 1
wmem >var_i_stdlib_170 reg0
rmem reg0 >var_i_stdlib_170
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while__stdlib_172_begin
:while__stdlib_172_end
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
jmp >var_a_type_backing_testlib_66_end
:var_a_type_backing_testlib_66
:fld_a_type_backing_testlib_66_left
:fld_a_type_backing_testlib_66_equal_to
:fld_a_type_backing_testlib_66_greater_than
:fld_a_type_backing_testlib_66_less_than
:var_a_type_backing_testlib_66_end
jmp >var_a_type_testlib_66_end
:var_a_type_testlib_66
:var_a_type_testlib_66_end
wmem >var_a_type_testlib_66 >var_a_type_backing_testlib_66
rmem reg0 >var_left_testlib_62
rmem reg7 >var_a_type_testlib_66
add reg7 reg7 1
wmem reg7 reg0
jmp >function__testlib_68_end
:function__testlib_68
jmp >var_right_testlib_68_end
:var_right_testlib_68
:var_right_testlib_68_end
wmem >var_right_testlib_68 reg0
jmp >var_result_testlib_70_end
:var_result_testlib_70
:var_result_testlib_70_end
rmem reg0 >var_left_testlib_62
rmem reg1 >var_right_testlib_68
eq reg0 reg0 reg1
wmem >var_result_testlib_70 reg0
rmem reg0 >var_result_testlib_70
ret
ret
:function__testlib_68_end
set reg0 >function__testlib_68
rmem reg7 >var_a_type_testlib_66
add reg7 reg7 2
wmem reg7 reg0
rmem reg0 >var_a_type_testlib_66
ret
ret
:assert_type_factory_end
set reg0 >assert_type_factory
jmp >is_end
:is
jmp >var_left_testlib_76_end
:var_left_testlib_76
:var_left_testlib_76_end
wmem >var_left_testlib_76 reg0
rmem reg0 >var_left_testlib_76
call >assert_type_factory
ret
ret
:is_end
set reg0 >is
jmp >var_global_state_test_4_end
:var_global_state_test_4
:var_global_state_test_4_end
set reg0 0
wmem >var_global_state_test_4 reg0
jmp >set_global_state_end
:set_global_state
set reg0 123
wmem >var_global_state_test_4 reg0
ret
:set_global_state_end
set reg0 >set_global_state
jmp >var__test_11_end
:var__test_11
&l
&o
&b
&a
&l
&_
&s
&t
&a
&t
&e
32
&t
&e
&s
&t
&s
0
:var__test_11_end
wmem >var__test_11 &g
set reg0 >var__test_11
jmp >function__test_11_end
:function__test_11
jmp >function__test_12_end
:function__test_12
call >set_global_state
ret
:function__test_12_end
set reg0 >function__test_12
rmem reg7 >var_before_each_testlib_17
call reg7
jmp >function__test_15_end
:function__test_15
set reg0 0
wmem >var_global_state_test_4 reg0
ret
:function__test_15_end
set reg0 >function__test_15
rmem reg7 >var_after_each_testlib_20
call reg7
jmp >var__test_19_end
:var__test_19
&l
&o
&b
&a
&l
&_
&s
&t
&a
&t
&e
32
&i
&s
32
&0
32
&t
&o
32
&b
&e
&g
&i
&n
0
:var__test_19_end
wmem >var__test_19 &g
set reg0 >var__test_19
jmp >function__test_19_end
:function__test_19
rmem reg0 >var_global_state_test_4
call >is
add reg0 reg0 2
rmem reg0 reg0
set reg7 reg0
set reg0 0
call reg7
call >assert
ret
:function__test_19_end
set reg1 >function__test_19
call >test
jmp >var__test_23_end
:var__test_23
&l
&o
&b
&a
&l
&_
&s
&t
&a
&t
&e
32
&i
&s
32
&s
&e
&t
32
&c
&o
&r
&r
&e
&c
&t
&l
&y
0
:var__test_23_end
wmem >var__test_23 &g
set reg0 >var__test_23
jmp >function__test_23_end
:function__test_23
rmem reg0 >var_global_state_test_4
call >is
add reg0 reg0 2
rmem reg0 reg0
set reg7 reg0
set reg0 123
call reg7
call >assert
ret
:function__test_23_end
set reg1 >function__test_23
call >test
ret
:function__test_11_end
set reg1 >function__test_11
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

