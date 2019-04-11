jmp >str_equal_end
:str_equal
jmp >var_dd6a131ffe60_end
:var_dd6a131ffe60
:var_dd6a131ffe60_end
jmp >var_31f2fb3ed448_end
:var_31f2fb3ed448
:var_31f2fb3ed448_end
wmem >var_dd6a131ffe60 reg0
wmem >var_31f2fb3ed448 reg1
jmp >var_ddcb6d2405ea_end
:var_ddcb6d2405ea
:var_ddcb6d2405ea_end
rmem reg0 >var_dd6a131ffe60
call >str_len
wmem >var_ddcb6d2405ea reg0
jmp >var_0b9e2a754091_end
:var_0b9e2a754091
:var_0b9e2a754091_end
rmem reg0 >var_31f2fb3ed448
call >str_len
wmem >var_0b9e2a754091 reg0
rmem reg0 >var_ddcb6d2405ea
rmem reg1 >var_0b9e2a754091
eq reg0 reg0 reg1
call >not
jf reg0 >end_824f51405c01
set reg0 0
ret
:end_824f51405c01
jmp >var_32e83796777a_end
:var_32e83796777a
:var_32e83796777a_end
set reg0 0
wmem >var_32e83796777a reg0
:for_697aa5d6d682_begin
rmem reg0 >var_32e83796777a
rmem reg1 >var_ddcb6d2405ea
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_697aa5d6d682_end
jmp >var_d37510b4aa3a_end
:var_d37510b4aa3a
:var_d37510b4aa3a_end
rmem reg0 >var_dd6a131ffe60
rmem reg1 >var_32e83796777a
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_d37510b4aa3a reg0
jmp >var_908bf7a010e8_end
:var_908bf7a010e8
:var_908bf7a010e8_end
rmem reg0 >var_31f2fb3ed448
rmem reg1 >var_32e83796777a
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_908bf7a010e8 reg0
rmem reg0 >var_d37510b4aa3a
rmem reg1 >var_908bf7a010e8
eq reg0 reg0 reg1
call >not
jf reg0 >end_e16608603f4f
set reg0 0
ret
:end_e16608603f4f
rmem reg0 >var_32e83796777a
add reg0 reg0 1
wmem >var_32e83796777a reg0
jmp >for_697aa5d6d682_begin
:for_697aa5d6d682_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_1824e7fdb7e3_end
:var_1824e7fdb7e3
:var_1824e7fdb7e3_end
set reg0 16382
wmem >var_1824e7fdb7e3 reg0
:while_2663f618b229_begin
rmem reg0 >var_1824e7fdb7e3
rmem reg0 reg0
call >not
jf reg0 >while_2663f618b229_end
rmem reg0 >var_1824e7fdb7e3
set reg1 1
call >subtract
wmem >var_1824e7fdb7e3 reg0
jmp >while_2663f618b229_begin
:while_2663f618b229_end
rmem reg0 >var_1824e7fdb7e3
set reg1 2
add reg0 reg0 reg1
wmem >var_1824e7fdb7e3 reg0
rmem reg0 >var_1824e7fdb7e3
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_f309c2b22283_end
:var_f309c2b22283
:var_f309c2b22283_end
wmem >var_f309c2b22283 reg0
jmp >var_e4d1e40c7ce6_end
:var_e4d1e40c7ce6
:var_e4d1e40c7ce6_end
call >alloc
wmem >var_e4d1e40c7ce6 reg0
jmp >var_967311c9c7a9_end
:var_967311c9c7a9
:var_967311c9c7a9_end
rmem reg0 >var_e4d1e40c7ce6
rmem reg1 >var_f309c2b22283
add reg0 reg0 reg1
wmem >var_967311c9c7a9 reg0
rmem reg0 >var_967311c9c7a9
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_e4d1e40c7ce6
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_0f2bba896189_end
:var_0f2bba896189
:var_0f2bba896189_end
jmp >var_cf9a4ed74691_end
:var_cf9a4ed74691
:var_cf9a4ed74691_end
jmp >var_adc13b9377d6_end
:var_adc13b9377d6
:var_adc13b9377d6_end
wmem >var_0f2bba896189 reg0
wmem >var_cf9a4ed74691 reg1
wmem >var_adc13b9377d6 reg2
jmp >var_9c28e947cd9e_end
:var_9c28e947cd9e
:var_9c28e947cd9e_end
set reg0 0
wmem >var_9c28e947cd9e reg0
:while_737422a9779e_begin
rmem reg0 >var_9c28e947cd9e
rmem reg1 >var_adc13b9377d6
gt reg0 reg0 reg1
call >not
jf reg0 >while_737422a9779e_end
jmp >var_f35f6d919abf_end
:var_f35f6d919abf
:var_f35f6d919abf_end
rmem reg0 >var_0f2bba896189
rmem reg1 >var_9c28e947cd9e
add reg0 reg0 reg1
wmem >var_f35f6d919abf reg0
jmp >var_9d543fa09c08_end
:var_9d543fa09c08
:var_9d543fa09c08_end
rmem reg0 >var_cf9a4ed74691
rmem reg1 >var_9c28e947cd9e
add reg0 reg0 reg1
wmem >var_9d543fa09c08 reg0
rmem reg0 >var_9d543fa09c08
rmem reg1 >var_f35f6d919abf
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_9c28e947cd9e
add reg0 reg0 1
wmem >var_9c28e947cd9e reg0
jmp >while_737422a9779e_begin
:while_737422a9779e_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_bb47f47dbdab_end
:var_bb47f47dbdab
:var_bb47f47dbdab_end
wmem >var_bb47f47dbdab reg0
jmp >var_b208300badc6_end
:var_b208300badc6
:var_b208300badc6_end
set reg0 0
wmem >var_b208300badc6 reg0
:while_f83c267c0b1b_begin
rmem reg0 >var_bb47f47dbdab
rmem reg0 reg0
jf reg0 >while_f83c267c0b1b_end
rmem reg0 >var_bb47f47dbdab
add reg0 reg0 1
wmem >var_bb47f47dbdab reg0
rmem reg0 >var_b208300badc6
add reg0 reg0 1
wmem >var_b208300badc6 reg0
jmp >while_f83c267c0b1b_begin
:while_f83c267c0b1b_end
rmem reg0 >var_b208300badc6
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_7764cd37e779_end
:var_7764cd37e779
:var_7764cd37e779_end
jmp >var_21b3891a6a05_end
:var_21b3891a6a05
:var_21b3891a6a05_end
wmem >var_7764cd37e779 reg0
wmem >var_21b3891a6a05 reg1
jmp >var_b79b0de133c8_end
:var_b79b0de133c8
:var_b79b0de133c8_end
rmem reg0 >var_7764cd37e779
call >str_len
wmem >var_b79b0de133c8 reg0
jmp >var_085c55451f7c_end
:var_085c55451f7c
:var_085c55451f7c_end
rmem reg0 >var_21b3891a6a05
call >str_len
wmem >var_085c55451f7c reg0
jmp >var_94835534632d_end
:var_94835534632d
:var_94835534632d_end
call >alloc
wmem >var_94835534632d reg0
rmem reg0 >var_7764cd37e779
rmem reg1 >var_94835534632d
rmem reg2 >var_b79b0de133c8
call >mem_cp
jmp >var_2916ec55fae1_end
:var_2916ec55fae1
:var_2916ec55fae1_end
rmem reg0 >var_94835534632d
rmem reg1 >var_b79b0de133c8
add reg0 reg0 reg1
wmem >var_2916ec55fae1 reg0
rmem reg0 >var_085c55451f7c
add reg0 reg0 1
wmem >var_085c55451f7c reg0
rmem reg0 >var_21b3891a6a05
rmem reg1 >var_2916ec55fae1
rmem reg2 >var_085c55451f7c
call >mem_cp
rmem reg0 >var_94835534632d
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_aac4f4fb8b59_end
:var_aac4f4fb8b59
:var_aac4f4fb8b59_end
wmem >var_aac4f4fb8b59 reg0
jmp >var_f3ab88844605_end
:var_f3ab88844605
:var_f3ab88844605_end
call >alloc
wmem >var_f3ab88844605 reg0
jmp >var_c8bf50cf900e_end
:var_c8bf50cf900e
:var_c8bf50cf900e_end
rmem reg0 >var_aac4f4fb8b59
call >str_len
wmem >var_c8bf50cf900e reg0
jmp >var_282b4ded2664_end
:var_282b4ded2664
:var_282b4ded2664_end
set reg0 0
wmem >var_282b4ded2664 reg0
:while_5c6d8cc8cbe1_begin
rmem reg0 >var_282b4ded2664
rmem reg1 >var_c8bf50cf900e
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_5c6d8cc8cbe1_end
jmp >var_895ea7273de5_end
:var_895ea7273de5
:var_895ea7273de5_end
rmem reg0 >var_aac4f4fb8b59
rmem reg1 >var_282b4ded2664
add reg0 reg0 reg1
wmem >var_895ea7273de5 reg0
rmem reg0 >var_895ea7273de5
rmem reg0 reg0
rmem reg0 >var_895ea7273de5
rmem reg0 reg0
push reg0
rmem reg0 >var_282b4ded2664
add reg0 reg0 1
wmem >var_282b4ded2664 reg0
jmp >while_5c6d8cc8cbe1_begin
:while_5c6d8cc8cbe1_end
jmp >var_b3bf1599ea55_end
:var_b3bf1599ea55
:var_b3bf1599ea55_end
pop reg0
wmem >var_b3bf1599ea55 reg0
set reg0 0
wmem >var_282b4ded2664 reg0
:while_1c957d4f249a_begin
rmem reg0 >var_282b4ded2664
rmem reg1 >var_c8bf50cf900e
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_1c957d4f249a_end
jmp >var_b21795cc353e_end
:var_b21795cc353e
:var_b21795cc353e_end
rmem reg0 >var_f3ab88844605
rmem reg1 >var_282b4ded2664
add reg0 reg0 reg1
wmem >var_b21795cc353e reg0
rmem reg0 >var_b21795cc353e
rmem reg1 >var_b3bf1599ea55
wmem reg0 reg1
rmem reg0 >var_282b4ded2664
add reg0 reg0 1
wmem >var_282b4ded2664 reg0
pop reg0
wmem >var_b3bf1599ea55 reg0
jmp >while_1c957d4f249a_begin
:while_1c957d4f249a_end
rmem reg0 >var_b3bf1599ea55
rmem reg0 >var_b3bf1599ea55
push reg0
rmem reg0 >var_f3ab88844605
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_17b037206334_end
:var_17b037206334
:var_17b037206334_end
set reg0 16384
wmem >var_17b037206334 reg0
jmp >var_2123be6a5710_end
:var_2123be6a5710
:var_2123be6a5710_end
in reg0
wmem >var_2123be6a5710 reg0
jmp >var_aaccd249cffc_end
:var_aaccd249cffc
:var_aaccd249cffc_end
rmem reg0 >var_2123be6a5710
set reg1 10
eq reg0 reg0 reg1
wmem >var_aaccd249cffc reg0
:while_ffe700adcf68_begin
rmem reg0 >var_aaccd249cffc
rmem reg1 >var_2123be6a5710
call >and
call >not
jf reg0 >while_ffe700adcf68_end
rmem reg0 >var_17b037206334
rmem reg1 >var_2123be6a5710
wmem reg0 reg1
rmem reg0 >var_17b037206334
add reg0 reg0 1
wmem >var_17b037206334 reg0
in reg0
wmem >var_2123be6a5710 reg0
rmem reg0 >var_2123be6a5710
set reg1 10
eq reg0 reg0 reg1
wmem >var_aaccd249cffc reg0
jmp >while_ffe700adcf68_begin
:while_ffe700adcf68_end
rmem reg0 >var_17b037206334
set reg1 0
wmem reg0 reg1
jmp >var_19872fcbb8e2_end
:var_19872fcbb8e2
:var_19872fcbb8e2_end
call >alloc
wmem >var_19872fcbb8e2 reg0
jmp >var_95bf5b04eba4_end
:var_95bf5b04eba4
:var_95bf5b04eba4_end
set reg0 16384
call >str_len
wmem >var_95bf5b04eba4 reg0
set reg0 16384
rmem reg1 >var_19872fcbb8e2
rmem reg2 >var_95bf5b04eba4
call >mem_cp
rmem reg0 >var_19872fcbb8e2
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_1851a8ac9591_end
:var_1851a8ac9591
:var_1851a8ac9591_end
wmem >var_1851a8ac9591 reg0
:while_93b0b6a772ad_begin
rmem reg0 >var_1851a8ac9591
rmem reg0 reg0
jf reg0 >while_93b0b6a772ad_end
rmem reg0 >var_1851a8ac9591
rmem reg0 reg0
out reg0
rmem reg0 >var_1851a8ac9591
add reg0 reg0 1
wmem >var_1851a8ac9591 reg0
jmp >while_93b0b6a772ad_begin
:while_93b0b6a772ad_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_f1c5010f2939_end
:var_f1c5010f2939
:var_f1c5010f2939_end
wmem >var_f1c5010f2939 reg0
rmem reg0 >var_f1c5010f2939
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_366a16f0be4c_end
:var_366a16f0be4c
:var_366a16f0be4c_end
wmem >var_366a16f0be4c reg0
rmem reg0 >var_366a16f0be4c
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_daf31f8e986a
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_daf31f8e986a
jmp >var_856e9bafa4c7_end
:var_856e9bafa4c7
:var_856e9bafa4c7_end
jmp >var_2114f4ce26ef_end
:var_2114f4ce26ef
:var_2114f4ce26ef_end
set reg0 0
wmem >var_2114f4ce26ef reg0
:while_89877a39db43_begin
rmem reg0 >var_366a16f0be4c
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_89877a39db43_end
rmem reg0 >var_366a16f0be4c
set reg1 10
mod reg0 reg0 reg1
wmem >var_856e9bafa4c7 reg0
rmem reg0 >var_856e9bafa4c7
rmem reg0 >var_856e9bafa4c7
push reg0
rmem reg0 >var_2114f4ce26ef
add reg0 reg0 1
wmem >var_2114f4ce26ef reg0
rmem reg0 >var_366a16f0be4c
set reg1 10
call >divide
wmem >var_366a16f0be4c reg0
jmp >while_89877a39db43_begin
:while_89877a39db43_end
rmem reg0 >var_366a16f0be4c
set reg1 10
mod reg0 reg0 reg1
wmem >var_856e9bafa4c7 reg0
rmem reg0 >var_856e9bafa4c7
rmem reg0 >var_856e9bafa4c7
push reg0
rmem reg0 >var_2114f4ce26ef
add reg0 reg0 1
wmem >var_2114f4ce26ef reg0
jmp >var_dae36485770f_end
:var_dae36485770f
:var_dae36485770f_end
set reg0 0
wmem >var_dae36485770f reg0
:while_727ea1b8b42c_begin
rmem reg0 >var_dae36485770f
rmem reg1 >var_2114f4ce26ef
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_727ea1b8b42c_end
rmem reg0 >var_dae36485770f
set reg1 1
add reg0 reg0 reg1
wmem >var_dae36485770f reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_727ea1b8b42c_begin
:while_727ea1b8b42c_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_8822b9485843_end
:var_8822b9485843
:var_8822b9485843_end
set reg0 0
wmem >var_8822b9485843 reg0
:while_39d0021cfb7f_begin
rmem reg0 >var_8822b9485843
rmem reg0 reg0
jf reg0 >while_39d0021cfb7f_end
rmem reg0 >var_8822b9485843
add reg0 reg0 1
wmem >var_8822b9485843 reg0
rmem reg0 >var_8822b9485843
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_39d0021cfb7f_begin
:while_39d0021cfb7f_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_967010447382_end
:var_967010447382
:var_967010447382_end
wmem >var_967010447382 reg0
jmp >var_4bf841b4ac23_end
:var_4bf841b4ac23
:var_4bf841b4ac23_end
rmem reg0 >var_967010447382
call >flip_str
wmem >var_4bf841b4ac23 reg0
jmp >var_de9c4bdbd17f_end
:var_de9c4bdbd17f
:var_de9c4bdbd17f_end
rmem reg0 >var_4bf841b4ac23
call >str_len
wmem >var_de9c4bdbd17f reg0
rmem reg0 >var_de9c4bdbd17f
set reg1 1
call >subtract
wmem >var_de9c4bdbd17f reg0
jmp >var_9f2256fee6a6_end
:var_9f2256fee6a6
:var_9f2256fee6a6_end
set reg0 0
wmem >var_9f2256fee6a6 reg0
jmp >var_c29ceda3fe20_end
:var_c29ceda3fe20
:var_c29ceda3fe20_end
set reg0 0
wmem >var_c29ceda3fe20 reg0
:while_405b98a5495a_begin
rmem reg0 >var_9f2256fee6a6
rmem reg1 >var_de9c4bdbd17f
gt reg0 reg0 reg1
call >not
jf reg0 >while_405b98a5495a_end
jmp >var_50b069e9fcb6_end
:var_50b069e9fcb6
:var_50b069e9fcb6_end
rmem reg0 >var_4bf841b4ac23
rmem reg1 >var_9f2256fee6a6
add reg0 reg0 reg1
wmem >var_50b069e9fcb6 reg0
rmem reg0 >var_50b069e9fcb6
rmem reg0 reg0
wmem >var_50b069e9fcb6 reg0
jmp >var_fb0d6d34319a_end
:var_fb0d6d34319a
:var_fb0d6d34319a_end
rmem reg0 >var_50b069e9fcb6
set reg1 47
gt reg0 reg0 reg1
wmem >var_fb0d6d34319a reg0
jmp >var_a59b82fc970e_end
:var_a59b82fc970e
:var_a59b82fc970e_end
rmem reg0 >var_50b069e9fcb6
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_a59b82fc970e reg0
rmem reg0 >var_fb0d6d34319a
rmem reg1 >var_a59b82fc970e
call >and
jf reg0 >end_d7120cec0866
jmp >var_bd4ec294f0bb_end
:var_bd4ec294f0bb
:var_bd4ec294f0bb_end
rmem reg0 >var_50b069e9fcb6
set reg1 48
call >subtract
wmem >var_bd4ec294f0bb reg0
rmem reg0 >var_bd4ec294f0bb
call >print_number
set reg0 10
out reg0
jmp >var_7a04fc44b2ce_end
:var_7a04fc44b2ce
:var_7a04fc44b2ce_end
set reg0 0
wmem >var_7a04fc44b2ce reg0
jmp >var_cf8dda6619f8_end
:var_cf8dda6619f8
:var_cf8dda6619f8_end
rmem reg0 >var_9f2256fee6a6
set reg1 1
call >subtract
wmem >var_cf8dda6619f8 reg0
:while_4e809548d0ce_begin
rmem reg0 >var_7a04fc44b2ce
rmem reg1 >var_cf8dda6619f8
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_4e809548d0ce_end
rmem reg0 >var_bd4ec294f0bb
set reg1 10
mult reg0 reg0 reg1
wmem >var_bd4ec294f0bb reg0
rmem reg0 >var_7a04fc44b2ce
add reg0 reg0 1
wmem >var_7a04fc44b2ce reg0
jmp >while_4e809548d0ce_begin
:while_4e809548d0ce_end
rmem reg0 >var_c29ceda3fe20
rmem reg1 >var_bd4ec294f0bb
add reg0 reg0 reg1
wmem >var_c29ceda3fe20 reg0
:end_d7120cec0866
rmem reg0 >var_9f2256fee6a6
add reg0 reg0 1
wmem >var_9f2256fee6a6 reg0
jmp >while_405b98a5495a_begin
:while_405b98a5495a_end
rmem reg0 >var_c29ceda3fe20
call >print_number
rmem reg0 >var_c29ceda3fe20
ret
ret
:int_end
set reg0 >int
jmp >main_end
:main
jmp >var_17b890b629f6_end
:var_17b890b629f6
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
:var_17b890b629f6_end
wmem >var_17b890b629f6 &E
set reg0 >var_17b890b629f6
call >print
jmp >var_9f270653529f_end
:var_9f270653529f
:var_9f270653529f_end
call >input
wmem >var_9f270653529f reg0
rmem reg0 >var_9f270653529f
jmp >var_cd72ef8e7516_end
:var_cd72ef8e7516
&x
&i
&t
0
:var_cd72ef8e7516_end
wmem >var_cd72ef8e7516 &e
set reg1 >var_cd72ef8e7516
call >str_equal
jf reg0 >end_6274429ce099
ret
:end_6274429ce099
jmp >var_d9ff26bda97b_end
:var_d9ff26bda97b
:var_d9ff26bda97b_end
call >alloc
wmem >var_d9ff26bda97b reg0
rmem reg0 >var_d9ff26bda97b
rmem reg1 >var_9f270653529f
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_9f270653529f
add reg0 reg0 1
wmem >var_9f270653529f reg0
rmem reg0 >var_9f270653529f
rmem reg1 >var_d9ff26bda97b
call >str_cat
jmp >var_d13faca41d51_end
:var_d13faca41d51
&y
0
:var_d13faca41d51_end
wmem >var_d13faca41d51 &a
set reg1 >var_d13faca41d51
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

