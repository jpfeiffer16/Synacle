jmp >str_len_end
:str_len
jmp >var_str_stdlib_1_17_end
:var_str_stdlib_1_17
:var_str_stdlib_1_17_end
pop reg7
pop reg0
wmem >var_str_stdlib_1_17 reg0
push reg7
jmp >var_str_ptr_stdlib_2_4_end
:var_str_ptr_stdlib_2_4
:var_str_ptr_stdlib_2_4_end
rmem reg0 >var_str_stdlib_1_17
wmem >var_str_ptr_stdlib_2_4 reg0
jmp >var_length_stdlib_3_4_end
:var_length_stdlib_3_4
:var_length_stdlib_3_4_end
set reg0 0
wmem >var_length_stdlib_3_4 reg0
:while__stdlib_4_4_begin
rmem reg0 >var_str_ptr_stdlib_2_4
rmem reg0 reg0
jf reg0 >while__stdlib_4_4_end
rmem reg0 >var_str_ptr_stdlib_2_4
add reg0 reg0 1
wmem >var_str_ptr_stdlib_2_4 reg0
rmem reg0 >var_length_stdlib_3_4
add reg0 reg0 1
wmem >var_length_stdlib_3_4 reg0
jmp >while__stdlib_4_4_begin
:while__stdlib_4_4_end
rmem reg0 >var_length_stdlib_3_4
ret
ret
:str_len_end
set reg0 >str_len
jmp >print_end
:print
jmp >var_str_stdlib_11_15_end
:var_str_stdlib_11_15
:var_str_stdlib_11_15_end
pop reg7
pop reg0
wmem >var_str_stdlib_11_15 reg0
push reg7
jmp >var_str_ptr_stdlib_12_4_end
:var_str_ptr_stdlib_12_4
:var_str_ptr_stdlib_12_4_end
rmem reg0 >var_str_stdlib_11_15
wmem >var_str_ptr_stdlib_12_4 reg0
:while__stdlib_13_4_begin
rmem reg0 >var_str_ptr_stdlib_12_4
rmem reg0 reg0
jf reg0 >while__stdlib_13_4_end
rmem reg0 >var_str_ptr_stdlib_12_4
rmem reg0 reg0
out reg0
rmem reg0 >var_str_ptr_stdlib_12_4
add reg0 reg0 1
wmem >var_str_ptr_stdlib_12_4 reg0
jmp >while__stdlib_13_4_begin
:while__stdlib_13_4_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_str_ptr_stdlib_19_17_end
:var_str_ptr_stdlib_19_17
:var_str_ptr_stdlib_19_17_end
pop reg7
pop reg0
wmem >var_str_ptr_stdlib_19_17 reg0
push reg7
rmem reg0 >var_str_ptr_stdlib_19_17
push reg0
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >str_equal_end
:str_equal
jmp >var_str_a_stdlib_24_19_end
:var_str_a_stdlib_24_19
:var_str_a_stdlib_24_19_end
jmp >var_str_b_stdlib_24_33_end
:var_str_b_stdlib_24_33
:var_str_b_stdlib_24_33_end
pop reg7
pop reg0
wmem >var_str_b_stdlib_24_33 reg0
pop reg0
wmem >var_str_a_stdlib_24_19 reg0
push reg7
jmp >var_a_len_stdlib_25_4_end
:var_a_len_stdlib_25_4
:var_a_len_stdlib_25_4_end
rmem reg0 >var_str_a_stdlib_24_19
push reg0
call >str_len
wmem >var_a_len_stdlib_25_4 reg0
jmp >var_b_len_stdlib_26_4_end
:var_b_len_stdlib_26_4
:var_b_len_stdlib_26_4_end
rmem reg0 >var_str_b_stdlib_24_33
push reg0
call >str_len
wmem >var_b_len_stdlib_26_4 reg0
rmem reg0 >var_a_len_stdlib_25_4
rmem reg1 >var_b_len_stdlib_26_4
eq reg0 reg0 reg1
call >not
jf reg0 >end__stdlib_27_4
set reg0 0
ret
:end__stdlib_27_4
jmp >var_i_stdlib_30_9_end
:var_i_stdlib_30_9
:var_i_stdlib_30_9_end
set reg0 0
wmem >var_i_stdlib_30_9 reg0
:for__stdlib_30_4_begin
rmem reg0 >var_i_stdlib_30_9
rmem reg1 >var_a_len_stdlib_25_4
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for__stdlib_30_4_end
jmp >var_a_val_stdlib_31_8_end
:var_a_val_stdlib_31_8
:var_a_val_stdlib_31_8_end
rmem reg0 >var_str_a_stdlib_24_19
rmem reg1 >var_i_stdlib_30_9
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_a_val_stdlib_31_8 reg0
jmp >var_b_val_stdlib_32_8_end
:var_b_val_stdlib_32_8
:var_b_val_stdlib_32_8_end
rmem reg0 >var_str_b_stdlib_24_33
rmem reg1 >var_i_stdlib_30_9
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_b_val_stdlib_32_8 reg0
rmem reg0 >var_a_val_stdlib_31_8
rmem reg1 >var_b_val_stdlib_32_8
eq reg0 reg0 reg1
call >not
jf reg0 >end__stdlib_33_8
set reg0 0
ret
:end__stdlib_33_8
rmem reg0 >var_i_stdlib_30_9
add reg0 reg0 1
wmem >var_i_stdlib_30_9 reg0
jmp >for__stdlib_30_4_begin
:for__stdlib_30_4_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
pop reg7
push reg7
jmp >var_data_index_stdlib_41_4_end
:var_data_index_stdlib_41_4
:var_data_index_stdlib_41_4_end
set reg0 16382
wmem >var_data_index_stdlib_41_4 reg0
:while__stdlib_42_4_begin
rmem reg0 >var_data_index_stdlib_41_4
rmem reg0 reg0
call >not
jf reg0 >while__stdlib_42_4_end
rmem reg0 >var_data_index_stdlib_41_4
set reg1 1
call >subtract
wmem >var_data_index_stdlib_41_4 reg0
jmp >while__stdlib_42_4_begin
:while__stdlib_42_4_end
rmem reg0 >var_data_index_stdlib_41_4
set reg1 2
add reg0 reg0 reg1
wmem >var_data_index_stdlib_41_4 reg0
rmem reg0 >var_data_index_stdlib_41_4
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_length_stdlib_49_21_end
:var_length_stdlib_49_21
:var_length_stdlib_49_21_end
pop reg7
pop reg0
wmem >var_length_stdlib_49_21 reg0
push reg7
jmp >var_pointer_stdlib_50_4_end
:var_pointer_stdlib_50_4
:var_pointer_stdlib_50_4_end
call >alloc
wmem >var_pointer_stdlib_50_4 reg0
jmp >var_dest_ptr_stdlib_51_4_end
:var_dest_ptr_stdlib_51_4
:var_dest_ptr_stdlib_51_4_end
rmem reg0 >var_pointer_stdlib_50_4
rmem reg1 >var_length_stdlib_49_21
add reg0 reg0 reg1
wmem >var_dest_ptr_stdlib_51_4 reg0
rmem reg0 >var_dest_ptr_stdlib_51_4
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_pointer_stdlib_50_4
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_s_ptr_stdlib_56_16_end
:var_s_ptr_stdlib_56_16
:var_s_ptr_stdlib_56_16_end
jmp >var_d_ptr_stdlib_56_27_end
:var_d_ptr_stdlib_56_27
:var_d_ptr_stdlib_56_27_end
jmp >var_len_stdlib_56_38_end
:var_len_stdlib_56_38
:var_len_stdlib_56_38_end
pop reg7
pop reg0
wmem >var_len_stdlib_56_38 reg0
pop reg0
wmem >var_d_ptr_stdlib_56_27 reg0
pop reg0
wmem >var_s_ptr_stdlib_56_16 reg0
push reg7
jmp >var_current_byte_stdlib_57_4_end
:var_current_byte_stdlib_57_4
:var_current_byte_stdlib_57_4_end
set reg0 0
wmem >var_current_byte_stdlib_57_4 reg0
:while__stdlib_58_4_begin
rmem reg0 >var_current_byte_stdlib_57_4
rmem reg1 >var_len_stdlib_56_38
gt reg0 reg0 reg1
call >not
jf reg0 >while__stdlib_58_4_end
jmp >var_byte_to_write_ptr_stdlib_59_8_end
:var_byte_to_write_ptr_stdlib_59_8
:var_byte_to_write_ptr_stdlib_59_8_end
rmem reg0 >var_s_ptr_stdlib_56_16
rmem reg1 >var_current_byte_stdlib_57_4
add reg0 reg0 reg1
wmem >var_byte_to_write_ptr_stdlib_59_8 reg0
jmp >var_dest_ptr_stdlib_60_8_end
:var_dest_ptr_stdlib_60_8
:var_dest_ptr_stdlib_60_8_end
rmem reg0 >var_d_ptr_stdlib_56_27
rmem reg1 >var_current_byte_stdlib_57_4
add reg0 reg0 reg1
wmem >var_dest_ptr_stdlib_60_8 reg0
rmem reg0 >var_dest_ptr_stdlib_60_8
rmem reg1 >var_byte_to_write_ptr_stdlib_59_8
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_current_byte_stdlib_57_4
add reg0 reg0 1
wmem >var_current_byte_stdlib_57_4 reg0
jmp >while__stdlib_58_4_begin
:while__stdlib_58_4_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_cat_end
:str_cat
jmp >var_str_a_stdlib_66_17_end
:var_str_a_stdlib_66_17
:var_str_a_stdlib_66_17_end
jmp >var_str_b_stdlib_66_31_end
:var_str_b_stdlib_66_31
:var_str_b_stdlib_66_31_end
pop reg7
pop reg0
wmem >var_str_b_stdlib_66_31 reg0
pop reg0
wmem >var_str_a_stdlib_66_17 reg0
push reg7
jmp >var_a_len_stdlib_67_4_end
:var_a_len_stdlib_67_4
:var_a_len_stdlib_67_4_end
rmem reg0 >var_str_a_stdlib_66_17
push reg0
call >str_len
wmem >var_a_len_stdlib_67_4 reg0
jmp >var_b_len_stdlib_68_4_end
:var_b_len_stdlib_68_4
:var_b_len_stdlib_68_4_end
rmem reg0 >var_str_b_stdlib_66_31
push reg0
call >str_len
wmem >var_b_len_stdlib_68_4 reg0
jmp >var_alloc_ptr_stdlib_69_4_end
:var_alloc_ptr_stdlib_69_4
:var_alloc_ptr_stdlib_69_4_end
call >alloc
wmem >var_alloc_ptr_stdlib_69_4 reg0
rmem reg0 >var_str_a_stdlib_66_17
push reg0
rmem reg0 >var_alloc_ptr_stdlib_69_4
push reg0
rmem reg0 >var_a_len_stdlib_67_4
push reg0
call >mem_cp
jmp >var_end_address_stdlib_71_4_end
:var_end_address_stdlib_71_4
:var_end_address_stdlib_71_4_end
rmem reg0 >var_alloc_ptr_stdlib_69_4
rmem reg1 >var_a_len_stdlib_67_4
add reg0 reg0 reg1
wmem >var_end_address_stdlib_71_4 reg0
rmem reg0 >var_b_len_stdlib_68_4
add reg0 reg0 1
wmem >var_b_len_stdlib_68_4 reg0
rmem reg0 >var_str_b_stdlib_66_31
push reg0
rmem reg0 >var_end_address_stdlib_71_4
push reg0
rmem reg0 >var_b_len_stdlib_68_4
push reg0
call >mem_cp
rmem reg0 >var_alloc_ptr_stdlib_69_4
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_str_ptr_stdlib_77_18_end
:var_str_ptr_stdlib_77_18
:var_str_ptr_stdlib_77_18_end
pop reg7
pop reg0
wmem >var_str_ptr_stdlib_77_18 reg0
push reg7
jmp >var_alloc_ptr_stdlib_78_4_end
:var_alloc_ptr_stdlib_78_4
:var_alloc_ptr_stdlib_78_4_end
call >alloc
wmem >var_alloc_ptr_stdlib_78_4 reg0
jmp >var_len_stdlib_79_4_end
:var_len_stdlib_79_4
:var_len_stdlib_79_4_end
rmem reg0 >var_str_ptr_stdlib_77_18
push reg0
call >str_len
wmem >var_len_stdlib_79_4 reg0
jmp >var_index_stdlib_80_4_end
:var_index_stdlib_80_4
:var_index_stdlib_80_4_end
set reg0 0
wmem >var_index_stdlib_80_4 reg0
:while__stdlib_81_4_begin
rmem reg0 >var_index_stdlib_80_4
rmem reg1 >var_len_stdlib_79_4
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_81_4_end
jmp >var_source_index_stdlib_82_8_end
:var_source_index_stdlib_82_8
:var_source_index_stdlib_82_8_end
rmem reg0 >var_str_ptr_stdlib_77_18
rmem reg1 >var_index_stdlib_80_4
add reg0 reg0 reg1
wmem >var_source_index_stdlib_82_8 reg0
rmem reg0 >var_source_index_stdlib_82_8
rmem reg0 reg0
rmem reg0 >var_source_index_stdlib_82_8
rmem reg0 reg0
push reg0
rmem reg0 >var_index_stdlib_80_4
add reg0 reg0 1
wmem >var_index_stdlib_80_4 reg0
jmp >while__stdlib_81_4_begin
:while__stdlib_81_4_end
jmp >var_current_byte_stdlib_87_4_end
:var_current_byte_stdlib_87_4
:var_current_byte_stdlib_87_4_end
pop reg0
wmem >var_current_byte_stdlib_87_4 reg0
set reg0 0
wmem >var_index_stdlib_80_4 reg0
:while__stdlib_89_4_begin
rmem reg0 >var_index_stdlib_80_4
rmem reg1 >var_len_stdlib_79_4
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_89_4_end
jmp >var_dest_index_stdlib_90_8_end
:var_dest_index_stdlib_90_8
:var_dest_index_stdlib_90_8_end
rmem reg0 >var_alloc_ptr_stdlib_78_4
rmem reg1 >var_index_stdlib_80_4
add reg0 reg0 reg1
wmem >var_dest_index_stdlib_90_8 reg0
rmem reg0 >var_dest_index_stdlib_90_8
rmem reg1 >var_current_byte_stdlib_87_4
wmem reg0 reg1
rmem reg0 >var_index_stdlib_80_4
add reg0 reg0 1
wmem >var_index_stdlib_80_4 reg0
pop reg0
wmem >var_current_byte_stdlib_87_4 reg0
jmp >while__stdlib_89_4_begin
:while__stdlib_89_4_end
rmem reg0 >var_current_byte_stdlib_87_4
rmem reg0 >var_current_byte_stdlib_87_4
push reg0
rmem reg0 >var_alloc_ptr_stdlib_78_4
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
pop reg7
push reg7
jmp >var_data_index_stdlib_102_4_end
:var_data_index_stdlib_102_4
:var_data_index_stdlib_102_4_end
set reg0 16384
wmem >var_data_index_stdlib_102_4 reg0
jmp >var_in_char_stdlib_103_4_end
:var_in_char_stdlib_103_4
:var_in_char_stdlib_103_4_end
in reg0
wmem >var_in_char_stdlib_103_4 reg0
jmp >var_is_newline_stdlib_104_4_end
:var_is_newline_stdlib_104_4
:var_is_newline_stdlib_104_4_end
rmem reg0 >var_in_char_stdlib_103_4
set reg1 10
eq reg0 reg0 reg1
wmem >var_is_newline_stdlib_104_4 reg0
:while__stdlib_105_4_begin
rmem reg0 >var_is_newline_stdlib_104_4
rmem reg1 >var_in_char_stdlib_103_4
call >and
call >not
jf reg0 >while__stdlib_105_4_end
rmem reg0 >var_data_index_stdlib_102_4
rmem reg1 >var_in_char_stdlib_103_4
wmem reg0 reg1
rmem reg0 >var_data_index_stdlib_102_4
add reg0 reg0 1
wmem >var_data_index_stdlib_102_4 reg0
in reg0
wmem >var_in_char_stdlib_103_4 reg0
rmem reg0 >var_in_char_stdlib_103_4
set reg1 10
eq reg0 reg0 reg1
wmem >var_is_newline_stdlib_104_4 reg0
jmp >while__stdlib_105_4_begin
:while__stdlib_105_4_end
rmem reg0 >var_data_index_stdlib_102_4
set reg1 0
wmem reg0 reg1
jmp >var_alloc_ptr_stdlib_112_4_end
:var_alloc_ptr_stdlib_112_4
:var_alloc_ptr_stdlib_112_4_end
call >alloc
wmem >var_alloc_ptr_stdlib_112_4 reg0
jmp >var_length_stdlib_113_4_end
:var_length_stdlib_113_4
:var_length_stdlib_113_4_end
set reg0 16384
push reg0
call >str_len
wmem >var_length_stdlib_113_4 reg0
set reg0 16384
push reg0
rmem reg0 >var_alloc_ptr_stdlib_112_4
push reg0
rmem reg0 >var_length_stdlib_113_4
push reg0
call >mem_cp
rmem reg0 >var_alloc_ptr_stdlib_112_4
ret
ret
:input_end
set reg0 >input
jmp >int_end
:int
jmp >var_str_stdlib_118_13_end
:var_str_stdlib_118_13
:var_str_stdlib_118_13_end
pop reg7
pop reg0
wmem >var_str_stdlib_118_13 reg0
push reg7
jmp >var_len_stdlib_119_4_end
:var_len_stdlib_119_4
:var_len_stdlib_119_4_end
rmem reg0 >var_str_stdlib_118_13
push reg0
call >str_len
wmem >var_len_stdlib_119_4 reg0
jmp >var_index_stdlib_120_4_end
:var_index_stdlib_120_4
:var_index_stdlib_120_4_end
set reg0 0
wmem >var_index_stdlib_120_4 reg0
jmp >var_accumulation_stdlib_121_4_end
:var_accumulation_stdlib_121_4
:var_accumulation_stdlib_121_4_end
set reg0 0
wmem >var_accumulation_stdlib_121_4 reg0
:for__stdlib_122_4_begin
rmem reg0 >var_len_stdlib_119_4
set reg1 0
gt reg0 reg0 reg1
jf reg0 >for__stdlib_122_4_end
jmp >var_tens_place_stdlib_124_8_end
:var_tens_place_stdlib_124_8
:var_tens_place_stdlib_124_8_end
set reg0 1
set reg1 10
rmem reg2 >var_len_stdlib_119_4
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
rmem reg1 >var_len_stdlib_119_4
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
wmem >var_tens_place_stdlib_124_8 reg0
jmp >var_diget_stdlib_125_8_end
:var_diget_stdlib_125_8
:var_diget_stdlib_125_8_end
rmem reg0 >var_str_stdlib_118_13
rmem reg1 >var_index_stdlib_120_4
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_diget_stdlib_125_8 reg0
rmem reg0 >var_diget_stdlib_125_8
set reg1 48
call >subtract
wmem >var_diget_stdlib_125_8 reg0
:for__stdlib_127_8_begin
rmem reg0 >var_tens_place_stdlib_124_8
set reg1 0
gt reg0 reg0 reg1
jf reg0 >for__stdlib_127_8_end
rmem reg0 >var_diget_stdlib_125_8
set reg1 10
mult reg0 reg0 reg1
wmem >var_diget_stdlib_125_8 reg0
rmem reg0 >var_tens_place_stdlib_124_8
set reg1 1
call >subtract
wmem >var_tens_place_stdlib_124_8 reg0
jmp >for__stdlib_127_8_begin
:for__stdlib_127_8_end
rmem reg0 >var_accumulation_stdlib_121_4
rmem reg1 >var_diget_stdlib_125_8
add reg0 reg0 reg1
wmem >var_accumulation_stdlib_121_4 reg0
rmem reg0 >var_index_stdlib_120_4
add reg0 reg0 1
wmem >var_index_stdlib_120_4 reg0
rmem reg0 >var_len_stdlib_119_4
set reg1 1
call >subtract
wmem >var_len_stdlib_119_4 reg0
jmp >for__stdlib_122_4_begin
:for__stdlib_122_4_end
rmem reg0 >var_accumulation_stdlib_121_4
ret
ret
:int_end
set reg0 >int
jmp >string_end
:string
jmp >var_num_stdlib_138_16_end
:var_num_stdlib_138_16
:var_num_stdlib_138_16_end
pop reg7
pop reg0
wmem >var_num_stdlib_138_16 reg0
push reg7
jmp >var_charNum_stdlib_139_4_end
:var_charNum_stdlib_139_4
:var_charNum_stdlib_139_4_end
jmp >var_length_stdlib_140_4_end
:var_length_stdlib_140_4
:var_length_stdlib_140_4_end
set reg0 0
wmem >var_length_stdlib_140_4 reg0
:while__stdlib_141_4_begin
rmem reg0 >var_num_stdlib_138_16
set reg1 9
gt reg0 reg0 reg1
jf reg0 >while__stdlib_141_4_end
rmem reg0 >var_num_stdlib_138_16
set reg1 10
mod reg0 reg0 reg1
wmem >var_charNum_stdlib_139_4 reg0
rmem reg0 >var_charNum_stdlib_139_4
rmem reg0 >var_charNum_stdlib_139_4
push reg0
rmem reg0 >var_length_stdlib_140_4
add reg0 reg0 1
wmem >var_length_stdlib_140_4 reg0
rmem reg0 >var_num_stdlib_138_16
set reg1 10
call >divide
wmem >var_num_stdlib_138_16 reg0
jmp >while__stdlib_141_4_begin
:while__stdlib_141_4_end
rmem reg0 >var_num_stdlib_138_16
set reg1 10
mod reg0 reg0 reg1
wmem >var_charNum_stdlib_139_4 reg0
rmem reg0 >var_charNum_stdlib_139_4
rmem reg0 >var_charNum_stdlib_139_4
push reg0
rmem reg0 >var_length_stdlib_140_4
add reg0 reg0 1
wmem >var_length_stdlib_140_4 reg0
jmp >var_stack_index_stdlib_152_4_end
:var_stack_index_stdlib_152_4
:var_stack_index_stdlib_152_4_end
set reg0 0
wmem >var_stack_index_stdlib_152_4 reg0
jmp >var_dest_ptr_stdlib_153_4_end
:var_dest_ptr_stdlib_153_4
:var_dest_ptr_stdlib_153_4_end
call >alloc
wmem >var_dest_ptr_stdlib_153_4 reg0
:while__stdlib_155_4_begin
rmem reg0 >var_stack_index_stdlib_152_4
rmem reg1 >var_length_stdlib_140_4
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_155_4_end
rmem reg0 >var_dest_ptr_stdlib_153_4
rmem reg1 >var_stack_index_stdlib_152_4
add reg0 reg0 reg1
pop reg1
set reg2 48
add reg1 reg1 reg2
wmem reg0 reg1
rmem reg0 >var_stack_index_stdlib_152_4
set reg1 1
add reg0 reg0 reg1
wmem >var_stack_index_stdlib_152_4 reg0
jmp >while__stdlib_155_4_begin
:while__stdlib_155_4_end
rmem reg0 >var_dest_ptr_stdlib_153_4
rmem reg1 >var_stack_index_stdlib_152_4
add reg0 reg0 reg1
set reg1 0
wmem reg0 reg1
rmem reg0 >var_dest_ptr_stdlib_153_4
ret
ret
:string_end
set reg0 >string
jmp >print_number_end
:print_number
jmp >var_num_stdlib_164_22_end
:var_num_stdlib_164_22
:var_num_stdlib_164_22_end
pop reg7
pop reg0
wmem >var_num_stdlib_164_22 reg0
push reg7
rmem reg0 >var_num_stdlib_164_22
push reg0
call >string
push reg0
call >print
ret
:print_number_end
set reg0 >print_number
jmp >print_numberln_end
:print_numberln
jmp >var_num_stdlib_168_24_end
:var_num_stdlib_168_24
:var_num_stdlib_168_24_end
pop reg7
pop reg0
wmem >var_num_stdlib_168_24 reg0
push reg7
rmem reg0 >var_num_stdlib_168_24
push reg0
call >string
push reg0
call >println
ret
:print_numberln_end
set reg0 >print_numberln
jmp >dump_mem_end
:dump_mem
pop reg7
push reg7
jmp >var_i_stdlib_174_4_end
:var_i_stdlib_174_4
:var_i_stdlib_174_4_end
set reg0 0
wmem >var_i_stdlib_174_4 reg0
:while__stdlib_176_4_begin
rmem reg0 >var_i_stdlib_174_4
rmem reg0 reg0
jf reg0 >while__stdlib_176_4_end
rmem reg0 >var_i_stdlib_174_4
add reg0 reg0 1
wmem >var_i_stdlib_174_4 reg0
rmem reg0 >var_i_stdlib_174_4
rmem reg0 reg0
push reg0
call >print_number
set reg0 10
out reg0
jmp >while__stdlib_176_4_begin
:while__stdlib_176_4_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >throw_not_ready_end
:throw_not_ready
pop reg7
push reg7
jmp >var__signed_int_16_10_end
:var__signed_int_16_10
&h
&i
&s
32
&i
&s
32
&n
&o
&t
32
&r
&e
&a
&d
&y
32
&y
&e
&t
&.
32
&D
&o
&n
&'
&t
32
&u
&s
&e
32
&i
&t
&.
0
:var__signed_int_16_10_end
wmem >var__signed_int_16_10 &T
set reg0 >var__signed_int_16_10
push reg0
call >print
ret
:throw_not_ready_end
set reg0 >throw_not_ready
jmp >s_add_end
:s_add
jmp >var_a_signed_int_19_15_end
:var_a_signed_int_19_15
:fld_a_signed_int_19_15_s
:fld_a_signed_int_19_15_n
:fld_a_signed_int_19_15_to_str
:var_a_signed_int_19_15_end
jmp >var_b_signed_int_19_24_end
:var_b_signed_int_19_24
:fld_b_signed_int_19_24_s
:fld_b_signed_int_19_24_n
:fld_b_signed_int_19_24_to_str
:var_b_signed_int_19_24_end
pop reg7
pop reg0
wmem >fld_b_signed_int_19_24_to_str reg0
pop reg0
wmem >fld_b_signed_int_19_24_n reg0
pop reg0
wmem >fld_b_signed_int_19_24_s reg0
pop reg0
wmem >fld_a_signed_int_19_15_to_str reg0
pop reg0
wmem >fld_a_signed_int_19_15_n reg0
pop reg0
wmem >fld_a_signed_int_19_15_s reg0
push reg7
call >throw_not_ready
set reg0 0
ret
ret
:s_add_end
set reg0 >s_add
jmp >s_subtract_end
:s_subtract
jmp >var_a_signed_int_24_20_end
:var_a_signed_int_24_20
:fld_a_signed_int_24_20_s
:fld_a_signed_int_24_20_n
:fld_a_signed_int_24_20_to_str
:var_a_signed_int_24_20_end
jmp >var_b_signed_int_24_29_end
:var_b_signed_int_24_29
:fld_b_signed_int_24_29_s
:fld_b_signed_int_24_29_n
:fld_b_signed_int_24_29_to_str
:var_b_signed_int_24_29_end
pop reg7
pop reg0
wmem >fld_b_signed_int_24_29_to_str reg0
pop reg0
wmem >fld_b_signed_int_24_29_n reg0
pop reg0
wmem >fld_b_signed_int_24_29_s reg0
pop reg0
wmem >fld_a_signed_int_24_20_to_str reg0
pop reg0
wmem >fld_a_signed_int_24_20_n reg0
pop reg0
wmem >fld_a_signed_int_24_20_s reg0
push reg7
call >throw_not_ready
set reg0 0
ret
ret
:s_subtract_end
set reg0 >s_subtract
jmp >s_multiply_end
:s_multiply
jmp >var_a_signed_int_29_20_end
:var_a_signed_int_29_20
:fld_a_signed_int_29_20_s
:fld_a_signed_int_29_20_n
:fld_a_signed_int_29_20_to_str
:var_a_signed_int_29_20_end
jmp >var_b_signed_int_29_29_end
:var_b_signed_int_29_29
:fld_b_signed_int_29_29_s
:fld_b_signed_int_29_29_n
:fld_b_signed_int_29_29_to_str
:var_b_signed_int_29_29_end
pop reg7
pop reg0
wmem >fld_b_signed_int_29_29_to_str reg0
pop reg0
wmem >fld_b_signed_int_29_29_n reg0
pop reg0
wmem >fld_b_signed_int_29_29_s reg0
pop reg0
wmem >fld_a_signed_int_29_20_to_str reg0
pop reg0
wmem >fld_a_signed_int_29_20_n reg0
pop reg0
wmem >fld_a_signed_int_29_20_s reg0
push reg7
call >throw_not_ready
set reg0 0
ret
ret
:s_multiply_end
set reg0 >s_multiply
jmp >s_divide_end
:s_divide
jmp >var_a_signed_int_34_18_end
:var_a_signed_int_34_18
:fld_a_signed_int_34_18_s
:fld_a_signed_int_34_18_n
:fld_a_signed_int_34_18_to_str
:var_a_signed_int_34_18_end
jmp >var_b_signed_int_34_27_end
:var_b_signed_int_34_27
:fld_b_signed_int_34_27_s
:fld_b_signed_int_34_27_n
:fld_b_signed_int_34_27_to_str
:var_b_signed_int_34_27_end
pop reg7
pop reg0
wmem >fld_b_signed_int_34_27_to_str reg0
pop reg0
wmem >fld_b_signed_int_34_27_n reg0
pop reg0
wmem >fld_b_signed_int_34_27_s reg0
pop reg0
wmem >fld_a_signed_int_34_18_to_str reg0
pop reg0
wmem >fld_a_signed_int_34_18_n reg0
pop reg0
wmem >fld_a_signed_int_34_18_s reg0
push reg7
call >throw_not_ready
set reg0 0
ret
ret
:s_divide_end
set reg0 >s_divide
jmp >var_s_to_str_signed_int_39_0_end
:var_s_to_str_signed_int_39_0
:var_s_to_str_signed_int_39_0_end
jmp >function__signed_int_39_15_end
:function__signed_int_39_15
jmp >var_n_signed_int_39_16_end
:var_n_signed_int_39_16
:fld_n_signed_int_39_16_s
:fld_n_signed_int_39_16_n
:fld_n_signed_int_39_16_to_str
:var_n_signed_int_39_16_end
pop reg7
pop reg0
wmem >fld_n_signed_int_39_16_to_str reg0
pop reg0
wmem >fld_n_signed_int_39_16_n reg0
pop reg0
wmem >fld_n_signed_int_39_16_s reg0
push reg7
jmp >var__signed_int_40_11_end
:var__signed_int_40_11
&E
&M
&P
0
:var__signed_int_40_11_end
wmem >var__signed_int_40_11 &T
set reg0 >var__signed_int_40_11
ret
ret
:function__signed_int_39_15_end
set reg0 >function__signed_int_39_15
wmem >var_s_to_str_signed_int_39_0 reg0
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

