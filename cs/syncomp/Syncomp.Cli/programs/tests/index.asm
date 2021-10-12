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
jmp >emit_escape_sequence_end
:emit_escape_sequence
jmp >var_code_tty_3_30_end
:var_code_tty_3_30
:var_code_tty_3_30_end
pop reg7
pop reg0
wmem >var_code_tty_3_30 reg0
push reg7
jmp >var_str_ptr_tty_4_4_end
:var_str_ptr_tty_4_4
:var_str_ptr_tty_4_4_end
call >alloc
wmem >var_str_ptr_tty_4_4 reg0
rmem reg0 >var_str_ptr_tty_4_4
set reg1 27
wmem reg0 reg1
jmp >var_complete_str_tty_6_4_end
:var_complete_str_tty_6_4
:var_complete_str_tty_6_4_end
rmem reg0 >var_str_ptr_tty_4_4
push reg0
rmem reg0 >var_code_tty_3_30
push reg0
call >str_cat
wmem >var_complete_str_tty_6_4 reg0
rmem reg0 >var_complete_str_tty_6_4
push reg0
call >print
ret
:emit_escape_sequence_end
set reg0 >emit_escape_sequence
jmp >tty_set_green_end
:tty_set_green
pop reg7
push reg7
jmp >var__tty_colors_6_25_end
:var__tty_colors_6_25
&3
&2
&m
0
:var__tty_colors_6_25_end
wmem >var__tty_colors_6_25 &[
set reg0 >var__tty_colors_6_25
push reg0
call >emit_escape_sequence
ret
:tty_set_green_end
set reg0 >tty_set_green
jmp >tty_set_red_end
:tty_set_red
pop reg7
push reg7
jmp >var__tty_colors_11_25_end
:var__tty_colors_11_25
&3
&1
&m
0
:var__tty_colors_11_25_end
wmem >var__tty_colors_11_25 &[
set reg0 >var__tty_colors_11_25
push reg0
call >emit_escape_sequence
ret
:tty_set_red_end
set reg0 >tty_set_red
jmp >tty_reset_end
:tty_reset
pop reg7
push reg7
jmp >var__tty_colors_16_25_end
:var__tty_colors_16_25
&0
&m
0
:var__tty_colors_16_25_end
wmem >var__tty_colors_16_25 &[
set reg0 >var__tty_colors_16_25
push reg0
call >emit_escape_sequence
ret
:tty_reset_end
set reg0 >tty_reset
jmp >var_true_bool_4_0_end
:var_true_bool_4_0
:var_true_bool_4_0_end
set reg0 1
wmem >var_true_bool_4_0 reg0
jmp >var_false_bool_5_0_end
:var_false_bool_5_0
:var_false_bool_5_0_end
set reg0 0
wmem >var_false_bool_5_0 reg0
jmp >var_current_category_testlib_5_0_end
:var_current_category_testlib_5_0
:var_current_category_testlib_5_0_end
jmp >var__testlib_5_26_end
:var__testlib_5_26
0
:var__testlib_5_26_end
wmem >var__testlib_5_26 32
set reg0 >var__testlib_5_26
wmem >var_current_category_testlib_5_0 reg0
jmp >var_current_test_testlib_6_0_end
:var_current_test_testlib_6_0
:var_current_test_testlib_6_0_end
jmp >var_current_before_each_testlib_7_0_end
:var_current_before_each_testlib_7_0
:var_current_before_each_testlib_7_0_end
jmp >function__testlib_7_33_end
:function__testlib_7_33
pop reg7
push reg7
ret
:function__testlib_7_33_end
set reg0 >function__testlib_7_33
wmem >var_current_before_each_testlib_7_0 reg0
jmp >var_current_after_each_testlib_8_0_end
:var_current_after_each_testlib_8_0
:var_current_after_each_testlib_8_0_end
jmp >function__testlib_8_32_end
:function__testlib_8_32
pop reg7
push reg7
ret
:function__testlib_8_32_end
set reg0 >function__testlib_8_32
wmem >var_current_after_each_testlib_8_0 reg0
jmp >category_end
:category
jmp >var_name_testlib_10_18_end
:var_name_testlib_10_18
:var_name_testlib_10_18_end
jmp >var_cat_func_testlib_10_31_end
:var_cat_func_testlib_10_31
:var_cat_func_testlib_10_31_end
pop reg7
pop reg0
wmem >var_cat_func_testlib_10_31 reg0
pop reg0
wmem >var_name_testlib_10_18 reg0
push reg7
rmem reg0 >var_name_testlib_10_18
wmem >var_current_category_testlib_5_0 reg0
rmem reg0 >var_name_testlib_10_18
push reg0
call >println
rmem reg7 >var_cat_func_testlib_10_31
call reg7
ret
:category_end
set reg0 >category
jmp >var_before_each_testlib_27_0_end
:var_before_each_testlib_27_0
:var_before_each_testlib_27_0_end
jmp >function__testlib_27_18_end
:function__testlib_27_18
jmp >var_before_each_func_testlib_27_19_end
:var_before_each_func_testlib_27_19
:var_before_each_func_testlib_27_19_end
pop reg7
pop reg0
wmem >var_before_each_func_testlib_27_19 reg0
push reg7
rmem reg0 >var_before_each_func_testlib_27_19
wmem >var_current_before_each_testlib_7_0 reg0
ret
ret
:function__testlib_27_18_end
set reg0 >function__testlib_27_18
wmem >var_before_each_testlib_27_0 reg0
jmp >var_after_each_testlib_30_0_end
:var_after_each_testlib_30_0
:var_after_each_testlib_30_0_end
jmp >function__testlib_30_17_end
:function__testlib_30_17
jmp >var_after_each_func_testlib_30_18_end
:var_after_each_func_testlib_30_18
:var_after_each_func_testlib_30_18_end
pop reg7
pop reg0
wmem >var_after_each_func_testlib_30_18 reg0
push reg7
rmem reg0 >var_after_each_func_testlib_30_18
wmem >var_current_after_each_testlib_8_0 reg0
ret
ret
:function__testlib_30_17_end
set reg0 >function__testlib_30_17
wmem >var_after_each_testlib_30_0 reg0
jmp >test_end
:test
jmp >var_name_testlib_33_14_end
:var_name_testlib_33_14
:var_name_testlib_33_14_end
jmp >var_test_func_testlib_33_27_end
:var_test_func_testlib_33_27
:var_test_func_testlib_33_27_end
pop reg7
pop reg0
wmem >var_test_func_testlib_33_27 reg0
pop reg0
wmem >var_name_testlib_33_14 reg0
push reg7
rmem reg0 >var_current_before_each_testlib_7_0
jf reg0 >end__testlib_35_4
rmem reg7 >var_current_before_each_testlib_7_0
call reg7
:end__testlib_35_4
rmem reg0 >var_name_testlib_33_14
wmem >var_current_test_testlib_6_0 reg0
rmem reg7 >var_test_func_testlib_33_27
call reg7
rmem reg0 >var_current_after_each_testlib_8_0
jf reg0 >end__testlib_41_4
rmem reg7 >var_current_after_each_testlib_8_0
call reg7
:end__testlib_41_4
ret
:test_end
set reg0 >test
jmp >assert_end
:assert
jmp >var_fact_testlib_47_16_end
:var_fact_testlib_47_16
:var_fact_testlib_47_16_end
pop reg7
pop reg0
wmem >var_fact_testlib_47_16 reg0
push reg7
jmp >var__testlib_48_10_end
:var__testlib_48_10
0
:var__testlib_48_10_end
wmem >var__testlib_48_10 9
set reg0 >var__testlib_48_10
push reg0
call >print
rmem reg0 >var_current_test_testlib_6_0
push reg0
jmp >var__testlib_49_32_end
:var__testlib_49_32
&:
32
0
:var__testlib_49_32_end
wmem >var__testlib_49_32 32
set reg0 >var__testlib_49_32
push reg0
call >str_cat
push reg0
call >print
rmem reg0 >var_fact_testlib_47_16
set reg1 1
eq reg0 reg0 reg1
call >not
jf reg0 >end__testlib_50_4
call >tty_set_red
jmp >var__testlib_53_16_end
:var__testlib_53_16
&A
&I
&L
&E
&D
0
:var__testlib_53_16_end
wmem >var__testlib_53_16 &F
set reg0 >var__testlib_53_16
push reg0
call >println
call >tty_reset
rmem reg0 >var_false_bool_5_0
ret
:end__testlib_50_4
call >tty_set_green
jmp >var__testlib_58_12_end
:var__testlib_58_12
&A
&S
&S
&E
&D
0
:var__testlib_58_12_end
wmem >var__testlib_58_12 &P
set reg0 >var__testlib_58_12
push reg0
call >println
call >tty_reset
rmem reg0 >var_true_bool_4_0
ret
ret
:assert_end
set reg0 >assert
jmp >assert_type_factory_end
:assert_type_factory
jmp >var_left_testlib_72_29_end
:var_left_testlib_72_29
:var_left_testlib_72_29_end
pop reg7
pop reg0
wmem >var_left_testlib_72_29 reg0
push reg7
jmp >var_a_type_backing_testlib_74_4_end
:var_a_type_backing_testlib_74_4
:fld_a_type_backing_testlib_74_4_left
:fld_a_type_backing_testlib_74_4_equal_to
:fld_a_type_backing_testlib_74_4_greater_than
:fld_a_type_backing_testlib_74_4_less_than
:var_a_type_backing_testlib_74_4_end
jmp >var_a_type_testlib_74_4_end
:var_a_type_testlib_74_4
:var_a_type_testlib_74_4_end
wmem >var_a_type_testlib_74_4 >var_a_type_backing_testlib_74_4
rmem reg0 >var_left_testlib_72_29
rmem reg7 >var_a_type_testlib_74_4
add reg7 reg7 1
wmem reg7 reg0
jmp >function__testlib_76_23_end
:function__testlib_76_23
jmp >var_right_testlib_76_24_end
:var_right_testlib_76_24
:var_right_testlib_76_24_end
pop reg7
pop reg0
wmem >var_right_testlib_76_24 reg0
push reg7
jmp >var_result_testlib_78_8_end
:var_result_testlib_78_8
:var_result_testlib_78_8_end
rmem reg0 >var_left_testlib_72_29
rmem reg1 >var_right_testlib_76_24
eq reg0 reg0 reg1
wmem >var_result_testlib_78_8 reg0
rmem reg0 >var_result_testlib_78_8
ret
ret
:function__testlib_76_23_end
set reg0 >function__testlib_76_23
rmem reg7 >var_a_type_testlib_74_4
add reg7 reg7 2
wmem reg7 reg0
jmp >function__testlib_81_27_end
:function__testlib_81_27
jmp >var_right_testlib_81_28_end
:var_right_testlib_81_28
:var_right_testlib_81_28_end
pop reg7
pop reg0
wmem >var_right_testlib_81_28 reg0
push reg7
jmp >var_result_testlib_83_8_end
:var_result_testlib_83_8
:var_result_testlib_83_8_end
rmem reg0 >var_left_testlib_72_29
rmem reg1 >var_right_testlib_81_28
gt reg0 reg0 reg1
wmem >var_result_testlib_83_8 reg0
rmem reg0 >var_result_testlib_83_8
ret
ret
:function__testlib_81_27_end
set reg0 >function__testlib_81_27
rmem reg7 >var_a_type_testlib_74_4
add reg7 reg7 3
wmem reg7 reg0
jmp >function__testlib_86_24_end
:function__testlib_86_24
jmp >var_right_testlib_86_25_end
:var_right_testlib_86_25
:var_right_testlib_86_25_end
pop reg7
pop reg0
wmem >var_right_testlib_86_25 reg0
push reg7
jmp >var_result_testlib_88_8_end
:var_result_testlib_88_8
:var_result_testlib_88_8_end
rmem reg0 >var_left_testlib_72_29
rmem reg1 >var_right_testlib_86_25
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_result_testlib_88_8 reg0
rmem reg0 >var_result_testlib_88_8
ret
ret
:function__testlib_86_24_end
set reg0 >function__testlib_86_24
rmem reg7 >var_a_type_testlib_74_4
add reg7 reg7 4
wmem reg7 reg0
rmem reg0 >var_a_type_testlib_74_4
ret
ret
:assert_type_factory_end
set reg0 >assert_type_factory
jmp >is_end
:is
jmp >var_left_testlib_94_12_end
:var_left_testlib_94_12
:var_left_testlib_94_12_end
pop reg7
pop reg0
wmem >var_left_testlib_94_12 reg0
push reg7
rmem reg0 >var_left_testlib_94_12
push reg0
call >assert_type_factory
ret
ret
:is_end
set reg0 >is
jmp >var__intrinsics_4_9_end
:var__intrinsics_4_9
&n
&t
&r
&i
&n
&s
&i
&c
&s
0
:var__intrinsics_4_9_end
wmem >var__intrinsics_4_9 &i
set reg0 >var__intrinsics_4_9
push reg0
jmp >function__intrinsics_4_23_end
:function__intrinsics_4_23
pop reg7
push reg7
jmp >var__intrinsics_5_9_end
:var__intrinsics_5_9
&q
&u
&a
&l
&i
&t
&y
32
&w
&o
&r
&k
&s
0
:var__intrinsics_5_9_end
wmem >var__intrinsics_5_9 &e
set reg0 >var__intrinsics_5_9
push reg0
jmp >function__intrinsics_5_27_end
:function__intrinsics_5_27
pop reg7
push reg7
set reg0 1
set reg1 1
eq reg0 reg0 reg1
push reg0
call >assert
ret
ret
:function__intrinsics_5_27_end
set reg0 >function__intrinsics_5_27
push reg0
call >test
jmp >var__intrinsics_7_9_end
:var__intrinsics_7_9
&r
&e
&a
&t
&e
&r
32
&t
&h
&a
&n
32
&w
&o
&r
&k
&s
0
:var__intrinsics_7_9_end
wmem >var__intrinsics_7_9 &g
set reg0 >var__intrinsics_7_9
push reg0
jmp >function__intrinsics_7_31_end
:function__intrinsics_7_31
pop reg7
push reg7
set reg0 2
set reg1 1
gt reg0 reg0 reg1
push reg0
call >assert
ret
ret
:function__intrinsics_7_31_end
set reg0 >function__intrinsics_7_31
push reg0
call >test
jmp >var__intrinsics_9_9_end
:var__intrinsics_9_9
&e
&s
&s
32
&t
&h
&a
&n
32
&w
&o
&r
&k
&s
0
:var__intrinsics_9_9_end
wmem >var__intrinsics_9_9 &l
set reg0 >var__intrinsics_9_9
push reg0
jmp >function__intrinsics_9_28_end
:function__intrinsics_9_28
pop reg7
push reg7
set reg0 1
set reg1 2
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
push reg0
call >assert
ret
ret
:function__intrinsics_9_28_end
set reg0 >function__intrinsics_9_28
push reg0
call >test
jmp >var__intrinsics_11_13_end
:var__intrinsics_11_13
&y
&p
&e
&o
&f
0
:var__intrinsics_11_13_end
wmem >var__intrinsics_11_13 &t
set reg0 >var__intrinsics_11_13
push reg0
jmp >function__intrinsics_11_23_end
:function__intrinsics_11_23
pop reg7
push reg7
jmp >var__intrinsics_13_13_end
:var__intrinsics_13_13
&t
&r
&i
&n
&g
32
&w
&o
&r
&k
&s
0
:var__intrinsics_13_13_end
wmem >var__intrinsics_13_13 &s
set reg0 >var__intrinsics_13_13
push reg0
jmp >function__intrinsics_13_29_end
:function__intrinsics_13_29
pop reg7
push reg7
jmp >var_test_intrinsics_14_12_end
:var_test_intrinsics_14_12
:var_test_intrinsics_14_12_end
jmp >var__intrinsics_14_23_end
:var__intrinsics_14_23
&e
&s
&t
0
:var__intrinsics_14_23_end
wmem >var__intrinsics_14_23 &t
set reg0 >var__intrinsics_14_23
wmem >var_test_intrinsics_14_12 reg0
jmp >var___0_0_end
:var___0_0
&t
&r
&i
&n
&g
0
:var___0_0_end
wmem >var___0_0 &s
set reg0 >var___0_0
push reg0
jmp >var__intrinsics_15_43_end
:var__intrinsics_15_43
&t
&r
&i
&n
&g
0
:var__intrinsics_15_43_end
wmem >var__intrinsics_15_43 &s
set reg0 >var__intrinsics_15_43
push reg0
call >str_equal
push reg0
call >assert
ret
:function__intrinsics_13_29_end
set reg0 >function__intrinsics_13_29
push reg0
call >test
jmp >var__intrinsics_18_13_end
:var__intrinsics_18_13
&n
&t
32
&w
&o
&r
&k
&s
0
:var__intrinsics_18_13_end
wmem >var__intrinsics_18_13 &i
set reg0 >var__intrinsics_18_13
push reg0
jmp >function__intrinsics_18_26_end
:function__intrinsics_18_26
pop reg7
push reg7
jmp >var_test_intrinsics_19_12_end
:var_test_intrinsics_19_12
:var_test_intrinsics_19_12_end
set reg0 123
wmem >var_test_intrinsics_19_12 reg0
jmp >var___0_0_end
:var___0_0
&n
&t
0
:var___0_0_end
wmem >var___0_0 &i
set reg0 >var___0_0
push reg0
jmp >var__intrinsics_20_43_end
:var__intrinsics_20_43
&n
&t
0
:var__intrinsics_20_43_end
wmem >var__intrinsics_20_43 &i
set reg0 >var__intrinsics_20_43
push reg0
call >str_equal
push reg0
call >assert
ret
:function__intrinsics_18_26_end
set reg0 >function__intrinsics_18_26
push reg0
call >test
ret
:function__intrinsics_11_23_end
set reg0 >function__intrinsics_11_23
push reg0
call >category
jmp >var__intrinsics_24_13_end
:var__intrinsics_24_13
&a
&s
&t
&i
&n
&g
0
:var__intrinsics_24_13_end
wmem >var__intrinsics_24_13 &c
set reg0 >var__intrinsics_24_13
push reg0
jmp >function__intrinsics_24_24_end
:function__intrinsics_24_24
pop reg7
push reg7
jmp >var__intrinsics_25_13_end
:var__intrinsics_25_13
&a
&s
&t
&i
&n
&g
32
&w
&o
&r
&k
&s
0
:var__intrinsics_25_13_end
wmem >var__intrinsics_25_13 &c
set reg0 >var__intrinsics_25_13
push reg0
jmp >function__intrinsics_25_30_end
:function__intrinsics_25_30
pop reg7
push reg7
jmp >var_test_intrinsics_26_12_end
:var_test_intrinsics_26_12
:var_test_intrinsics_26_12_end
jmp >var__intrinsics_26_23_end
:var__intrinsics_26_23
&e
&s
&t
0
:var__intrinsics_26_23_end
wmem >var__intrinsics_26_23 &t
set reg0 >var__intrinsics_26_23
wmem >var_test_intrinsics_26_12 reg0
jmp >var___0_0_end
:var___0_0
&n
&t
0
:var___0_0_end
wmem >var___0_0 &i
set reg0 >var___0_0
push reg0
jmp >var__intrinsics_27_43_end
:var__intrinsics_27_43
&n
&t
0
:var__intrinsics_27_43_end
wmem >var__intrinsics_27_43 &i
set reg0 >var__intrinsics_27_43
push reg0
call >str_equal
push reg0
call >assert
ret
:function__intrinsics_25_30_end
set reg0 >function__intrinsics_25_30
push reg0
call >test
ret
:function__intrinsics_24_24_end
set reg0 >function__intrinsics_24_24
push reg0
call >category
ret
:function__intrinsics_4_23_end
set reg0 >function__intrinsics_4_23
push reg0
call >category
jmp >var__stdlib_5_9_end
:var__stdlib_5_9
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
:var__stdlib_5_9_end
wmem >var__stdlib_5_9 &s
set reg0 >var__stdlib_5_9
push reg0
jmp >function__stdlib_5_26_end
:function__stdlib_5_26
pop reg7
push reg7
jmp >var_result_stdlib_6_4_end
:var_result_stdlib_6_4
:var_result_stdlib_6_4_end
set reg0 0
wmem >var_result_stdlib_6_4 reg0
jmp >function__stdlib_7_16_end
:function__stdlib_7_16
pop reg7
push reg7
jmp >var__stdlib_7_39_end
:var__stdlib_7_39
&2
&3
0
:var__stdlib_7_39_end
wmem >var__stdlib_7_39 &1
set reg0 >var__stdlib_7_39
push reg0
call >str_len
wmem >var_result_stdlib_6_4 reg0
ret
ret
:function__stdlib_7_16_end
set reg0 >function__stdlib_7_16
push reg0
rmem reg7 >var_before_each_testlib_27_0
call reg7
jmp >var__stdlib_9_9_end
:var__stdlib_9_9
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
:var__stdlib_9_9_end
wmem >var__stdlib_9_9 &s
set reg0 >var__stdlib_9_9
push reg0
jmp >function__stdlib_9_38_end
:function__stdlib_9_38
pop reg7
push reg7
rmem reg0 >var_result_stdlib_6_4
push reg0
call >is
add reg0 reg0 2
rmem reg0 reg0
set reg7 reg0
set reg0 3
push reg0
call reg7
push reg0
call >assert
ret
ret
:function__stdlib_9_38_end
set reg0 >function__stdlib_9_38
push reg0
call >test
ret
:function__stdlib_5_26_end
set reg0 >function__stdlib_5_26
push reg0
call >category
jmp >var__stdlib_14_9_end
:var__stdlib_14_9
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
:var__stdlib_14_9_end
wmem >var__stdlib_14_9 &s
set reg0 >var__stdlib_14_9
push reg0
jmp >function__stdlib_14_28_end
:function__stdlib_14_28
pop reg7
push reg7
jmp >var__stdlib_15_9_end
:var__stdlib_15_9
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
:var__stdlib_15_9_end
wmem >var__stdlib_15_9 &s
set reg0 >var__stdlib_15_9
push reg0
jmp >function__stdlib_15_35_end
:function__stdlib_15_35
pop reg7
push reg7
jmp >var_result_stdlib_16_8_end
:var_result_stdlib_16_8
:var_result_stdlib_16_8_end
jmp >var__stdlib_16_31_end
:var__stdlib_16_31
&2
&3
0
:var__stdlib_16_31_end
wmem >var__stdlib_16_31 &1
set reg0 >var__stdlib_16_31
push reg0
jmp >var__stdlib_16_38_end
:var__stdlib_16_38
&2
&3
0
:var__stdlib_16_38_end
wmem >var__stdlib_16_38 &1
set reg0 >var__stdlib_16_38
push reg0
call >str_equal
wmem >var_result_stdlib_16_8 reg0
rmem reg0 >var_result_stdlib_16_8
push reg0
call >is
add reg0 reg0 2
rmem reg0 reg0
set reg7 reg0
set reg0 1
push reg0
call reg7
push reg0
call >assert
ret
:function__stdlib_15_35_end
set reg0 >function__stdlib_15_35
push reg0
call >test
jmp >var__stdlib_20_9_end
:var__stdlib_20_9
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
:var__stdlib_20_9_end
wmem >var__stdlib_20_9 &s
set reg0 >var__stdlib_20_9
push reg0
jmp >function__stdlib_20_39_end
:function__stdlib_20_39
pop reg7
push reg7
jmp >var_result_stdlib_21_8_end
:var_result_stdlib_21_8
:var_result_stdlib_21_8_end
jmp >var__stdlib_21_31_end
:var__stdlib_21_31
&3
0
:var__stdlib_21_31_end
wmem >var__stdlib_21_31 &2
set reg0 >var__stdlib_21_31
push reg0
jmp >var__stdlib_21_37_end
:var__stdlib_21_37
&2
&3
0
:var__stdlib_21_37_end
wmem >var__stdlib_21_37 &1
set reg0 >var__stdlib_21_37
push reg0
call >str_equal
wmem >var_result_stdlib_21_8 reg0
rmem reg0 >var_result_stdlib_21_8
push reg0
call >is
add reg0 reg0 2
rmem reg0 reg0
set reg7 reg0
set reg0 0
push reg0
call reg7
push reg0
call >assert
ret
:function__stdlib_20_39_end
set reg0 >function__stdlib_20_39
push reg0
call >test
ret
:function__stdlib_14_28_end
set reg0 >function__stdlib_14_28
push reg0
call >category
jmp >var__stdlib_26_9_end
:var__stdlib_26_9
&l
&l
&o
&c
32
&t
&e
&s
&t
&s
0
:var__stdlib_26_9_end
wmem >var__stdlib_26_9 &a
set reg0 >var__stdlib_26_9
push reg0
jmp >function__stdlib_26_24_end
:function__stdlib_26_24
pop reg7
push reg7
jmp >var__stdlib_27_9_end
:var__stdlib_27_9
&e
&t
&u
&r
&n
&e
&d
32
&p
&o
&i
&n
&t
&e
&r
32
&i
&s
32
&n
&o
&t
32
&0
0
:var__stdlib_27_9_end
wmem >var__stdlib_27_9 &r
set reg0 >var__stdlib_27_9
push reg0
jmp >function__stdlib_27_38_end
:function__stdlib_27_38
pop reg7
push reg7
call >alloc
push reg0
call >is
add reg0 reg0 3
rmem reg0 reg0
set reg7 reg0
set reg0 0
push reg0
call reg7
push reg0
call >assert
ret
ret
:function__stdlib_27_38_end
set reg0 >function__stdlib_27_38
push reg0
call >test
ret
:function__stdlib_26_24_end
set reg0 >function__stdlib_26_24
push reg0
call >category
jmp >var__stdlib_32_9_end
:var__stdlib_32_9
&l
&l
&o
&c
&_
&c
&h
&u
&n
&k
32
&t
&e
&s
&t
&s
0
:var__stdlib_32_9_end
wmem >var__stdlib_32_9 &a
set reg0 >var__stdlib_32_9
push reg0
jmp >function__stdlib_32_30_end
:function__stdlib_32_30
pop reg7
push reg7
jmp >var__stdlib_33_9_end
:var__stdlib_33_9
&e
&t
&u
&r
&n
&e
&d
32
&p
&o
&i
&n
&t
&e
&r
32
&i
&s
32
&n
&o
&t
32
&0
0
:var__stdlib_33_9_end
wmem >var__stdlib_33_9 &r
set reg0 >var__stdlib_33_9
push reg0
jmp >function__stdlib_33_38_end
:function__stdlib_33_38
pop reg7
push reg7
set reg0 5
push reg0
call >alloc_chunk
push reg0
call >is
add reg0 reg0 3
rmem reg0 reg0
set reg7 reg0
set reg0 0
push reg0
call reg7
push reg0
call >assert
ret
ret
:function__stdlib_33_38_end
set reg0 >function__stdlib_33_38
push reg0
call >test
ret
:function__stdlib_32_30_end
set reg0 >function__stdlib_32_30
push reg0
call >category
jmp >var__stdlib_38_9_end
:var__stdlib_38_9
&e
&m
&_
&c
&p
32
&t
&e
&s
&t
&s
0
:var__stdlib_38_9_end
wmem >var__stdlib_38_9 &m
set reg0 >var__stdlib_38_9
push reg0
jmp >function__stdlib_38_25_end
:function__stdlib_38_25
pop reg7
push reg7
jmp >var_string_to_copy_stdlib_39_4_end
:var_string_to_copy_stdlib_39_4
:var_string_to_copy_stdlib_39_4_end
jmp >var__stdlib_39_25_end
:var__stdlib_39_25
&e
&s
&t
0
:var__stdlib_39_25_end
wmem >var__stdlib_39_25 &T
set reg0 >var__stdlib_39_25
wmem >var_string_to_copy_stdlib_39_4 reg0
jmp >var_string_ptr_stdlib_40_4_end
:var_string_ptr_stdlib_40_4
:var_string_ptr_stdlib_40_4_end
call >alloc
wmem >var_string_ptr_stdlib_40_4 reg0
rmem reg0 >var_string_to_copy_stdlib_39_4
push reg0
rmem reg0 >var_string_ptr_stdlib_40_4
push reg0
rmem reg0 >var_string_to_copy_stdlib_39_4
push reg0
call >str_len
push reg0
call >mem_cp
jmp >var__stdlib_42_9_end
:var__stdlib_42_9
&t
&r
&i
&n
&g
&s
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
:var__stdlib_42_9_end
wmem >var__stdlib_42_9 &s
set reg0 >var__stdlib_42_9
push reg0
jmp >function__stdlib_42_36_end
:function__stdlib_42_36
pop reg7
push reg7
rmem reg0 >var_string_to_copy_stdlib_39_4
push reg0
rmem reg0 >var_string_ptr_stdlib_40_4
push reg0
call >str_equal
push reg0
call >assert
ret
ret
:function__stdlib_42_36_end
set reg0 >function__stdlib_42_36
push reg0
call >test
ret
:function__stdlib_38_25_end
set reg0 >function__stdlib_38_25
push reg0
call >category
jmp >var__stdlib_47_9_end
:var__stdlib_47_9
&t
&r
&_
&c
&a
&t
32
&t
&e
&s
&t
&s
0
:var__stdlib_47_9_end
wmem >var__stdlib_47_9 &s
set reg0 >var__stdlib_47_9
push reg0
jmp >function__stdlib_47_26_end
:function__stdlib_47_26
pop reg7
push reg7
jmp >var__stdlib_48_9_end
:var__stdlib_48_9
&t
&r
&i
&n
&g
&s
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
&c
&o
&n
&c
&a
&t
&i
&n
&a
&t
&e
&d
0
:var__stdlib_48_9_end
wmem >var__stdlib_48_9 &s
set reg0 >var__stdlib_48_9
push reg0
jmp >function__stdlib_48_43_end
:function__stdlib_48_43
pop reg7
push reg7
jmp >var__stdlib_49_33_end
:var__stdlib_49_33
&2
&3
0
:var__stdlib_49_33_end
wmem >var__stdlib_49_33 &1
set reg0 >var__stdlib_49_33
push reg0
jmp >var__stdlib_49_40_end
:var__stdlib_49_40
&5
&6
0
:var__stdlib_49_40_end
wmem >var__stdlib_49_40 &4
set reg0 >var__stdlib_49_40
push reg0
call >str_cat
push reg0
jmp >var__stdlib_49_48_end
:var__stdlib_49_48
&2
&3
&4
&5
&6
0
:var__stdlib_49_48_end
wmem >var__stdlib_49_48 &1
set reg0 >var__stdlib_49_48
push reg0
call >str_equal
push reg0
call >assert
ret
ret
:function__stdlib_48_43_end
set reg0 >function__stdlib_48_43
push reg0
call >test
ret
:function__stdlib_47_26_end
set reg0 >function__stdlib_47_26
push reg0
call >category
jmp >var__stdlib_53_9_end
:var__stdlib_53_9
&l
&i
&p
&_
&s
&t
&r
32
&t
&e
&s
&t
&s
0
:var__stdlib_53_9_end
wmem >var__stdlib_53_9 &f
set reg0 >var__stdlib_53_9
push reg0
jmp >function__stdlib_53_27_end
:function__stdlib_53_27
pop reg7
push reg7
jmp >var__stdlib_54_9_end
:var__stdlib_54_9
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
&f
&l
&i
&p
&e
&d
0
:var__stdlib_54_9_end
wmem >var__stdlib_54_9 &s
set reg0 >var__stdlib_54_9
push reg0
jmp >function__stdlib_54_36_end
:function__stdlib_54_36
pop reg7
push reg7
jmp >var__stdlib_55_34_end
:var__stdlib_55_34
&2
&3
0
:var__stdlib_55_34_end
wmem >var__stdlib_55_34 &1
set reg0 >var__stdlib_55_34
push reg0
call >flip_str
push reg0
jmp >var__stdlib_55_42_end
:var__stdlib_55_42
&2
&1
0
:var__stdlib_55_42_end
wmem >var__stdlib_55_42 &3
set reg0 >var__stdlib_55_42
push reg0
call >str_equal
push reg0
call >assert
ret
ret
:function__stdlib_54_36_end
set reg0 >function__stdlib_54_36
push reg0
call >test
ret
:function__stdlib_53_27_end
set reg0 >function__stdlib_53_27
push reg0
call >category
jmp >var__stdlib_59_9_end
:var__stdlib_59_9
&n
&t
32
&t
&e
&s
&t
&s
0
:var__stdlib_59_9_end
wmem >var__stdlib_59_9 &i
set reg0 >var__stdlib_59_9
push reg0
jmp >function__stdlib_59_22_end
:function__stdlib_59_22
pop reg7
push reg7
jmp >var__stdlib_60_9_end
:var__stdlib_60_9
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
&c
&o
&n
&v
&e
&r
&t
&e
&d
32
&t
&o
32
&a
&n
32
&i
&n
&t
0
:var__stdlib_60_9_end
wmem >var__stdlib_60_9 &s
set reg0 >var__stdlib_60_9
push reg0
jmp >function__stdlib_60_49_end
:function__stdlib_60_49
pop reg7
push reg7
jmp >var__stdlib_61_22_end
:var__stdlib_61_22
&2
&3
0
:var__stdlib_61_22_end
wmem >var__stdlib_61_22 &1
set reg0 >var__stdlib_61_22
push reg0
call >int
push reg0
call >is
add reg0 reg0 2
rmem reg0 reg0
set reg7 reg0
set reg0 123
push reg0
call reg7
push reg0
call >assert
ret
ret
:function__stdlib_60_49_end
set reg0 >function__stdlib_60_49
push reg0
call >test
ret
:function__stdlib_59_22_end
set reg0 >function__stdlib_59_22
push reg0
call >category
jmp >var__stdlib_65_9_end
:var__stdlib_65_9
&t
&r
&i
&n
&g
32
&t
&e
&s
&t
&s
0
:var__stdlib_65_9_end
wmem >var__stdlib_65_9 &s
set reg0 >var__stdlib_65_9
push reg0
jmp >function__stdlib_65_25_end
:function__stdlib_65_25
pop reg7
push reg7
jmp >var__stdlib_66_9_end
:var__stdlib_66_9
&n
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
&c
&o
&n
&v
&e
&r
&t
&e
&d
32
&t
&o
32
&a
32
&s
&t
&r
&i
&n
&g
0
:var__stdlib_66_9_end
wmem >var__stdlib_66_9 &i
set reg0 >var__stdlib_66_9
push reg0
jmp >function__stdlib_66_48_end
:function__stdlib_66_48
pop reg7
push reg7
set reg0 123
push reg0
call >string
push reg0
jmp >var__stdlib_67_38_end
:var__stdlib_67_38
&2
&3
0
:var__stdlib_67_38_end
wmem >var__stdlib_67_38 &1
set reg0 >var__stdlib_67_38
push reg0
call >str_equal
push reg0
call >assert
ret
ret
:function__stdlib_66_48_end
set reg0 >function__stdlib_66_48
push reg0
call >test
ret
:function__stdlib_65_25_end
set reg0 >function__stdlib_65_25
push reg0
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

