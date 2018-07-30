jmp >int_end
:int
jmp >var_41d18b884523_end
:var_41d18b884523
:var_41d18b884523_end
wmem >var_41d18b884523 reg0
jmp >var_ec7ff584ae15_end
:var_ec7ff584ae15
:var_ec7ff584ae15_end
rmem reg0 >var_41d18b884523
call >flip_str
wmem >var_ec7ff584ae15 reg0
jmp >var_ddaf915fea42_end
:var_ddaf915fea42
:var_ddaf915fea42_end
rmem reg0 >var_ec7ff584ae15
call >str_len
wmem >var_ddaf915fea42 reg0
rmem reg0 >var_ddaf915fea42
set reg1 1
call >subtract
wmem >var_ddaf915fea42 reg0
jmp >var_01e122b578b7_end
:var_01e122b578b7
:var_01e122b578b7_end
set reg0 0
wmem >var_01e122b578b7 reg0
jmp >var_21a84610cc24_end
:var_21a84610cc24
:var_21a84610cc24_end
set reg0 0
wmem >var_21a84610cc24 reg0
:while_bbb39c2b8309_begin
rmem reg0 >var_01e122b578b7
rmem reg1 >var_ddaf915fea42
gt reg0 reg0 reg1
call >not
jf reg0 >while_bbb39c2b8309_end
jmp >var_ec0b9fdcf740_end
:var_ec0b9fdcf740
:var_ec0b9fdcf740_end
rmem reg0 >var_ec7ff584ae15
rmem reg1 >var_01e122b578b7
add reg0 reg0 reg1
wmem >var_ec0b9fdcf740 reg0
rmem reg0 >var_ec0b9fdcf740
rmem reg0 reg0
wmem >var_ec0b9fdcf740 reg0
jmp >var_d4c08142ac64_end
:var_d4c08142ac64
:var_d4c08142ac64_end
rmem reg0 >var_ec0b9fdcf740
set reg1 47
gt reg0 reg0 reg1
wmem >var_d4c08142ac64 reg0
jmp >var_22843880daa0_end
:var_22843880daa0
:var_22843880daa0_end
rmem reg0 >var_ec0b9fdcf740
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_22843880daa0 reg0
rmem reg0 >var_d4c08142ac64
rmem reg1 >var_22843880daa0
call >and
jf reg0 >end_b136ce8087fc
jmp >var_710c41538a03_end
:var_710c41538a03
:var_710c41538a03_end
rmem reg0 >var_ec0b9fdcf740
set reg1 48
call >subtract
wmem >var_710c41538a03 reg0
rmem reg0 >var_710c41538a03
call >print_number
set reg0 10
out reg0
jmp >var_26486056372f_end
:var_26486056372f
:var_26486056372f_end
set reg0 0
wmem >var_26486056372f reg0
jmp >var_7f755f62b098_end
:var_7f755f62b098
:var_7f755f62b098_end
rmem reg0 >var_01e122b578b7
set reg1 1
call >subtract
wmem >var_7f755f62b098 reg0
:while_6d2d9470bac2_begin
rmem reg0 >var_26486056372f
rmem reg1 >var_7f755f62b098
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_6d2d9470bac2_end
rmem reg0 >var_710c41538a03
set reg1 10
call >subtract
wmem >var_710c41538a03 reg0
rmem reg0 >var_26486056372f
add reg0 reg0 1
wmem >var_26486056372f reg0
jmp >while_6d2d9470bac2_begin
:while_6d2d9470bac2_end
rmem reg0 >var_21a84610cc24
rmem reg1 >var_710c41538a03
add reg0 reg0 reg1
wmem >var_21a84610cc24 reg0
:end_b136ce8087fc
rmem reg0 >var_01e122b578b7
add reg0 reg0 1
wmem >var_01e122b578b7 reg0
jmp >while_bbb39c2b8309_begin
:while_bbb39c2b8309_end
rmem reg0 >var_21a84610cc24
call >print_number
rmem reg0 >var_21a84610cc24
ret
ret
:int_end
jmp >flip_str_end
:flip_str
jmp >var_29fe436b6496_end
:var_29fe436b6496
:var_29fe436b6496_end
wmem >var_29fe436b6496 reg0
jmp >var_93667d9689a1_end
:var_93667d9689a1
:var_93667d9689a1_end
call >alloc
wmem >var_93667d9689a1 reg0
jmp >var_3d4fa95e6776_end
:var_3d4fa95e6776
:var_3d4fa95e6776_end
rmem reg0 >var_29fe436b6496
call >str_len
wmem >var_3d4fa95e6776 reg0
jmp >var_7b7690cb54f7_end
:var_7b7690cb54f7
:var_7b7690cb54f7_end
set reg0 0
wmem >var_7b7690cb54f7 reg0
:while_66dc98dc4a80_begin
rmem reg0 >var_7b7690cb54f7
rmem reg1 >var_3d4fa95e6776
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_66dc98dc4a80_end
jmp >var_a59c4b18a48d_end
:var_a59c4b18a48d
:var_a59c4b18a48d_end
rmem reg0 >var_29fe436b6496
rmem reg1 >var_7b7690cb54f7
add reg0 reg0 reg1
wmem >var_a59c4b18a48d reg0
rmem reg0 >var_a59c4b18a48d
rmem reg0 reg0
rmem reg0 >var_a59c4b18a48d
rmem reg0 reg0
push reg0
rmem reg0 >var_7b7690cb54f7
add reg0 reg0 1
wmem >var_7b7690cb54f7 reg0
jmp >while_66dc98dc4a80_begin
:while_66dc98dc4a80_end
jmp >var_c9e9ddd11c5e_end
:var_c9e9ddd11c5e
:var_c9e9ddd11c5e_end
pop reg0
wmem >var_c9e9ddd11c5e reg0
set reg0 0
wmem >var_7b7690cb54f7 reg0
:while_cfe2fab9e1b8_begin
rmem reg0 >var_7b7690cb54f7
rmem reg1 >var_3d4fa95e6776
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_cfe2fab9e1b8_end
jmp >var_e2f23544a564_end
:var_e2f23544a564
:var_e2f23544a564_end
rmem reg0 >var_93667d9689a1
rmem reg1 >var_7b7690cb54f7
add reg0 reg0 reg1
wmem >var_e2f23544a564 reg0
rmem reg0 >var_e2f23544a564
rmem reg1 >var_c9e9ddd11c5e
wmem reg0 reg1
rmem reg0 >var_7b7690cb54f7
add reg0 reg0 1
wmem >var_7b7690cb54f7 reg0
pop reg0
wmem >var_c9e9ddd11c5e reg0
jmp >while_cfe2fab9e1b8_begin
:while_cfe2fab9e1b8_end
rmem reg0 >var_c9e9ddd11c5e
rmem reg0 >var_c9e9ddd11c5e
push reg0
rmem reg0 >var_93667d9689a1
ret
ret
:flip_str_end
jmp >str_cat_end
:str_cat
jmp >var_a01935b62e0c_end
:var_a01935b62e0c
:var_a01935b62e0c_end
jmp >var_2e31b624f7dd_end
:var_2e31b624f7dd
:var_2e31b624f7dd_end
wmem >var_a01935b62e0c reg0
wmem >var_2e31b624f7dd reg1
jmp >var_4a834fa6a81e_end
:var_4a834fa6a81e
:var_4a834fa6a81e_end
rmem reg0 >var_a01935b62e0c
call >str_len
wmem >var_4a834fa6a81e reg0
jmp >var_8a5969108e75_end
:var_8a5969108e75
:var_8a5969108e75_end
rmem reg0 >var_2e31b624f7dd
call >str_len
wmem >var_8a5969108e75 reg0
set reg0 10
out reg0
set reg0 10
out reg0
jmp >var_67eda0c2d396_end
:var_67eda0c2d396
:var_67eda0c2d396_end
call >alloc
wmem >var_67eda0c2d396 reg0
rmem reg0 >var_a01935b62e0c
rmem reg1 >var_67eda0c2d396
rmem reg2 >var_4a834fa6a81e
call >mem_cp
jmp >var_6af24703c596_end
:var_6af24703c596
:var_6af24703c596_end
rmem reg0 >var_67eda0c2d396
rmem reg1 >var_4a834fa6a81e
add reg0 reg0 reg1
wmem >var_6af24703c596 reg0
rmem reg0 >var_8a5969108e75
add reg0 reg0 1
wmem >var_8a5969108e75 reg0
rmem reg0 >var_2e31b624f7dd
rmem reg1 >var_6af24703c596
rmem reg2 >var_8a5969108e75
call >mem_cp
rmem reg0 >var_67eda0c2d396
ret
ret
:str_cat_end
jmp >input_end
:input
jmp >var_a13a9910ebb4_end
:var_a13a9910ebb4
:var_a13a9910ebb4_end
set reg0 16384
wmem >var_a13a9910ebb4 reg0
jmp >var_fc9959a5e4ca_end
:var_fc9959a5e4ca
:var_fc9959a5e4ca_end
in reg0
wmem >var_fc9959a5e4ca reg0
jmp >var_a005d517b5c4_end
:var_a005d517b5c4
:var_a005d517b5c4_end
rmem reg0 >var_fc9959a5e4ca
set reg1 10
eq reg0 reg0 reg1
wmem >var_a005d517b5c4 reg0
:while_047e200be6b5_begin
rmem reg0 >var_a005d517b5c4
call >not
rmem reg1 >var_fc9959a5e4ca
call >and
jf reg0 >while_047e200be6b5_end
rmem reg0 >var_a13a9910ebb4
rmem reg1 >var_fc9959a5e4ca
wmem reg0 reg1
rmem reg0 >var_a13a9910ebb4
add reg0 reg0 1
wmem >var_a13a9910ebb4 reg0
in reg0
wmem >var_fc9959a5e4ca reg0
rmem reg0 >var_fc9959a5e4ca
set reg1 10
eq reg0 reg0 reg1
wmem >var_a005d517b5c4 reg0
jmp >while_047e200be6b5_begin
:while_047e200be6b5_end
rmem reg0 >var_a13a9910ebb4
set reg1 0
wmem reg0 reg1
jmp >var_ef40a41c5d44_end
:var_ef40a41c5d44
:var_ef40a41c5d44_end
call >alloc
wmem >var_ef40a41c5d44 reg0
jmp >var_3d2c4c0d7288_end
:var_3d2c4c0d7288
:var_3d2c4c0d7288_end
set reg0 16384
call >str_len
wmem >var_3d2c4c0d7288 reg0
set reg0 16384
rmem reg1 >var_ef40a41c5d44
rmem reg2 >var_3d2c4c0d7288
call >mem_cp
rmem reg0 >var_ef40a41c5d44
ret
ret
:input_end
jmp >alloc_end
:alloc
jmp >var_f679a3d633a2_end
:var_f679a3d633a2
:var_f679a3d633a2_end
set reg0 0
wmem >var_f679a3d633a2 reg0
jmp >var_708b4db6bd88_end
:var_708b4db6bd88
:var_708b4db6bd88_end
set reg0 0
wmem >var_708b4db6bd88 reg0
:while_c5129ba8d39f_begin
rmem reg0 >var_708b4db6bd88
set reg1 6
gt reg0 reg0 reg1
call >not
jf reg0 >while_c5129ba8d39f_end
jmp >var_8c33fe59fa28_end
:var_8c33fe59fa28
:var_8c33fe59fa28_end
rmem reg0 >var_f679a3d633a2
rmem reg0 reg0
wmem >var_8c33fe59fa28 reg0
rmem reg0 >var_8c33fe59fa28
call >not
jf reg0 >end_fdf2f62d9f34
rmem reg0 >var_708b4db6bd88
add reg0 reg0 1
wmem >var_708b4db6bd88 reg0
:end_fdf2f62d9f34
rmem reg0 >var_8c33fe59fa28
jf reg0 >end_b7aa5a40997b
set reg0 0
wmem >var_708b4db6bd88 reg0
:end_b7aa5a40997b
rmem reg0 >var_f679a3d633a2
add reg0 reg0 1
wmem >var_f679a3d633a2 reg0
jmp >while_c5129ba8d39f_begin
:while_c5129ba8d39f_end
rmem reg0 >var_f679a3d633a2
set reg1 1
call >subtract
wmem >var_f679a3d633a2 reg0
rmem reg0 >var_f679a3d633a2
ret
ret
:alloc_end
jmp >mem_cp_end
:mem_cp
jmp >var_6296fd847b7f_end
:var_6296fd847b7f
:var_6296fd847b7f_end
jmp >var_0dd31f46808b_end
:var_0dd31f46808b
:var_0dd31f46808b_end
jmp >var_1ebe614a99a5_end
:var_1ebe614a99a5
:var_1ebe614a99a5_end
wmem >var_6296fd847b7f reg0
wmem >var_0dd31f46808b reg1
wmem >var_1ebe614a99a5 reg2
jmp >var_25c6ecebbf7e_end
:var_25c6ecebbf7e
:var_25c6ecebbf7e_end
set reg0 0
wmem >var_25c6ecebbf7e reg0
:while_bd4d5c1d687e_begin
rmem reg0 >var_25c6ecebbf7e
rmem reg1 >var_1ebe614a99a5
gt reg0 reg0 reg1
call >not
jf reg0 >while_bd4d5c1d687e_end
jmp >var_e6f7be17fc87_end
:var_e6f7be17fc87
:var_e6f7be17fc87_end
rmem reg0 >var_6296fd847b7f
rmem reg1 >var_25c6ecebbf7e
add reg0 reg0 reg1
wmem >var_e6f7be17fc87 reg0
jmp >var_dec4115586ad_end
:var_dec4115586ad
:var_dec4115586ad_end
rmem reg0 >var_0dd31f46808b
rmem reg1 >var_25c6ecebbf7e
add reg0 reg0 reg1
wmem >var_dec4115586ad reg0
rmem reg0 >var_dec4115586ad
rmem reg1 >var_e6f7be17fc87
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_25c6ecebbf7e
add reg0 reg0 1
wmem >var_25c6ecebbf7e reg0
jmp >while_bd4d5c1d687e_begin
:while_bd4d5c1d687e_end
ret
:mem_cp_end
jmp >str_len_end
:str_len
jmp >var_f618bdaa51dc_end
:var_f618bdaa51dc
:var_f618bdaa51dc_end
wmem >var_f618bdaa51dc reg0
jmp >var_e623ce8f10c3_end
:var_e623ce8f10c3
:var_e623ce8f10c3_end
set reg0 0
wmem >var_e623ce8f10c3 reg0
:while_31184a014c55_begin
rmem reg0 >var_f618bdaa51dc
rmem reg0 reg0
jf reg0 >while_31184a014c55_end
rmem reg0 >var_f618bdaa51dc
add reg0 reg0 1
wmem >var_f618bdaa51dc reg0
rmem reg0 >var_e623ce8f10c3
add reg0 reg0 1
wmem >var_e623ce8f10c3 reg0
jmp >while_31184a014c55_begin
:while_31184a014c55_end
rmem reg0 >var_e623ce8f10c3
ret
ret
:str_len_end
jmp >println_end
:println
jmp >var_6a8a5f5e3db8_end
:var_6a8a5f5e3db8
:var_6a8a5f5e3db8_end
wmem >var_6a8a5f5e3db8 reg0
rmem reg0 >var_6a8a5f5e3db8
call >print
set reg0 10
out reg0
ret
:println_end
jmp >print_end
:print
jmp >var_a6ba893cd676_end
:var_a6ba893cd676
:var_a6ba893cd676_end
wmem >var_a6ba893cd676 reg0
:while_5a9c43d89521_begin
rmem reg0 >var_a6ba893cd676
rmem reg0 reg0
jf reg0 >while_5a9c43d89521_end
rmem reg0 >var_a6ba893cd676
rmem reg0 reg0
out reg0
rmem reg0 >var_a6ba893cd676
add reg0 reg0 1
wmem >var_a6ba893cd676 reg0
jmp >while_5a9c43d89521_begin
:while_5a9c43d89521_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_eece6dce6fa6_end
:var_eece6dce6fa6
:var_eece6dce6fa6_end
wmem >var_eece6dce6fa6 reg0
rmem reg0 >var_eece6dce6fa6
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_f998a68ef1d1
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_f998a68ef1d1
jmp >var_bc9274675ba4_end
:var_bc9274675ba4
:var_bc9274675ba4_end
jmp >var_9e7a3a3b2425_end
:var_9e7a3a3b2425
:var_9e7a3a3b2425_end
set reg0 0
wmem >var_9e7a3a3b2425 reg0
:while_9a47dd2f1666_begin
rmem reg0 >var_eece6dce6fa6
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_9a47dd2f1666_end
rmem reg0 >var_eece6dce6fa6
set reg1 10
mod reg0 reg0 reg1
wmem >var_bc9274675ba4 reg0
rmem reg0 >var_bc9274675ba4
rmem reg0 >var_bc9274675ba4
push reg0
rmem reg0 >var_9e7a3a3b2425
add reg0 reg0 1
wmem >var_9e7a3a3b2425 reg0
rmem reg0 >var_eece6dce6fa6
set reg1 10
call >divide
wmem >var_eece6dce6fa6 reg0
jmp >while_9a47dd2f1666_begin
:while_9a47dd2f1666_end
rmem reg0 >var_eece6dce6fa6
set reg1 10
mod reg0 reg0 reg1
wmem >var_bc9274675ba4 reg0
rmem reg0 >var_bc9274675ba4
rmem reg0 >var_bc9274675ba4
push reg0
rmem reg0 >var_9e7a3a3b2425
add reg0 reg0 1
wmem >var_9e7a3a3b2425 reg0
jmp >var_a536c705a38b_end
:var_a536c705a38b
:var_a536c705a38b_end
set reg0 0
wmem >var_a536c705a38b reg0
:while_d2cf9e8dd350_begin
rmem reg0 >var_a536c705a38b
rmem reg1 >var_9e7a3a3b2425
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_d2cf9e8dd350_end
rmem reg0 >var_a536c705a38b
set reg1 1
add reg0 reg0 reg1
wmem >var_a536c705a38b reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_d2cf9e8dd350_begin
:while_d2cf9e8dd350_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_e814cfc753c0_end
:var_e814cfc753c0
:var_e814cfc753c0_end
set reg0 0
wmem >var_e814cfc753c0 reg0
:while_0676e31d3a38_begin
rmem reg0 >var_e814cfc753c0
rmem reg0 reg0
jf reg0 >while_0676e31d3a38_end
rmem reg0 >var_e814cfc753c0
add reg0 reg0 1
wmem >var_e814cfc753c0 reg0
rmem reg0 >var_e814cfc753c0
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_0676e31d3a38_begin
:while_0676e31d3a38_end
ret
:dump_mem_end
call >do_stuff
jmp >do_stuff_end
:do_stuff
call >input
call >int
ret
:do_stuff_end

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

halt
