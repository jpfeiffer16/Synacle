jmp >str_len_end
:str_len
jmp >var_str_stdlib_1_17_end
:var_str_stdlib_1_17
:var_str_stdlib_1_17_end
pop reg7
pop reg0
wmem >var_str_stdlib_1_17 reg0
push reg7
jmp >var_str_ptr_stdlib_2_2_end
:var_str_ptr_stdlib_2_2
:var_str_ptr_stdlib_2_2_end
rmem reg0 >var_str_stdlib_1_17
wmem >var_str_ptr_stdlib_2_2 reg0
jmp >var_length_stdlib_3_2_end
:var_length_stdlib_3_2
:var_length_stdlib_3_2_end
set reg0 0
wmem >var_length_stdlib_3_2 reg0
:while__stdlib_4_2_begin
rmem reg0 >var_str_ptr_stdlib_2_2
rmem reg0 reg0
jf reg0 >while__stdlib_4_2_end
rmem reg0 >var_str_ptr_stdlib_2_2
add reg0 reg0 1
wmem >var_str_ptr_stdlib_2_2 reg0
rmem reg0 >var_length_stdlib_3_2
add reg0 reg0 1
wmem >var_length_stdlib_3_2 reg0
jmp >while__stdlib_4_2_begin
:while__stdlib_4_2_end
rmem reg0 >var_length_stdlib_3_2
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
jmp >var_str_ptr_stdlib_12_2_end
:var_str_ptr_stdlib_12_2
:var_str_ptr_stdlib_12_2_end
rmem reg0 >var_str_stdlib_11_15
wmem >var_str_ptr_stdlib_12_2 reg0
:while__stdlib_13_2_begin
rmem reg0 >var_str_ptr_stdlib_12_2
rmem reg0 reg0
jf reg0 >while__stdlib_13_2_end
rmem reg0 >var_str_ptr_stdlib_12_2
rmem reg0 reg0
out reg0
rmem reg0 >var_str_ptr_stdlib_12_2
add reg0 reg0 1
wmem >var_str_ptr_stdlib_12_2 reg0
jmp >while__stdlib_13_2_begin
:while__stdlib_13_2_end
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
jmp >var_a_len_stdlib_25_2_end
:var_a_len_stdlib_25_2
:var_a_len_stdlib_25_2_end
rmem reg0 >var_str_a_stdlib_24_19
push reg0
call >str_len
wmem >var_a_len_stdlib_25_2 reg0
jmp >var_b_len_stdlib_26_2_end
:var_b_len_stdlib_26_2
:var_b_len_stdlib_26_2_end
rmem reg0 >var_str_b_stdlib_24_33
push reg0
call >str_len
wmem >var_b_len_stdlib_26_2 reg0
rmem reg0 >var_a_len_stdlib_25_2
rmem reg1 >var_b_len_stdlib_26_2
eq reg0 reg0 reg1
call >not
jf reg0 >end__stdlib_27_2
set reg0 0
ret
:end__stdlib_27_2
jmp >var_i_stdlib_30_7_end
:var_i_stdlib_30_7
:var_i_stdlib_30_7_end
set reg0 0
wmem >var_i_stdlib_30_7 reg0
:for__stdlib_30_2_begin
rmem reg0 >var_i_stdlib_30_7
rmem reg1 >var_a_len_stdlib_25_2
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for__stdlib_30_2_end
jmp >var_a_val_stdlib_31_4_end
:var_a_val_stdlib_31_4
:var_a_val_stdlib_31_4_end
rmem reg0 >var_str_a_stdlib_24_19
rmem reg1 >var_i_stdlib_30_7
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_a_val_stdlib_31_4 reg0
jmp >var_b_val_stdlib_32_4_end
:var_b_val_stdlib_32_4
:var_b_val_stdlib_32_4_end
rmem reg0 >var_str_b_stdlib_24_33
rmem reg1 >var_i_stdlib_30_7
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_b_val_stdlib_32_4 reg0
rmem reg0 >var_a_val_stdlib_31_4
rmem reg1 >var_b_val_stdlib_32_4
eq reg0 reg0 reg1
call >not
jf reg0 >end__stdlib_33_4
set reg0 0
ret
:end__stdlib_33_4
rmem reg0 >var_i_stdlib_30_7
add reg0 reg0 1
wmem >var_i_stdlib_30_7 reg0
jmp >for__stdlib_30_2_begin
:for__stdlib_30_2_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
pop reg7
push reg7
jmp >var_data_index_stdlib_41_2_end
:var_data_index_stdlib_41_2
:var_data_index_stdlib_41_2_end
set reg0 16382
wmem >var_data_index_stdlib_41_2 reg0
:while__stdlib_42_2_begin
rmem reg0 >var_data_index_stdlib_41_2
rmem reg0 reg0
call >not
jf reg0 >while__stdlib_42_2_end
rmem reg0 >var_data_index_stdlib_41_2
set reg1 1
call >subtract
wmem >var_data_index_stdlib_41_2 reg0
jmp >while__stdlib_42_2_begin
:while__stdlib_42_2_end
rmem reg0 >var_data_index_stdlib_41_2
set reg1 2
add reg0 reg0 reg1
wmem >var_data_index_stdlib_41_2 reg0
rmem reg0 >var_data_index_stdlib_41_2
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
jmp >var_pointer_stdlib_50_2_end
:var_pointer_stdlib_50_2
:var_pointer_stdlib_50_2_end
call >alloc
wmem >var_pointer_stdlib_50_2 reg0
jmp >var_dest_ptr_stdlib_51_2_end
:var_dest_ptr_stdlib_51_2
:var_dest_ptr_stdlib_51_2_end
rmem reg0 >var_pointer_stdlib_50_2
rmem reg1 >var_length_stdlib_49_21
add reg0 reg0 reg1
wmem >var_dest_ptr_stdlib_51_2 reg0
rmem reg0 >var_dest_ptr_stdlib_51_2
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_pointer_stdlib_50_2
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
jmp >var_current_byte_stdlib_57_2_end
:var_current_byte_stdlib_57_2
:var_current_byte_stdlib_57_2_end
set reg0 0
wmem >var_current_byte_stdlib_57_2 reg0
:while__stdlib_58_2_begin
rmem reg0 >var_current_byte_stdlib_57_2
rmem reg1 >var_len_stdlib_56_38
gt reg0 reg0 reg1
call >not
jf reg0 >while__stdlib_58_2_end
jmp >var_byte_to_write_ptr_stdlib_59_4_end
:var_byte_to_write_ptr_stdlib_59_4
:var_byte_to_write_ptr_stdlib_59_4_end
rmem reg0 >var_s_ptr_stdlib_56_16
rmem reg1 >var_current_byte_stdlib_57_2
add reg0 reg0 reg1
wmem >var_byte_to_write_ptr_stdlib_59_4 reg0
jmp >var_dest_ptr_stdlib_60_4_end
:var_dest_ptr_stdlib_60_4
:var_dest_ptr_stdlib_60_4_end
rmem reg0 >var_d_ptr_stdlib_56_27
rmem reg1 >var_current_byte_stdlib_57_2
add reg0 reg0 reg1
wmem >var_dest_ptr_stdlib_60_4 reg0
rmem reg0 >var_dest_ptr_stdlib_60_4
rmem reg1 >var_byte_to_write_ptr_stdlib_59_4
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_current_byte_stdlib_57_2
add reg0 reg0 1
wmem >var_current_byte_stdlib_57_2 reg0
jmp >while__stdlib_58_2_begin
:while__stdlib_58_2_end
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
jmp >var_a_len_stdlib_67_2_end
:var_a_len_stdlib_67_2
:var_a_len_stdlib_67_2_end
rmem reg0 >var_str_a_stdlib_66_17
push reg0
call >str_len
wmem >var_a_len_stdlib_67_2 reg0
jmp >var_b_len_stdlib_68_2_end
:var_b_len_stdlib_68_2
:var_b_len_stdlib_68_2_end
rmem reg0 >var_str_b_stdlib_66_31
push reg0
call >str_len
wmem >var_b_len_stdlib_68_2 reg0
jmp >var_alloc_ptr_stdlib_69_2_end
:var_alloc_ptr_stdlib_69_2
:var_alloc_ptr_stdlib_69_2_end
call >alloc
wmem >var_alloc_ptr_stdlib_69_2 reg0
rmem reg0 >var_str_a_stdlib_66_17
push reg0
rmem reg0 >var_alloc_ptr_stdlib_69_2
push reg0
rmem reg0 >var_a_len_stdlib_67_2
push reg0
call >mem_cp
jmp >var_end_address_stdlib_71_2_end
:var_end_address_stdlib_71_2
:var_end_address_stdlib_71_2_end
rmem reg0 >var_alloc_ptr_stdlib_69_2
rmem reg1 >var_a_len_stdlib_67_2
add reg0 reg0 reg1
wmem >var_end_address_stdlib_71_2 reg0
rmem reg0 >var_b_len_stdlib_68_2
add reg0 reg0 1
wmem >var_b_len_stdlib_68_2 reg0
rmem reg0 >var_str_b_stdlib_66_31
push reg0
rmem reg0 >var_end_address_stdlib_71_2
push reg0
rmem reg0 >var_b_len_stdlib_68_2
push reg0
call >mem_cp
rmem reg0 >var_alloc_ptr_stdlib_69_2
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
jmp >var_alloc_ptr_stdlib_78_2_end
:var_alloc_ptr_stdlib_78_2
:var_alloc_ptr_stdlib_78_2_end
call >alloc
wmem >var_alloc_ptr_stdlib_78_2 reg0
jmp >var_len_stdlib_79_2_end
:var_len_stdlib_79_2
:var_len_stdlib_79_2_end
rmem reg0 >var_str_ptr_stdlib_77_18
push reg0
call >str_len
wmem >var_len_stdlib_79_2 reg0
jmp >var_index_stdlib_80_2_end
:var_index_stdlib_80_2
:var_index_stdlib_80_2_end
set reg0 0
wmem >var_index_stdlib_80_2 reg0
:while__stdlib_81_2_begin
rmem reg0 >var_index_stdlib_80_2
rmem reg1 >var_len_stdlib_79_2
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_81_2_end
jmp >var_source_index_stdlib_82_4_end
:var_source_index_stdlib_82_4
:var_source_index_stdlib_82_4_end
rmem reg0 >var_str_ptr_stdlib_77_18
rmem reg1 >var_index_stdlib_80_2
add reg0 reg0 reg1
wmem >var_source_index_stdlib_82_4 reg0
rmem reg0 >var_source_index_stdlib_82_4
rmem reg0 reg0
rmem reg0 >var_source_index_stdlib_82_4
rmem reg0 reg0
push reg0
rmem reg0 >var_index_stdlib_80_2
add reg0 reg0 1
wmem >var_index_stdlib_80_2 reg0
jmp >while__stdlib_81_2_begin
:while__stdlib_81_2_end
jmp >var_current_byte_stdlib_87_2_end
:var_current_byte_stdlib_87_2
:var_current_byte_stdlib_87_2_end
pop reg0
wmem >var_current_byte_stdlib_87_2 reg0
set reg0 0
wmem >var_index_stdlib_80_2 reg0
:while__stdlib_89_2_begin
rmem reg0 >var_index_stdlib_80_2
rmem reg1 >var_len_stdlib_79_2
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_89_2_end
jmp >var_dest_index_stdlib_90_4_end
:var_dest_index_stdlib_90_4
:var_dest_index_stdlib_90_4_end
rmem reg0 >var_alloc_ptr_stdlib_78_2
rmem reg1 >var_index_stdlib_80_2
add reg0 reg0 reg1
wmem >var_dest_index_stdlib_90_4 reg0
rmem reg0 >var_dest_index_stdlib_90_4
rmem reg1 >var_current_byte_stdlib_87_2
wmem reg0 reg1
rmem reg0 >var_index_stdlib_80_2
add reg0 reg0 1
wmem >var_index_stdlib_80_2 reg0
pop reg0
wmem >var_current_byte_stdlib_87_2 reg0
jmp >while__stdlib_89_2_begin
:while__stdlib_89_2_end
rmem reg0 >var_current_byte_stdlib_87_2
rmem reg0 >var_current_byte_stdlib_87_2
push reg0
rmem reg0 >var_alloc_ptr_stdlib_78_2
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
pop reg7
push reg7
jmp >var_data_index_stdlib_102_2_end
:var_data_index_stdlib_102_2
:var_data_index_stdlib_102_2_end
set reg0 16384
wmem >var_data_index_stdlib_102_2 reg0
jmp >var_in_char_stdlib_103_2_end
:var_in_char_stdlib_103_2
:var_in_char_stdlib_103_2_end
in reg0
wmem >var_in_char_stdlib_103_2 reg0
jmp >var_is_newline_stdlib_104_2_end
:var_is_newline_stdlib_104_2
:var_is_newline_stdlib_104_2_end
rmem reg0 >var_in_char_stdlib_103_2
set reg1 10
eq reg0 reg0 reg1
wmem >var_is_newline_stdlib_104_2 reg0
:while__stdlib_105_2_begin
rmem reg0 >var_is_newline_stdlib_104_2
rmem reg1 >var_in_char_stdlib_103_2
call >and
call >not
jf reg0 >while__stdlib_105_2_end
rmem reg0 >var_data_index_stdlib_102_2
rmem reg1 >var_in_char_stdlib_103_2
wmem reg0 reg1
rmem reg0 >var_data_index_stdlib_102_2
add reg0 reg0 1
wmem >var_data_index_stdlib_102_2 reg0
in reg0
wmem >var_in_char_stdlib_103_2 reg0
rmem reg0 >var_in_char_stdlib_103_2
set reg1 10
eq reg0 reg0 reg1
wmem >var_is_newline_stdlib_104_2 reg0
jmp >while__stdlib_105_2_begin
:while__stdlib_105_2_end
rmem reg0 >var_data_index_stdlib_102_2
set reg1 0
wmem reg0 reg1
jmp >var_alloc_ptr_stdlib_112_2_end
:var_alloc_ptr_stdlib_112_2
:var_alloc_ptr_stdlib_112_2_end
call >alloc
wmem >var_alloc_ptr_stdlib_112_2 reg0
jmp >var_length_stdlib_113_2_end
:var_length_stdlib_113_2
:var_length_stdlib_113_2_end
set reg0 16384
push reg0
call >str_len
wmem >var_length_stdlib_113_2 reg0
set reg0 16384
push reg0
rmem reg0 >var_alloc_ptr_stdlib_112_2
push reg0
rmem reg0 >var_length_stdlib_113_2
push reg0
call >mem_cp
rmem reg0 >var_alloc_ptr_stdlib_112_2
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
jmp >var_charNum_stdlib_139_2_end
:var_charNum_stdlib_139_2
:var_charNum_stdlib_139_2_end
jmp >var_length_stdlib_140_2_end
:var_length_stdlib_140_2
:var_length_stdlib_140_2_end
set reg0 0
wmem >var_length_stdlib_140_2 reg0
:while__stdlib_141_2_begin
rmem reg0 >var_num_stdlib_138_16
set reg1 9
gt reg0 reg0 reg1
jf reg0 >while__stdlib_141_2_end
rmem reg0 >var_num_stdlib_138_16
set reg1 10
mod reg0 reg0 reg1
wmem >var_charNum_stdlib_139_2 reg0
rmem reg0 >var_charNum_stdlib_139_2
rmem reg0 >var_charNum_stdlib_139_2
push reg0
rmem reg0 >var_length_stdlib_140_2
add reg0 reg0 1
wmem >var_length_stdlib_140_2 reg0
rmem reg0 >var_num_stdlib_138_16
set reg1 10
call >divide
wmem >var_num_stdlib_138_16 reg0
jmp >while__stdlib_141_2_begin
:while__stdlib_141_2_end
rmem reg0 >var_num_stdlib_138_16
set reg1 10
mod reg0 reg0 reg1
wmem >var_charNum_stdlib_139_2 reg0
rmem reg0 >var_charNum_stdlib_139_2
rmem reg0 >var_charNum_stdlib_139_2
push reg0
rmem reg0 >var_length_stdlib_140_2
add reg0 reg0 1
wmem >var_length_stdlib_140_2 reg0
jmp >var_stack_index_stdlib_152_2_end
:var_stack_index_stdlib_152_2
:var_stack_index_stdlib_152_2_end
set reg0 0
wmem >var_stack_index_stdlib_152_2 reg0
jmp >var_dest_ptr_stdlib_153_2_end
:var_dest_ptr_stdlib_153_2
:var_dest_ptr_stdlib_153_2_end
call >alloc
wmem >var_dest_ptr_stdlib_153_2 reg0
:while__stdlib_155_2_begin
rmem reg0 >var_stack_index_stdlib_152_2
rmem reg1 >var_length_stdlib_140_2
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_155_2_end
rmem reg0 >var_dest_ptr_stdlib_153_2
rmem reg1 >var_stack_index_stdlib_152_2
add reg0 reg0 reg1
pop reg1
set reg2 48
add reg1 reg1 reg2
wmem reg0 reg1
rmem reg0 >var_stack_index_stdlib_152_2
set reg1 1
add reg0 reg0 reg1
wmem >var_stack_index_stdlib_152_2 reg0
jmp >while__stdlib_155_2_begin
:while__stdlib_155_2_end
rmem reg0 >var_dest_ptr_stdlib_153_2
rmem reg1 >var_stack_index_stdlib_152_2
add reg0 reg0 reg1
set reg1 0
wmem reg0 reg1
rmem reg0 >var_dest_ptr_stdlib_153_2
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
jmp >dump_mem_end
:dump_mem
pop reg7
push reg7
jmp >var_i_stdlib_170_2_end
:var_i_stdlib_170_2
:var_i_stdlib_170_2_end
set reg0 0
wmem >var_i_stdlib_170_2 reg0
:while__stdlib_172_2_begin
rmem reg0 >var_i_stdlib_170_2
rmem reg0 reg0
jf reg0 >while__stdlib_172_2_end
rmem reg0 >var_i_stdlib_170_2
add reg0 reg0 1
wmem >var_i_stdlib_170_2 reg0
rmem reg0 >var_i_stdlib_170_2
rmem reg0 reg0
push reg0
call >print_number
set reg0 10
out reg0
jmp >while__stdlib_172_2_begin
:while__stdlib_172_2_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >defer_end
:defer
jmp >var_name_test_3_15_end
:var_name_test_3_15
:var_name_test_3_15_end
jmp >var_cb_test_3_28_end
:var_cb_test_3_28
:var_cb_test_3_28_end
pop reg7
pop reg0
wmem >var_cb_test_3_28 reg0
pop reg0
wmem >var_name_test_3_15 reg0
push reg7
rmem reg7 >var_cb_test_3_28
call reg7
ret
:defer_end
set reg0 >defer
jmp >test_str_end
:test_str
jmp >var_val_test_8_18_end
:var_val_test_8_18
:var_val_test_8_18_end
pop reg7
pop reg0
wmem >var_val_test_8_18 reg0
push reg7
jmp >var__test_10_12_end
:var__test_10_12
&e
&s
&t
0
:var__test_10_12_end
wmem >var__test_10_12 &T
set reg0 >var__test_10_12
push reg0
call >println
rmem reg0 >var_val_test_8_18
ret
ret
:test_str_end
set reg0 >test_str
jmp >twenty_args_end
:twenty_args
jmp >var_one_test_15_4_end
:var_one_test_15_4
:var_one_test_15_4_end
jmp >var_two_test_16_4_end
:var_two_test_16_4
:var_two_test_16_4_end
jmp >var_three_test_17_4_end
:var_three_test_17_4
:var_three_test_17_4_end
jmp >var_four_test_18_4_end
:var_four_test_18_4
:var_four_test_18_4_end
jmp >var_five_test_19_4_end
:var_five_test_19_4
:var_five_test_19_4_end
jmp >var_six_test_20_4_end
:var_six_test_20_4
:var_six_test_20_4_end
jmp >var_seven_test_21_4_end
:var_seven_test_21_4
:var_seven_test_21_4_end
jmp >var_eight_test_22_4_end
:var_eight_test_22_4
:var_eight_test_22_4_end
jmp >var_nine_test_23_4_end
:var_nine_test_23_4
:var_nine_test_23_4_end
jmp >var_ten_test_24_4_end
:var_ten_test_24_4
:var_ten_test_24_4_end
jmp >var_eleven_test_25_4_end
:var_eleven_test_25_4
:var_eleven_test_25_4_end
jmp >var_twelve_test_26_4_end
:var_twelve_test_26_4
:var_twelve_test_26_4_end
jmp >var_thirteen_test_27_4_end
:var_thirteen_test_27_4
:var_thirteen_test_27_4_end
jmp >var_fourteen_test_28_4_end
:var_fourteen_test_28_4
:var_fourteen_test_28_4_end
jmp >var_fifteen_test_29_4_end
:var_fifteen_test_29_4
:var_fifteen_test_29_4_end
jmp >var_sixteen_test_30_4_end
:var_sixteen_test_30_4
:var_sixteen_test_30_4_end
jmp >var_seventeen_test_31_4_end
:var_seventeen_test_31_4
:var_seventeen_test_31_4_end
jmp >var_eighteen_test_32_4_end
:var_eighteen_test_32_4
:var_eighteen_test_32_4_end
jmp >var_nineteen_test_33_4_end
:var_nineteen_test_33_4
:var_nineteen_test_33_4_end
jmp >var_twenty_test_34_4_end
:var_twenty_test_34_4
:var_twenty_test_34_4_end
pop reg7
pop reg0
wmem >var_twenty_test_34_4 reg0
pop reg0
wmem >var_nineteen_test_33_4 reg0
pop reg0
wmem >var_eighteen_test_32_4 reg0
pop reg0
wmem >var_seventeen_test_31_4 reg0
pop reg0
wmem >var_sixteen_test_30_4 reg0
pop reg0
wmem >var_fifteen_test_29_4 reg0
pop reg0
wmem >var_fourteen_test_28_4 reg0
pop reg0
wmem >var_thirteen_test_27_4 reg0
pop reg0
wmem >var_twelve_test_26_4 reg0
pop reg0
wmem >var_eleven_test_25_4 reg0
pop reg0
wmem >var_ten_test_24_4 reg0
pop reg0
wmem >var_nine_test_23_4 reg0
pop reg0
wmem >var_eight_test_22_4 reg0
pop reg0
wmem >var_seven_test_21_4 reg0
pop reg0
wmem >var_six_test_20_4 reg0
pop reg0
wmem >var_five_test_19_4 reg0
pop reg0
wmem >var_four_test_18_4 reg0
pop reg0
wmem >var_three_test_17_4 reg0
pop reg0
wmem >var_two_test_16_4 reg0
pop reg0
wmem >var_one_test_15_4 reg0
push reg7
rmem reg0 >var_one_test_15_4
push reg0
call >println
rmem reg0 >var_two_test_16_4
push reg0
call >println
rmem reg0 >var_three_test_17_4
push reg0
call >println
rmem reg0 >var_four_test_18_4
push reg0
call >println
rmem reg0 >var_five_test_19_4
push reg0
call >println
rmem reg0 >var_six_test_20_4
push reg0
call >println
rmem reg0 >var_seven_test_21_4
push reg0
call >println
rmem reg0 >var_eight_test_22_4
push reg0
call >println
rmem reg0 >var_nine_test_23_4
push reg0
call >println
rmem reg0 >var_ten_test_24_4
push reg0
call >println
rmem reg0 >var_eleven_test_25_4
push reg0
call >println
rmem reg0 >var_twelve_test_26_4
push reg0
call >println
rmem reg0 >var_thirteen_test_27_4
push reg0
call >println
rmem reg0 >var_fourteen_test_28_4
push reg0
call >println
rmem reg0 >var_fifteen_test_29_4
push reg0
call >println
rmem reg0 >var_sixteen_test_30_4
push reg0
call >println
rmem reg0 >var_seventeen_test_31_4
push reg0
call >println
rmem reg0 >var_eighteen_test_32_4
push reg0
call >println
rmem reg0 >var_nineteen_test_33_4
push reg0
call >println
rmem reg0 >var_twenty_test_34_4
push reg0
call >println
ret
:twenty_args_end
set reg0 >twenty_args
jmp >var__test_58_6_end
:var__test_58_6
0
:var__test_58_6_end
wmem >var__test_58_6 &1
set reg0 >var__test_58_6
push reg0
jmp >function__test_58_11_end
:function__test_58_11
pop reg7
push reg7
jmp >var__test_59_10_end
:var__test_59_10
0
:var__test_59_10_end
wmem >var__test_59_10 &2
set reg0 >var__test_59_10
push reg0
jmp >function__test_59_15_end
:function__test_59_15
pop reg7
push reg7
jmp >var__test_60_14_end
:var__test_60_14
0
:var__test_60_14_end
wmem >var__test_60_14 &3
set reg0 >var__test_60_14
push reg0
jmp >function__test_60_19_end
:function__test_60_19
pop reg7
push reg7
jmp >var__test_61_18_end
:var__test_61_18
0
:var__test_61_18_end
wmem >var__test_61_18 &4
set reg0 >var__test_61_18
push reg0
jmp >function__test_61_23_end
:function__test_61_23
pop reg7
push reg7
set reg0 123
push reg0
call >test_str
push reg0
call >test_str
ret
:function__test_61_23_end
set reg0 >function__test_61_23
push reg0
call >defer
ret
:function__test_60_19_end
set reg0 >function__test_60_19
push reg0
call >defer
ret
:function__test_59_15_end
set reg0 >function__test_59_15
push reg0
call >defer
ret
:function__test_58_11_end
set reg0 >function__test_58_11
push reg0
call >defer
jmp >var__test_68_12_end
:var__test_68_12
0
:var__test_68_12_end
wmem >var__test_68_12 &1
set reg0 >var__test_68_12
push reg0
jmp >var__test_68_17_end
:var__test_68_17
0
:var__test_68_17_end
wmem >var__test_68_17 &2
set reg0 >var__test_68_17
push reg0
jmp >var__test_68_22_end
:var__test_68_22
0
:var__test_68_22_end
wmem >var__test_68_22 &3
set reg0 >var__test_68_22
push reg0
jmp >var__test_68_27_end
:var__test_68_27
0
:var__test_68_27_end
wmem >var__test_68_27 &4
set reg0 >var__test_68_27
push reg0
jmp >var__test_68_32_end
:var__test_68_32
0
:var__test_68_32_end
wmem >var__test_68_32 &5
set reg0 >var__test_68_32
push reg0
jmp >var__test_68_37_end
:var__test_68_37
0
:var__test_68_37_end
wmem >var__test_68_37 &6
set reg0 >var__test_68_37
push reg0
jmp >var__test_68_42_end
:var__test_68_42
0
:var__test_68_42_end
wmem >var__test_68_42 &7
set reg0 >var__test_68_42
push reg0
jmp >var__test_68_47_end
:var__test_68_47
0
:var__test_68_47_end
wmem >var__test_68_47 &8
set reg0 >var__test_68_47
push reg0
jmp >var__test_68_52_end
:var__test_68_52
0
:var__test_68_52_end
wmem >var__test_68_52 &9
set reg0 >var__test_68_52
push reg0
jmp >var__test_68_57_end
:var__test_68_57
&0
0
:var__test_68_57_end
wmem >var__test_68_57 &1
set reg0 >var__test_68_57
push reg0
jmp >var__test_68_63_end
:var__test_68_63
&1
0
:var__test_68_63_end
wmem >var__test_68_63 &1
set reg0 >var__test_68_63
push reg0
jmp >var__test_68_69_end
:var__test_68_69
&2
0
:var__test_68_69_end
wmem >var__test_68_69 &1
set reg0 >var__test_68_69
push reg0
jmp >var__test_68_75_end
:var__test_68_75
&3
0
:var__test_68_75_end
wmem >var__test_68_75 &1
set reg0 >var__test_68_75
push reg0
jmp >var__test_68_81_end
:var__test_68_81
&4
0
:var__test_68_81_end
wmem >var__test_68_81 &1
set reg0 >var__test_68_81
push reg0
jmp >var__test_68_87_end
:var__test_68_87
&5
0
:var__test_68_87_end
wmem >var__test_68_87 &1
set reg0 >var__test_68_87
push reg0
jmp >var__test_68_93_end
:var__test_68_93
&6
0
:var__test_68_93_end
wmem >var__test_68_93 &1
set reg0 >var__test_68_93
push reg0
jmp >var__test_68_99_end
:var__test_68_99
&7
0
:var__test_68_99_end
wmem >var__test_68_99 &1
set reg0 >var__test_68_99
push reg0
jmp >var__test_68_105_end
:var__test_68_105
&8
0
:var__test_68_105_end
wmem >var__test_68_105 &1
set reg0 >var__test_68_105
push reg0
jmp >var__test_68_111_end
:var__test_68_111
&9
0
:var__test_68_111_end
wmem >var__test_68_111 &1
set reg0 >var__test_68_111
push reg0
jmp >var__test_68_117_end
:var__test_68_117
&0
0
:var__test_68_117_end
wmem >var__test_68_117 &2
set reg0 >var__test_68_117
push reg0
call >twenty_args
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

