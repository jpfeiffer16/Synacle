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
jmp >str_split_end
:str_split
jmp >var_sentence_stdlib_11_19_end
:var_sentence_stdlib_11_19
:var_sentence_stdlib_11_19_end
pop reg7
pop reg0
wmem >var_sentence_stdlib_11_19 reg0
push reg7
jmp >var__stdlib_12_11_end
:var__stdlib_12_11
&e
&s
&t
0
:var__stdlib_12_11_end
wmem >var__stdlib_12_11 &t
set reg0 >var__stdlib_12_11
ret
ret
:str_split_end
set reg0 >str_split
jmp >print_end
:print
jmp >var_str_stdlib_15_15_end
:var_str_stdlib_15_15
:var_str_stdlib_15_15_end
pop reg7
pop reg0
wmem >var_str_stdlib_15_15 reg0
push reg7
jmp >var_str_ptr_stdlib_16_4_end
:var_str_ptr_stdlib_16_4
:var_str_ptr_stdlib_16_4_end
rmem reg0 >var_str_stdlib_15_15
wmem >var_str_ptr_stdlib_16_4 reg0
:while__stdlib_17_4_begin
rmem reg0 >var_str_ptr_stdlib_16_4
rmem reg0 reg0
jf reg0 >while__stdlib_17_4_end
rmem reg0 >var_str_ptr_stdlib_16_4
rmem reg0 reg0
out reg0
rmem reg0 >var_str_ptr_stdlib_16_4
add reg0 reg0 1
wmem >var_str_ptr_stdlib_16_4 reg0
jmp >while__stdlib_17_4_begin
:while__stdlib_17_4_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_str_ptr_stdlib_23_17_end
:var_str_ptr_stdlib_23_17
:var_str_ptr_stdlib_23_17_end
pop reg7
pop reg0
wmem >var_str_ptr_stdlib_23_17 reg0
push reg7
rmem reg0 >var_str_ptr_stdlib_23_17
push reg0
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >str_equal_end
:str_equal
jmp >var_str_a_stdlib_28_19_end
:var_str_a_stdlib_28_19
:var_str_a_stdlib_28_19_end
jmp >var_str_b_stdlib_28_33_end
:var_str_b_stdlib_28_33
:var_str_b_stdlib_28_33_end
pop reg7
pop reg0
wmem >var_str_b_stdlib_28_33 reg0
pop reg0
wmem >var_str_a_stdlib_28_19 reg0
push reg7
jmp >var_a_len_stdlib_29_4_end
:var_a_len_stdlib_29_4
:var_a_len_stdlib_29_4_end
rmem reg0 >var_str_a_stdlib_28_19
push reg0
call >str_len
wmem >var_a_len_stdlib_29_4 reg0
jmp >var_b_len_stdlib_30_4_end
:var_b_len_stdlib_30_4
:var_b_len_stdlib_30_4_end
rmem reg0 >var_str_b_stdlib_28_33
push reg0
call >str_len
wmem >var_b_len_stdlib_30_4 reg0
rmem reg0 >var_a_len_stdlib_29_4
rmem reg1 >var_b_len_stdlib_30_4
eq reg0 reg0 reg1
call >not
jf reg0 >end__stdlib_31_4
set reg0 0
ret
:end__stdlib_31_4
jmp >var_i_stdlib_34_9_end
:var_i_stdlib_34_9
:var_i_stdlib_34_9_end
set reg0 0
wmem >var_i_stdlib_34_9 reg0
:for__stdlib_34_4_begin
rmem reg0 >var_i_stdlib_34_9
rmem reg1 >var_a_len_stdlib_29_4
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for__stdlib_34_4_end
jmp >var_a_val_stdlib_35_8_end
:var_a_val_stdlib_35_8
:var_a_val_stdlib_35_8_end
rmem reg0 >var_str_a_stdlib_28_19
rmem reg1 >var_i_stdlib_34_9
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_a_val_stdlib_35_8 reg0
jmp >var_b_val_stdlib_36_8_end
:var_b_val_stdlib_36_8
:var_b_val_stdlib_36_8_end
rmem reg0 >var_str_b_stdlib_28_33
rmem reg1 >var_i_stdlib_34_9
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_b_val_stdlib_36_8 reg0
rmem reg0 >var_a_val_stdlib_35_8
rmem reg1 >var_b_val_stdlib_36_8
eq reg0 reg0 reg1
call >not
jf reg0 >end__stdlib_37_8
set reg0 0
ret
:end__stdlib_37_8
rmem reg0 >var_i_stdlib_34_9
add reg0 reg0 1
wmem >var_i_stdlib_34_9 reg0
jmp >for__stdlib_34_4_begin
:for__stdlib_34_4_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
pop reg7
push reg7
jmp >var_data_index_stdlib_45_4_end
:var_data_index_stdlib_45_4
:var_data_index_stdlib_45_4_end
set reg0 16382
wmem >var_data_index_stdlib_45_4 reg0
:while__stdlib_46_4_begin
rmem reg0 >var_data_index_stdlib_45_4
rmem reg0 reg0
call >not
jf reg0 >while__stdlib_46_4_end
rmem reg0 >var_data_index_stdlib_45_4
set reg1 1
call >subtract
wmem >var_data_index_stdlib_45_4 reg0
jmp >while__stdlib_46_4_begin
:while__stdlib_46_4_end
rmem reg0 >var_data_index_stdlib_45_4
set reg1 2
add reg0 reg0 reg1
wmem >var_data_index_stdlib_45_4 reg0
rmem reg0 >var_data_index_stdlib_45_4
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_length_stdlib_53_21_end
:var_length_stdlib_53_21
:var_length_stdlib_53_21_end
pop reg7
pop reg0
wmem >var_length_stdlib_53_21 reg0
push reg7
jmp >var_pointer_stdlib_54_4_end
:var_pointer_stdlib_54_4
:var_pointer_stdlib_54_4_end
call >alloc
wmem >var_pointer_stdlib_54_4 reg0
jmp >var_dest_ptr_stdlib_55_4_end
:var_dest_ptr_stdlib_55_4
:var_dest_ptr_stdlib_55_4_end
rmem reg0 >var_pointer_stdlib_54_4
rmem reg1 >var_length_stdlib_53_21
add reg0 reg0 reg1
wmem >var_dest_ptr_stdlib_55_4 reg0
rmem reg0 >var_dest_ptr_stdlib_55_4
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_pointer_stdlib_54_4
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_s_ptr_stdlib_60_16_end
:var_s_ptr_stdlib_60_16
:var_s_ptr_stdlib_60_16_end
jmp >var_d_ptr_stdlib_60_27_end
:var_d_ptr_stdlib_60_27
:var_d_ptr_stdlib_60_27_end
jmp >var_len_stdlib_60_38_end
:var_len_stdlib_60_38
:var_len_stdlib_60_38_end
pop reg7
pop reg0
wmem >var_len_stdlib_60_38 reg0
pop reg0
wmem >var_d_ptr_stdlib_60_27 reg0
pop reg0
wmem >var_s_ptr_stdlib_60_16 reg0
push reg7
jmp >var_current_byte_stdlib_61_4_end
:var_current_byte_stdlib_61_4
:var_current_byte_stdlib_61_4_end
set reg0 0
wmem >var_current_byte_stdlib_61_4 reg0
:while__stdlib_62_4_begin
rmem reg0 >var_current_byte_stdlib_61_4
rmem reg1 >var_len_stdlib_60_38
gt reg0 reg0 reg1
call >not
jf reg0 >while__stdlib_62_4_end
jmp >var_byte_to_write_ptr_stdlib_63_8_end
:var_byte_to_write_ptr_stdlib_63_8
:var_byte_to_write_ptr_stdlib_63_8_end
rmem reg0 >var_s_ptr_stdlib_60_16
rmem reg1 >var_current_byte_stdlib_61_4
add reg0 reg0 reg1
wmem >var_byte_to_write_ptr_stdlib_63_8 reg0
jmp >var_dest_ptr_stdlib_64_8_end
:var_dest_ptr_stdlib_64_8
:var_dest_ptr_stdlib_64_8_end
rmem reg0 >var_d_ptr_stdlib_60_27
rmem reg1 >var_current_byte_stdlib_61_4
add reg0 reg0 reg1
wmem >var_dest_ptr_stdlib_64_8 reg0
rmem reg0 >var_dest_ptr_stdlib_64_8
rmem reg1 >var_byte_to_write_ptr_stdlib_63_8
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_current_byte_stdlib_61_4
add reg0 reg0 1
wmem >var_current_byte_stdlib_61_4 reg0
jmp >while__stdlib_62_4_begin
:while__stdlib_62_4_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_cat_end
:str_cat
jmp >var_str_a_stdlib_70_17_end
:var_str_a_stdlib_70_17
:var_str_a_stdlib_70_17_end
jmp >var_str_b_stdlib_70_31_end
:var_str_b_stdlib_70_31
:var_str_b_stdlib_70_31_end
pop reg7
pop reg0
wmem >var_str_b_stdlib_70_31 reg0
pop reg0
wmem >var_str_a_stdlib_70_17 reg0
push reg7
jmp >var_a_len_stdlib_71_4_end
:var_a_len_stdlib_71_4
:var_a_len_stdlib_71_4_end
rmem reg0 >var_str_a_stdlib_70_17
push reg0
call >str_len
wmem >var_a_len_stdlib_71_4 reg0
jmp >var_b_len_stdlib_72_4_end
:var_b_len_stdlib_72_4
:var_b_len_stdlib_72_4_end
rmem reg0 >var_str_b_stdlib_70_31
push reg0
call >str_len
wmem >var_b_len_stdlib_72_4 reg0
jmp >var_alloc_ptr_stdlib_73_4_end
:var_alloc_ptr_stdlib_73_4
:var_alloc_ptr_stdlib_73_4_end
call >alloc
wmem >var_alloc_ptr_stdlib_73_4 reg0
rmem reg0 >var_str_a_stdlib_70_17
push reg0
rmem reg0 >var_alloc_ptr_stdlib_73_4
push reg0
rmem reg0 >var_a_len_stdlib_71_4
push reg0
call >mem_cp
jmp >var_end_address_stdlib_75_4_end
:var_end_address_stdlib_75_4
:var_end_address_stdlib_75_4_end
rmem reg0 >var_alloc_ptr_stdlib_73_4
rmem reg1 >var_a_len_stdlib_71_4
add reg0 reg0 reg1
wmem >var_end_address_stdlib_75_4 reg0
rmem reg0 >var_b_len_stdlib_72_4
add reg0 reg0 1
wmem >var_b_len_stdlib_72_4 reg0
rmem reg0 >var_str_b_stdlib_70_31
push reg0
rmem reg0 >var_end_address_stdlib_75_4
push reg0
rmem reg0 >var_b_len_stdlib_72_4
push reg0
call >mem_cp
rmem reg0 >var_alloc_ptr_stdlib_73_4
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_str_ptr_stdlib_81_18_end
:var_str_ptr_stdlib_81_18
:var_str_ptr_stdlib_81_18_end
pop reg7
pop reg0
wmem >var_str_ptr_stdlib_81_18 reg0
push reg7
jmp >var_alloc_ptr_stdlib_82_4_end
:var_alloc_ptr_stdlib_82_4
:var_alloc_ptr_stdlib_82_4_end
call >alloc
wmem >var_alloc_ptr_stdlib_82_4 reg0
jmp >var_len_stdlib_83_4_end
:var_len_stdlib_83_4
:var_len_stdlib_83_4_end
rmem reg0 >var_str_ptr_stdlib_81_18
push reg0
call >str_len
wmem >var_len_stdlib_83_4 reg0
jmp >var_index_stdlib_84_4_end
:var_index_stdlib_84_4
:var_index_stdlib_84_4_end
set reg0 0
wmem >var_index_stdlib_84_4 reg0
:while__stdlib_85_4_begin
rmem reg0 >var_index_stdlib_84_4
rmem reg1 >var_len_stdlib_83_4
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_85_4_end
jmp >var_source_index_stdlib_86_8_end
:var_source_index_stdlib_86_8
:var_source_index_stdlib_86_8_end
rmem reg0 >var_str_ptr_stdlib_81_18
rmem reg1 >var_index_stdlib_84_4
add reg0 reg0 reg1
wmem >var_source_index_stdlib_86_8 reg0
rmem reg0 >var_source_index_stdlib_86_8
rmem reg0 reg0
rmem reg0 >var_source_index_stdlib_86_8
rmem reg0 reg0
push reg0
rmem reg0 >var_index_stdlib_84_4
add reg0 reg0 1
wmem >var_index_stdlib_84_4 reg0
jmp >while__stdlib_85_4_begin
:while__stdlib_85_4_end
jmp >var_current_byte_stdlib_91_4_end
:var_current_byte_stdlib_91_4
:var_current_byte_stdlib_91_4_end
pop reg0
wmem >var_current_byte_stdlib_91_4 reg0
set reg0 0
wmem >var_index_stdlib_84_4 reg0
:while__stdlib_93_4_begin
rmem reg0 >var_index_stdlib_84_4
rmem reg1 >var_len_stdlib_83_4
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_93_4_end
jmp >var_dest_index_stdlib_94_8_end
:var_dest_index_stdlib_94_8
:var_dest_index_stdlib_94_8_end
rmem reg0 >var_alloc_ptr_stdlib_82_4
rmem reg1 >var_index_stdlib_84_4
add reg0 reg0 reg1
wmem >var_dest_index_stdlib_94_8 reg0
rmem reg0 >var_dest_index_stdlib_94_8
rmem reg1 >var_current_byte_stdlib_91_4
wmem reg0 reg1
rmem reg0 >var_index_stdlib_84_4
add reg0 reg0 1
wmem >var_index_stdlib_84_4 reg0
pop reg0
wmem >var_current_byte_stdlib_91_4 reg0
jmp >while__stdlib_93_4_begin
:while__stdlib_93_4_end
rmem reg0 >var_current_byte_stdlib_91_4
rmem reg0 >var_current_byte_stdlib_91_4
push reg0
rmem reg0 >var_alloc_ptr_stdlib_82_4
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
pop reg7
push reg7
jmp >var_data_index_stdlib_106_4_end
:var_data_index_stdlib_106_4
:var_data_index_stdlib_106_4_end
set reg0 16384
wmem >var_data_index_stdlib_106_4 reg0
jmp >var_in_char_stdlib_107_4_end
:var_in_char_stdlib_107_4
:var_in_char_stdlib_107_4_end
in reg0
wmem >var_in_char_stdlib_107_4 reg0
jmp >var_is_newline_stdlib_108_4_end
:var_is_newline_stdlib_108_4
:var_is_newline_stdlib_108_4_end
rmem reg0 >var_in_char_stdlib_107_4
set reg1 10
eq reg0 reg0 reg1
wmem >var_is_newline_stdlib_108_4 reg0
:while__stdlib_109_4_begin
rmem reg0 >var_is_newline_stdlib_108_4
rmem reg1 >var_in_char_stdlib_107_4
call >and
call >not
jf reg0 >while__stdlib_109_4_end
rmem reg0 >var_data_index_stdlib_106_4
rmem reg1 >var_in_char_stdlib_107_4
wmem reg0 reg1
rmem reg0 >var_data_index_stdlib_106_4
add reg0 reg0 1
wmem >var_data_index_stdlib_106_4 reg0
in reg0
wmem >var_in_char_stdlib_107_4 reg0
rmem reg0 >var_in_char_stdlib_107_4
set reg1 10
eq reg0 reg0 reg1
wmem >var_is_newline_stdlib_108_4 reg0
jmp >while__stdlib_109_4_begin
:while__stdlib_109_4_end
rmem reg0 >var_data_index_stdlib_106_4
set reg1 0
wmem reg0 reg1
jmp >var_alloc_ptr_stdlib_116_4_end
:var_alloc_ptr_stdlib_116_4
:var_alloc_ptr_stdlib_116_4_end
call >alloc
wmem >var_alloc_ptr_stdlib_116_4 reg0
jmp >var_length_stdlib_117_4_end
:var_length_stdlib_117_4
:var_length_stdlib_117_4_end
set reg0 16384
push reg0
call >str_len
wmem >var_length_stdlib_117_4 reg0
set reg0 16384
push reg0
rmem reg0 >var_alloc_ptr_stdlib_116_4
push reg0
rmem reg0 >var_length_stdlib_117_4
push reg0
call >mem_cp
rmem reg0 >var_alloc_ptr_stdlib_116_4
ret
ret
:input_end
set reg0 >input
jmp >int_end
:int
jmp >var_str_stdlib_122_13_end
:var_str_stdlib_122_13
:var_str_stdlib_122_13_end
pop reg7
pop reg0
wmem >var_str_stdlib_122_13 reg0
push reg7
jmp >var_len_stdlib_123_4_end
:var_len_stdlib_123_4
:var_len_stdlib_123_4_end
rmem reg0 >var_str_stdlib_122_13
push reg0
call >str_len
wmem >var_len_stdlib_123_4 reg0
jmp >var_index_stdlib_124_4_end
:var_index_stdlib_124_4
:var_index_stdlib_124_4_end
set reg0 0
wmem >var_index_stdlib_124_4 reg0
jmp >var_accumulation_stdlib_125_4_end
:var_accumulation_stdlib_125_4
:var_accumulation_stdlib_125_4_end
set reg0 0
wmem >var_accumulation_stdlib_125_4 reg0
:for__stdlib_126_4_begin
rmem reg0 >var_len_stdlib_123_4
set reg1 0
gt reg0 reg0 reg1
jf reg0 >for__stdlib_126_4_end
jmp >var_tens_place_stdlib_128_8_end
:var_tens_place_stdlib_128_8
:var_tens_place_stdlib_128_8_end
set reg0 1
set reg1 10
rmem reg2 >var_len_stdlib_123_4
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
rmem reg1 >var_len_stdlib_123_4
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
wmem >var_tens_place_stdlib_128_8 reg0
jmp >var_diget_stdlib_129_8_end
:var_diget_stdlib_129_8
:var_diget_stdlib_129_8_end
rmem reg0 >var_str_stdlib_122_13
rmem reg1 >var_index_stdlib_124_4
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_diget_stdlib_129_8 reg0
rmem reg0 >var_diget_stdlib_129_8
set reg1 48
call >subtract
wmem >var_diget_stdlib_129_8 reg0
:for__stdlib_131_8_begin
rmem reg0 >var_tens_place_stdlib_128_8
set reg1 0
gt reg0 reg0 reg1
jf reg0 >for__stdlib_131_8_end
rmem reg0 >var_diget_stdlib_129_8
set reg1 10
mult reg0 reg0 reg1
wmem >var_diget_stdlib_129_8 reg0
rmem reg0 >var_tens_place_stdlib_128_8
set reg1 1
call >subtract
wmem >var_tens_place_stdlib_128_8 reg0
jmp >for__stdlib_131_8_begin
:for__stdlib_131_8_end
rmem reg0 >var_accumulation_stdlib_125_4
rmem reg1 >var_diget_stdlib_129_8
add reg0 reg0 reg1
wmem >var_accumulation_stdlib_125_4 reg0
rmem reg0 >var_index_stdlib_124_4
add reg0 reg0 1
wmem >var_index_stdlib_124_4 reg0
rmem reg0 >var_len_stdlib_123_4
set reg1 1
call >subtract
wmem >var_len_stdlib_123_4 reg0
jmp >for__stdlib_126_4_begin
:for__stdlib_126_4_end
rmem reg0 >var_accumulation_stdlib_125_4
ret
ret
:int_end
set reg0 >int
jmp >string_end
:string
jmp >var_num_stdlib_142_16_end
:var_num_stdlib_142_16
:var_num_stdlib_142_16_end
pop reg7
pop reg0
wmem >var_num_stdlib_142_16 reg0
push reg7
jmp >var_charNum_stdlib_143_4_end
:var_charNum_stdlib_143_4
:var_charNum_stdlib_143_4_end
jmp >var_length_stdlib_144_4_end
:var_length_stdlib_144_4
:var_length_stdlib_144_4_end
set reg0 0
wmem >var_length_stdlib_144_4 reg0
:while__stdlib_145_4_begin
rmem reg0 >var_num_stdlib_142_16
set reg1 9
gt reg0 reg0 reg1
jf reg0 >while__stdlib_145_4_end
rmem reg0 >var_num_stdlib_142_16
set reg1 10
mod reg0 reg0 reg1
wmem >var_charNum_stdlib_143_4 reg0
rmem reg0 >var_charNum_stdlib_143_4
rmem reg0 >var_charNum_stdlib_143_4
push reg0
rmem reg0 >var_length_stdlib_144_4
add reg0 reg0 1
wmem >var_length_stdlib_144_4 reg0
rmem reg0 >var_num_stdlib_142_16
set reg1 10
call >divide
wmem >var_num_stdlib_142_16 reg0
jmp >while__stdlib_145_4_begin
:while__stdlib_145_4_end
rmem reg0 >var_num_stdlib_142_16
set reg1 10
mod reg0 reg0 reg1
wmem >var_charNum_stdlib_143_4 reg0
rmem reg0 >var_charNum_stdlib_143_4
rmem reg0 >var_charNum_stdlib_143_4
push reg0
rmem reg0 >var_length_stdlib_144_4
add reg0 reg0 1
wmem >var_length_stdlib_144_4 reg0
jmp >var_stack_index_stdlib_156_4_end
:var_stack_index_stdlib_156_4
:var_stack_index_stdlib_156_4_end
set reg0 0
wmem >var_stack_index_stdlib_156_4 reg0
jmp >var_dest_ptr_stdlib_157_4_end
:var_dest_ptr_stdlib_157_4
:var_dest_ptr_stdlib_157_4_end
call >alloc
wmem >var_dest_ptr_stdlib_157_4 reg0
:while__stdlib_159_4_begin
rmem reg0 >var_stack_index_stdlib_156_4
rmem reg1 >var_length_stdlib_144_4
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while__stdlib_159_4_end
rmem reg0 >var_dest_ptr_stdlib_157_4
rmem reg1 >var_stack_index_stdlib_156_4
add reg0 reg0 reg1
pop reg1
set reg2 48
add reg1 reg1 reg2
wmem reg0 reg1
rmem reg0 >var_stack_index_stdlib_156_4
set reg1 1
add reg0 reg0 reg1
wmem >var_stack_index_stdlib_156_4 reg0
jmp >while__stdlib_159_4_begin
:while__stdlib_159_4_end
rmem reg0 >var_dest_ptr_stdlib_157_4
rmem reg1 >var_stack_index_stdlib_156_4
add reg0 reg0 reg1
set reg1 0
wmem reg0 reg1
rmem reg0 >var_dest_ptr_stdlib_157_4
ret
ret
:string_end
set reg0 >string
jmp >print_number_end
:print_number
jmp >var_num_stdlib_168_22_end
:var_num_stdlib_168_22
:var_num_stdlib_168_22_end
pop reg7
pop reg0
wmem >var_num_stdlib_168_22 reg0
push reg7
rmem reg0 >var_num_stdlib_168_22
push reg0
call >string
push reg0
call >print
ret
:print_number_end
set reg0 >print_number
jmp >print_numberln_end
:print_numberln
jmp >var_num_stdlib_172_24_end
:var_num_stdlib_172_24
:var_num_stdlib_172_24_end
pop reg7
pop reg0
wmem >var_num_stdlib_172_24 reg0
push reg7
rmem reg0 >var_num_stdlib_172_24
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
jmp >var_i_stdlib_178_4_end
:var_i_stdlib_178_4
:var_i_stdlib_178_4_end
set reg0 0
wmem >var_i_stdlib_178_4 reg0
:while__stdlib_180_4_begin
rmem reg0 >var_i_stdlib_178_4
rmem reg0 reg0
jf reg0 >while__stdlib_180_4_end
rmem reg0 >var_i_stdlib_178_4
add reg0 reg0 1
wmem >var_i_stdlib_178_4 reg0
rmem reg0 >var_i_stdlib_178_4
rmem reg0 reg0
push reg0
call >print_number
set reg0 10
out reg0
jmp >while__stdlib_180_4_begin
:while__stdlib_180_4_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >translate_word_end
:translate_word
jmp >var_word_libpig_4_24_end
:var_word_libpig_4_24
:var_word_libpig_4_24_end
pop reg7
pop reg0
wmem >var_word_libpig_4_24 reg0
push reg7
jmp >var_first_letter_libpig_5_2_end
:var_first_letter_libpig_5_2
:var_first_letter_libpig_5_2_end
call >alloc
wmem >var_first_letter_libpig_5_2 reg0
rmem reg0 >var_first_letter_libpig_5_2
rmem reg1 >var_word_libpig_4_24
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_word_libpig_4_24
add reg0 reg0 1
wmem >var_word_libpig_4_24 reg0
rmem reg0 >var_word_libpig_4_24
push reg0
rmem reg0 >var_first_letter_libpig_5_2
push reg0
call >str_cat
push reg0
jmp >var__libpig_10_4_end
:var__libpig_10_4
&y
0
:var__libpig_10_4_end
wmem >var__libpig_10_4 &a
set reg0 >var__libpig_10_4
push reg0
call >str_cat
ret
ret
:translate_word_end
set reg0 >translate_word
jmp >translate_sentence_end
:translate_sentence
jmp >var_sentence_libpig_14_28_end
:var_sentence_libpig_14_28
:var_sentence_libpig_14_28_end
pop reg7
pop reg0
wmem >var_sentence_libpig_14_28 reg0
push reg7
ret
:translate_sentence_end
set reg0 >translate_sentence
jmp >interpret_command_end
:interpret_command
jmp >var_cmd_shell_4_27_end
:var_cmd_shell_4_27
:var_cmd_shell_4_27_end
pop reg7
pop reg0
wmem >var_cmd_shell_4_27 reg0
push reg7
rmem reg0 >var_cmd_shell_4_27
push reg0
jmp >var__shell_5_23_end
:var__shell_5_23
&e
&l
&p
0
:var__shell_5_23_end
wmem >var__shell_5_23 &h
set reg0 >var__shell_5_23
push reg0
call >str_equal
jf reg0 >end__shell_5_4
jmp >var__shell_6_14_end
:var__shell_6_14
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
:var__shell_6_14_end
wmem >var__shell_6_14 &T
set reg0 >var__shell_6_14
push reg0
call >println
:end__shell_5_4
rmem reg0 >var_cmd_shell_4_27
push reg0
jmp >var__shell_9_23_end
:var__shell_9_23
&i
&g
0
:var__shell_9_23_end
wmem >var__shell_9_23 &p
set reg0 >var__shell_9_23
push reg0
call >str_equal
jf reg0 >end__shell_9_4
jmp >var__shell_10_14_end
:var__shell_10_14
&i
&g
32
&>
32
0
:var__shell_10_14_end
wmem >var__shell_10_14 &p
set reg0 >var__shell_10_14
push reg0
call >print
jmp >var_word_shell_11_8_end
:var_word_shell_11_8
:var_word_shell_11_8_end
call >input
wmem >var_word_shell_11_8 reg0
jmp >var_result_shell_12_8_end
:var_result_shell_12_8
:var_result_shell_12_8_end
rmem reg0 >var_word_shell_11_8
push reg0
call >translate_word
wmem >var_result_shell_12_8 reg0
rmem reg0 >var_result_shell_12_8
push reg0
call >println
:end__shell_9_4
ret
:interpret_command_end
set reg0 >interpret_command
jmp >interpret_loop_end
:interpret_loop
pop reg7
push reg7
jmp >var__shell_18_10_end
:var__shell_18_10
32
0
:var__shell_18_10_end
wmem >var__shell_18_10 &>
set reg0 >var__shell_18_10
push reg0
call >print
jmp >var_command_shell_19_4_end
:var_command_shell_19_4
:var_command_shell_19_4_end
call >input
wmem >var_command_shell_19_4 reg0
rmem reg0 >var_command_shell_19_4
push reg0
call >interpret_command
call >interpret_loop
ret
:interpret_loop_end
set reg0 >interpret_loop
call >interpret_loop
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

