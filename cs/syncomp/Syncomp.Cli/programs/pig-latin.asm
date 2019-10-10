jmp >str_equal_end
:str_equal
jmp >var_9da578af8ccd_end
:var_9da578af8ccd
:var_9da578af8ccd_end
jmp >var_f2df55846a77_end
:var_f2df55846a77
:var_f2df55846a77_end
wmem >var_9da578af8ccd reg0
wmem >var_f2df55846a77 reg1
jmp >var_54563da5303c_end
:var_54563da5303c
:var_54563da5303c_end
rmem reg0 >var_9da578af8ccd
call >str_len
wmem >var_54563da5303c reg0
jmp >var_9e74c12f17f4_end
:var_9e74c12f17f4
:var_9e74c12f17f4_end
rmem reg0 >var_f2df55846a77
call >str_len
wmem >var_9e74c12f17f4 reg0
rmem reg0 >var_54563da5303c
rmem reg1 >var_9e74c12f17f4
eq reg0 reg0 reg1
call >not
jf reg0 >end_6b49f8ea6aea
set reg0 0
ret
:end_6b49f8ea6aea
jmp >var_f2a45f9e35da_end
:var_f2a45f9e35da
:var_f2a45f9e35da_end
set reg0 0
wmem >var_f2a45f9e35da reg0
:for_f316e8a5f8b9_begin
rmem reg0 >var_f2a45f9e35da
rmem reg1 >var_54563da5303c
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_f316e8a5f8b9_end
jmp >var_8c49feb9dc50_end
:var_8c49feb9dc50
:var_8c49feb9dc50_end
rmem reg0 >var_9da578af8ccd
rmem reg1 >var_f2a45f9e35da
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_8c49feb9dc50 reg0
jmp >var_fc5f6cc85a56_end
:var_fc5f6cc85a56
:var_fc5f6cc85a56_end
rmem reg0 >var_f2df55846a77
rmem reg1 >var_f2a45f9e35da
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_fc5f6cc85a56 reg0
rmem reg0 >var_8c49feb9dc50
rmem reg1 >var_fc5f6cc85a56
eq reg0 reg0 reg1
call >not
jf reg0 >end_094d6230e56f
set reg0 0
ret
:end_094d6230e56f
rmem reg0 >var_f2a45f9e35da
add reg0 reg0 1
wmem >var_f2a45f9e35da reg0
jmp >for_f316e8a5f8b9_begin
:for_f316e8a5f8b9_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_89d651aef99c_end
:var_89d651aef99c
:var_89d651aef99c_end
set reg0 16382
wmem >var_89d651aef99c reg0
:while_2d222471ea77_begin
rmem reg0 >var_89d651aef99c
rmem reg0 reg0
call >not
jf reg0 >while_2d222471ea77_end
rmem reg0 >var_89d651aef99c
set reg1 1
call >subtract
wmem >var_89d651aef99c reg0
jmp >while_2d222471ea77_begin
:while_2d222471ea77_end
rmem reg0 >var_89d651aef99c
set reg1 2
add reg0 reg0 reg1
wmem >var_89d651aef99c reg0
rmem reg0 >var_89d651aef99c
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_2335c1373a9f_end
:var_2335c1373a9f
:var_2335c1373a9f_end
wmem >var_2335c1373a9f reg0
jmp >var_51b7487ec5aa_end
:var_51b7487ec5aa
:var_51b7487ec5aa_end
call >alloc
wmem >var_51b7487ec5aa reg0
jmp >var_6c191d55317a_end
:var_6c191d55317a
:var_6c191d55317a_end
rmem reg0 >var_51b7487ec5aa
rmem reg1 >var_2335c1373a9f
add reg0 reg0 reg1
wmem >var_6c191d55317a reg0
rmem reg0 >var_6c191d55317a
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_51b7487ec5aa
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_d085d5884419_end
:var_d085d5884419
:var_d085d5884419_end
jmp >var_2fae3e59ddb0_end
:var_2fae3e59ddb0
:var_2fae3e59ddb0_end
jmp >var_e093282290de_end
:var_e093282290de
:var_e093282290de_end
wmem >var_d085d5884419 reg0
wmem >var_2fae3e59ddb0 reg1
wmem >var_e093282290de reg2
jmp >var_e08351a38444_end
:var_e08351a38444
:var_e08351a38444_end
set reg0 0
wmem >var_e08351a38444 reg0
:while_505582dbdcb1_begin
rmem reg0 >var_e08351a38444
rmem reg1 >var_e093282290de
gt reg0 reg0 reg1
call >not
jf reg0 >while_505582dbdcb1_end
jmp >var_51599d092200_end
:var_51599d092200
:var_51599d092200_end
rmem reg0 >var_d085d5884419
rmem reg1 >var_e08351a38444
add reg0 reg0 reg1
wmem >var_51599d092200 reg0
jmp >var_a7804515e6f8_end
:var_a7804515e6f8
:var_a7804515e6f8_end
rmem reg0 >var_2fae3e59ddb0
rmem reg1 >var_e08351a38444
add reg0 reg0 reg1
wmem >var_a7804515e6f8 reg0
rmem reg0 >var_a7804515e6f8
rmem reg1 >var_51599d092200
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_e08351a38444
add reg0 reg0 1
wmem >var_e08351a38444 reg0
jmp >while_505582dbdcb1_begin
:while_505582dbdcb1_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_a7c2917aadc3_end
:var_a7c2917aadc3
:var_a7c2917aadc3_end
wmem >var_a7c2917aadc3 reg0
jmp >var_36c7cb1f20fc_end
:var_36c7cb1f20fc
:var_36c7cb1f20fc_end
set reg0 0
wmem >var_36c7cb1f20fc reg0
:while_2f553eefa45b_begin
rmem reg0 >var_a7c2917aadc3
rmem reg0 reg0
jf reg0 >while_2f553eefa45b_end
rmem reg0 >var_a7c2917aadc3
add reg0 reg0 1
wmem >var_a7c2917aadc3 reg0
rmem reg0 >var_36c7cb1f20fc
add reg0 reg0 1
wmem >var_36c7cb1f20fc reg0
jmp >while_2f553eefa45b_begin
:while_2f553eefa45b_end
rmem reg0 >var_36c7cb1f20fc
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_981179b82161_end
:var_981179b82161
:var_981179b82161_end
jmp >var_99bee8e32097_end
:var_99bee8e32097
:var_99bee8e32097_end
wmem >var_981179b82161 reg0
wmem >var_99bee8e32097 reg1
jmp >var_d9eb0da5b63e_end
:var_d9eb0da5b63e
:var_d9eb0da5b63e_end
rmem reg0 >var_981179b82161
call >str_len
wmem >var_d9eb0da5b63e reg0
jmp >var_e1b2a30e9df7_end
:var_e1b2a30e9df7
:var_e1b2a30e9df7_end
rmem reg0 >var_99bee8e32097
call >str_len
wmem >var_e1b2a30e9df7 reg0
jmp >var_9eb033138854_end
:var_9eb033138854
:var_9eb033138854_end
call >alloc
wmem >var_9eb033138854 reg0
rmem reg0 >var_981179b82161
rmem reg1 >var_9eb033138854
rmem reg2 >var_d9eb0da5b63e
call >mem_cp
jmp >var_dc8838a63576_end
:var_dc8838a63576
:var_dc8838a63576_end
rmem reg0 >var_9eb033138854
rmem reg1 >var_d9eb0da5b63e
add reg0 reg0 reg1
wmem >var_dc8838a63576 reg0
rmem reg0 >var_e1b2a30e9df7
add reg0 reg0 1
wmem >var_e1b2a30e9df7 reg0
rmem reg0 >var_99bee8e32097
rmem reg1 >var_dc8838a63576
rmem reg2 >var_e1b2a30e9df7
call >mem_cp
rmem reg0 >var_9eb033138854
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_ce31bf492c0b_end
:var_ce31bf492c0b
:var_ce31bf492c0b_end
wmem >var_ce31bf492c0b reg0
jmp >var_92171039a224_end
:var_92171039a224
:var_92171039a224_end
call >alloc
wmem >var_92171039a224 reg0
jmp >var_1a487ab12db1_end
:var_1a487ab12db1
:var_1a487ab12db1_end
rmem reg0 >var_ce31bf492c0b
call >str_len
wmem >var_1a487ab12db1 reg0
jmp >var_dac848378bdc_end
:var_dac848378bdc
:var_dac848378bdc_end
set reg0 0
wmem >var_dac848378bdc reg0
:while_a2db0ac0b79d_begin
rmem reg0 >var_dac848378bdc
rmem reg1 >var_1a487ab12db1
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_a2db0ac0b79d_end
jmp >var_02ae10bc0532_end
:var_02ae10bc0532
:var_02ae10bc0532_end
rmem reg0 >var_ce31bf492c0b
rmem reg1 >var_dac848378bdc
add reg0 reg0 reg1
wmem >var_02ae10bc0532 reg0
rmem reg0 >var_02ae10bc0532
rmem reg0 reg0
rmem reg0 >var_02ae10bc0532
rmem reg0 reg0
push reg0
rmem reg0 >var_dac848378bdc
add reg0 reg0 1
wmem >var_dac848378bdc reg0
jmp >while_a2db0ac0b79d_begin
:while_a2db0ac0b79d_end
jmp >var_d91091a0e147_end
:var_d91091a0e147
:var_d91091a0e147_end
pop reg0
wmem >var_d91091a0e147 reg0
set reg0 0
wmem >var_dac848378bdc reg0
:while_ba8724c214bc_begin
rmem reg0 >var_dac848378bdc
rmem reg1 >var_1a487ab12db1
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_ba8724c214bc_end
jmp >var_75a028ba42b3_end
:var_75a028ba42b3
:var_75a028ba42b3_end
rmem reg0 >var_92171039a224
rmem reg1 >var_dac848378bdc
add reg0 reg0 reg1
wmem >var_75a028ba42b3 reg0
rmem reg0 >var_75a028ba42b3
rmem reg1 >var_d91091a0e147
wmem reg0 reg1
rmem reg0 >var_dac848378bdc
add reg0 reg0 1
wmem >var_dac848378bdc reg0
pop reg0
wmem >var_d91091a0e147 reg0
jmp >while_ba8724c214bc_begin
:while_ba8724c214bc_end
rmem reg0 >var_d91091a0e147
rmem reg0 >var_d91091a0e147
push reg0
rmem reg0 >var_92171039a224
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_02f48205a074_end
:var_02f48205a074
:var_02f48205a074_end
set reg0 16384
wmem >var_02f48205a074 reg0
jmp >var_ce656dfb7f8b_end
:var_ce656dfb7f8b
:var_ce656dfb7f8b_end
in reg0
wmem >var_ce656dfb7f8b reg0
jmp >var_db24f0c54515_end
:var_db24f0c54515
:var_db24f0c54515_end
rmem reg0 >var_ce656dfb7f8b
set reg1 10
eq reg0 reg0 reg1
wmem >var_db24f0c54515 reg0
:while_dddf92ceb74f_begin
rmem reg0 >var_db24f0c54515
rmem reg1 >var_ce656dfb7f8b
call >and
call >not
jf reg0 >while_dddf92ceb74f_end
rmem reg0 >var_02f48205a074
rmem reg1 >var_ce656dfb7f8b
wmem reg0 reg1
rmem reg0 >var_02f48205a074
add reg0 reg0 1
wmem >var_02f48205a074 reg0
in reg0
wmem >var_ce656dfb7f8b reg0
rmem reg0 >var_ce656dfb7f8b
set reg1 10
eq reg0 reg0 reg1
wmem >var_db24f0c54515 reg0
jmp >while_dddf92ceb74f_begin
:while_dddf92ceb74f_end
rmem reg0 >var_02f48205a074
set reg1 0
wmem reg0 reg1
jmp >var_a8ee27e02574_end
:var_a8ee27e02574
:var_a8ee27e02574_end
call >alloc
wmem >var_a8ee27e02574 reg0
jmp >var_71e8715c6bad_end
:var_71e8715c6bad
:var_71e8715c6bad_end
set reg0 16384
call >str_len
wmem >var_71e8715c6bad reg0
set reg0 16384
rmem reg1 >var_a8ee27e02574
rmem reg2 >var_71e8715c6bad
call >mem_cp
rmem reg0 >var_a8ee27e02574
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_74776ae8a6bd_end
:var_74776ae8a6bd
:var_74776ae8a6bd_end
wmem >var_74776ae8a6bd reg0
:while_41068c121dce_begin
rmem reg0 >var_74776ae8a6bd
rmem reg0 reg0
jf reg0 >while_41068c121dce_end
rmem reg0 >var_74776ae8a6bd
rmem reg0 reg0
out reg0
rmem reg0 >var_74776ae8a6bd
add reg0 reg0 1
wmem >var_74776ae8a6bd reg0
jmp >while_41068c121dce_begin
:while_41068c121dce_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_876e4302ee41_end
:var_876e4302ee41
:var_876e4302ee41_end
wmem >var_876e4302ee41 reg0
rmem reg0 >var_876e4302ee41
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_77c8e96e4c6d_end
:var_77c8e96e4c6d
:var_77c8e96e4c6d_end
wmem >var_77c8e96e4c6d reg0
rmem reg0 >var_77c8e96e4c6d
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_df0a0559a7ff
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_df0a0559a7ff
jmp >var_8e37aa2af433_end
:var_8e37aa2af433
:var_8e37aa2af433_end
jmp >var_4495eef60462_end
:var_4495eef60462
:var_4495eef60462_end
set reg0 0
wmem >var_4495eef60462 reg0
:while_cc16e1f86e6b_begin
rmem reg0 >var_77c8e96e4c6d
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_cc16e1f86e6b_end
rmem reg0 >var_77c8e96e4c6d
set reg1 10
mod reg0 reg0 reg1
wmem >var_8e37aa2af433 reg0
rmem reg0 >var_8e37aa2af433
rmem reg0 >var_8e37aa2af433
push reg0
rmem reg0 >var_4495eef60462
add reg0 reg0 1
wmem >var_4495eef60462 reg0
rmem reg0 >var_77c8e96e4c6d
set reg1 10
call >divide
wmem >var_77c8e96e4c6d reg0
jmp >while_cc16e1f86e6b_begin
:while_cc16e1f86e6b_end
rmem reg0 >var_77c8e96e4c6d
set reg1 10
mod reg0 reg0 reg1
wmem >var_8e37aa2af433 reg0
rmem reg0 >var_8e37aa2af433
rmem reg0 >var_8e37aa2af433
push reg0
rmem reg0 >var_4495eef60462
add reg0 reg0 1
wmem >var_4495eef60462 reg0
jmp >var_74a596e55282_end
:var_74a596e55282
:var_74a596e55282_end
set reg0 0
wmem >var_74a596e55282 reg0
:while_0b67c48e9a08_begin
rmem reg0 >var_74a596e55282
rmem reg1 >var_4495eef60462
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_0b67c48e9a08_end
rmem reg0 >var_74a596e55282
set reg1 1
add reg0 reg0 reg1
wmem >var_74a596e55282 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_0b67c48e9a08_begin
:while_0b67c48e9a08_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_b7b1378b2dda_end
:var_b7b1378b2dda
:var_b7b1378b2dda_end
set reg0 0
wmem >var_b7b1378b2dda reg0
:while_90c6e6ea763f_begin
rmem reg0 >var_b7b1378b2dda
rmem reg0 reg0
jf reg0 >while_90c6e6ea763f_end
rmem reg0 >var_b7b1378b2dda
add reg0 reg0 1
wmem >var_b7b1378b2dda reg0
rmem reg0 >var_b7b1378b2dda
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_90c6e6ea763f_begin
:while_90c6e6ea763f_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_ca64fe64fedf_end
:var_ca64fe64fedf
:var_ca64fe64fedf_end
wmem >var_ca64fe64fedf reg0
jmp >var_5be8e4f4b6e4_end
:var_5be8e4f4b6e4
:var_5be8e4f4b6e4_end
rmem reg0 >var_ca64fe64fedf
call >flip_str
wmem >var_5be8e4f4b6e4 reg0
jmp >var_4e03ff9d5fc7_end
:var_4e03ff9d5fc7
:var_4e03ff9d5fc7_end
rmem reg0 >var_5be8e4f4b6e4
call >str_len
wmem >var_4e03ff9d5fc7 reg0
rmem reg0 >var_4e03ff9d5fc7
set reg1 1
call >subtract
wmem >var_4e03ff9d5fc7 reg0
jmp >var_8d2df482be88_end
:var_8d2df482be88
:var_8d2df482be88_end
set reg0 0
wmem >var_8d2df482be88 reg0
jmp >var_02baef8a7422_end
:var_02baef8a7422
:var_02baef8a7422_end
set reg0 0
wmem >var_02baef8a7422 reg0
:while_8ff0faaa7557_begin
rmem reg0 >var_8d2df482be88
rmem reg1 >var_4e03ff9d5fc7
gt reg0 reg0 reg1
call >not
jf reg0 >while_8ff0faaa7557_end
jmp >var_55b66a26a0fe_end
:var_55b66a26a0fe
:var_55b66a26a0fe_end
rmem reg0 >var_5be8e4f4b6e4
rmem reg1 >var_8d2df482be88
add reg0 reg0 reg1
wmem >var_55b66a26a0fe reg0
rmem reg0 >var_55b66a26a0fe
rmem reg0 reg0
wmem >var_55b66a26a0fe reg0
jmp >var_96752cca4028_end
:var_96752cca4028
:var_96752cca4028_end
rmem reg0 >var_55b66a26a0fe
set reg1 47
gt reg0 reg0 reg1
wmem >var_96752cca4028 reg0
jmp >var_ca571e4226b0_end
:var_ca571e4226b0
:var_ca571e4226b0_end
rmem reg0 >var_55b66a26a0fe
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_ca571e4226b0 reg0
rmem reg0 >var_96752cca4028
rmem reg1 >var_ca571e4226b0
call >and
jf reg0 >end_7f687879686a
jmp >var_a79f6698624f_end
:var_a79f6698624f
:var_a79f6698624f_end
rmem reg0 >var_55b66a26a0fe
set reg1 48
call >subtract
wmem >var_a79f6698624f reg0
rmem reg0 >var_a79f6698624f
call >print_number
set reg0 10
out reg0
jmp >var_092ee3157df7_end
:var_092ee3157df7
:var_092ee3157df7_end
set reg0 0
wmem >var_092ee3157df7 reg0
jmp >var_2e3774ce0be3_end
:var_2e3774ce0be3
:var_2e3774ce0be3_end
rmem reg0 >var_8d2df482be88
set reg1 1
call >subtract
wmem >var_2e3774ce0be3 reg0
:while_c068f0dfb99d_begin
rmem reg0 >var_092ee3157df7
rmem reg1 >var_2e3774ce0be3
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_c068f0dfb99d_end
rmem reg0 >var_a79f6698624f
set reg1 10
mult reg0 reg0 reg1
wmem >var_a79f6698624f reg0
rmem reg0 >var_092ee3157df7
add reg0 reg0 1
wmem >var_092ee3157df7 reg0
jmp >while_c068f0dfb99d_begin
:while_c068f0dfb99d_end
rmem reg0 >var_02baef8a7422
rmem reg1 >var_a79f6698624f
add reg0 reg0 reg1
wmem >var_02baef8a7422 reg0
:end_7f687879686a
rmem reg0 >var_8d2df482be88
add reg0 reg0 1
wmem >var_8d2df482be88 reg0
jmp >while_8ff0faaa7557_begin
:while_8ff0faaa7557_end
rmem reg0 >var_02baef8a7422
call >print_number
rmem reg0 >var_02baef8a7422
ret
ret
:int_end
set reg0 >int
jmp >main_end
:main
jmp >var_c6c70eb5f26e_end
:var_c6c70eb5f26e
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
:var_c6c70eb5f26e_end
wmem >var_c6c70eb5f26e &E
set reg0 >var_c6c70eb5f26e
call >print
jmp >var_6c8ea75528f4_end
:var_6c8ea75528f4
:var_6c8ea75528f4_end
call >input
wmem >var_6c8ea75528f4 reg0
rmem reg0 >var_6c8ea75528f4
jmp >var_761e489666bf_end
:var_761e489666bf
&x
&i
&t
0
:var_761e489666bf_end
wmem >var_761e489666bf &e
set reg1 >var_761e489666bf
call >str_equal
jf reg0 >end_1610c25f1288
ret
:end_1610c25f1288
jmp >var_908714d69e80_end
:var_908714d69e80
:var_908714d69e80_end
call >alloc
wmem >var_908714d69e80 reg0
rmem reg0 >var_908714d69e80
rmem reg1 >var_6c8ea75528f4
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_6c8ea75528f4
add reg0 reg0 1
wmem >var_6c8ea75528f4 reg0
rmem reg0 >var_6c8ea75528f4
rmem reg1 >var_908714d69e80
call >str_cat
jmp >var_e245d1326771_end
:var_e245d1326771
&y
0
:var_e245d1326771_end
wmem >var_e245d1326771 &a
set reg1 >var_e245d1326771
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

