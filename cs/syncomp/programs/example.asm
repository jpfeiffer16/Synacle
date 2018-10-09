jmp >str_equal_end
:str_equal
jmp >var_4cab64c6d802_end
:var_4cab64c6d802
:var_4cab64c6d802_end
jmp >var_7885d7432693_end
:var_7885d7432693
:var_7885d7432693_end
wmem >var_4cab64c6d802 reg0
wmem >var_7885d7432693 reg1
jmp >var_4bb3d66004f9_end
:var_4bb3d66004f9
:var_4bb3d66004f9_end
rmem reg0 >var_4cab64c6d802
call >str_len
wmem >var_4bb3d66004f9 reg0
jmp >var_80ac9ef939ef_end
:var_80ac9ef939ef
:var_80ac9ef939ef_end
rmem reg0 >var_7885d7432693
call >str_len
wmem >var_80ac9ef939ef reg0
rmem reg0 >var_4bb3d66004f9
rmem reg1 >var_80ac9ef939ef
eq reg0 reg0 reg1
call >not
jf reg0 >end_4580e2e37df9
set reg0 0
ret
:end_4580e2e37df9
jmp >var_402992606729_end
:var_402992606729
:var_402992606729_end
set reg0 0
wmem >var_402992606729 reg0
:for_baca9d3cf557_begin
rmem reg0 >var_402992606729
rmem reg1 >var_4bb3d66004f9
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_4bb3d66004f9
jf reg0 >for_baca9d3cf557_end
jmp >var_72d4855de087_end
:var_72d4855de087
:var_72d4855de087_end
rmem reg0 >var_4cab64c6d802
rmem reg1 >var_402992606729
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_72d4855de087 reg0
jmp >var_73b32fd18259_end
:var_73b32fd18259
:var_73b32fd18259_end
rmem reg0 >var_7885d7432693
rmem reg1 >var_402992606729
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_73b32fd18259 reg0
rmem reg0 >var_72d4855de087
rmem reg1 >var_73b32fd18259
eq reg0 reg0 reg1
call >not
jf reg0 >end_f4b5f73d5f65
set reg0 0
ret
:end_f4b5f73d5f65
rmem reg0 >var_402992606729
add reg0 reg0 1
wmem >var_402992606729 reg0
jmp >for_baca9d3cf557_begin
:for_baca9d3cf557_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_3862c66c8e24_end
:var_3862c66c8e24
:var_3862c66c8e24_end
set reg0 16382
wmem >var_3862c66c8e24 reg0
:while_bb73b34e7632_begin
rmem reg0 >var_3862c66c8e24
rmem reg0 reg0
call >not
jf reg0 >while_bb73b34e7632_end
rmem reg0 >var_3862c66c8e24
set reg1 1
call >subtract
wmem >var_3862c66c8e24 reg0
jmp >while_bb73b34e7632_begin
:while_bb73b34e7632_end
rmem reg0 >var_3862c66c8e24
set reg1 2
add reg0 reg0 reg1
wmem >var_3862c66c8e24 reg0
rmem reg0 >var_3862c66c8e24
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_d7840696db07_end
:var_d7840696db07
:var_d7840696db07_end
wmem >var_d7840696db07 reg0
jmp >var_6a1217c467d9_end
:var_6a1217c467d9
:var_6a1217c467d9_end
call >alloc
wmem >var_6a1217c467d9 reg0
jmp >var_6ba56f81621d_end
:var_6ba56f81621d
:var_6ba56f81621d_end
rmem reg0 >var_6a1217c467d9
rmem reg1 >var_d7840696db07
add reg0 reg0 reg1
wmem >var_6ba56f81621d reg0
rmem reg0 >var_6ba56f81621d
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_6a1217c467d9
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_d03d352540e0_end
:var_d03d352540e0
:var_d03d352540e0_end
jmp >var_ca9e6725fbea_end
:var_ca9e6725fbea
:var_ca9e6725fbea_end
jmp >var_cd4fc96da504_end
:var_cd4fc96da504
:var_cd4fc96da504_end
wmem >var_d03d352540e0 reg0
wmem >var_ca9e6725fbea reg1
wmem >var_cd4fc96da504 reg2
jmp >var_a049716b0f47_end
:var_a049716b0f47
:var_a049716b0f47_end
set reg0 0
wmem >var_a049716b0f47 reg0
:while_c28bf45959cd_begin
rmem reg0 >var_a049716b0f47
rmem reg1 >var_cd4fc96da504
gt reg0 reg0 reg1
call >not
rmem reg0 >var_cd4fc96da504
jf reg0 >while_c28bf45959cd_end
jmp >var_b06cdc2e0958_end
:var_b06cdc2e0958
:var_b06cdc2e0958_end
rmem reg0 >var_d03d352540e0
rmem reg1 >var_a049716b0f47
add reg0 reg0 reg1
wmem >var_b06cdc2e0958 reg0
jmp >var_2e4d8b0a90c4_end
:var_2e4d8b0a90c4
:var_2e4d8b0a90c4_end
rmem reg0 >var_ca9e6725fbea
rmem reg1 >var_a049716b0f47
add reg0 reg0 reg1
wmem >var_2e4d8b0a90c4 reg0
rmem reg0 >var_2e4d8b0a90c4
rmem reg1 >var_b06cdc2e0958
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_a049716b0f47
add reg0 reg0 1
wmem >var_a049716b0f47 reg0
jmp >while_c28bf45959cd_begin
:while_c28bf45959cd_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_30c02666486a_end
:var_30c02666486a
:var_30c02666486a_end
wmem >var_30c02666486a reg0
jmp >var_35e7c1008016_end
:var_35e7c1008016
:var_35e7c1008016_end
set reg0 0
wmem >var_35e7c1008016 reg0
:while_4ceaf305bf70_begin
rmem reg0 >var_30c02666486a
rmem reg0 reg0
jf reg0 >while_4ceaf305bf70_end
rmem reg0 >var_30c02666486a
add reg0 reg0 1
wmem >var_30c02666486a reg0
rmem reg0 >var_35e7c1008016
add reg0 reg0 1
wmem >var_35e7c1008016 reg0
jmp >while_4ceaf305bf70_begin
:while_4ceaf305bf70_end
rmem reg0 >var_35e7c1008016
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_98cfbff1c48f_end
:var_98cfbff1c48f
:var_98cfbff1c48f_end
jmp >var_c3a377b3b7af_end
:var_c3a377b3b7af
:var_c3a377b3b7af_end
wmem >var_98cfbff1c48f reg0
wmem >var_c3a377b3b7af reg1
jmp >var_75e48a044129_end
:var_75e48a044129
:var_75e48a044129_end
rmem reg0 >var_98cfbff1c48f
call >str_len
wmem >var_75e48a044129 reg0
jmp >var_a7a1f73932fe_end
:var_a7a1f73932fe
:var_a7a1f73932fe_end
rmem reg0 >var_c3a377b3b7af
call >str_len
wmem >var_a7a1f73932fe reg0
jmp >var_eaf1c1b8d767_end
:var_eaf1c1b8d767
:var_eaf1c1b8d767_end
call >alloc
wmem >var_eaf1c1b8d767 reg0
rmem reg0 >var_98cfbff1c48f
rmem reg1 >var_eaf1c1b8d767
rmem reg2 >var_75e48a044129
call >mem_cp
jmp >var_e257054fa1f3_end
:var_e257054fa1f3
:var_e257054fa1f3_end
rmem reg0 >var_eaf1c1b8d767
rmem reg1 >var_75e48a044129
add reg0 reg0 reg1
wmem >var_e257054fa1f3 reg0
rmem reg0 >var_a7a1f73932fe
add reg0 reg0 1
wmem >var_a7a1f73932fe reg0
rmem reg0 >var_c3a377b3b7af
rmem reg1 >var_e257054fa1f3
rmem reg2 >var_a7a1f73932fe
call >mem_cp
rmem reg0 >var_eaf1c1b8d767
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_9b9d35f52b9e_end
:var_9b9d35f52b9e
:var_9b9d35f52b9e_end
wmem >var_9b9d35f52b9e reg0
jmp >var_0282ce45e598_end
:var_0282ce45e598
:var_0282ce45e598_end
call >alloc
wmem >var_0282ce45e598 reg0
jmp >var_6b46edeec7b7_end
:var_6b46edeec7b7
:var_6b46edeec7b7_end
rmem reg0 >var_9b9d35f52b9e
call >str_len
wmem >var_6b46edeec7b7 reg0
jmp >var_e81a27292bdf_end
:var_e81a27292bdf
:var_e81a27292bdf_end
set reg0 0
wmem >var_e81a27292bdf reg0
:while_28d5ec129d87_begin
rmem reg0 >var_e81a27292bdf
rmem reg1 >var_6b46edeec7b7
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_6b46edeec7b7
jf reg0 >while_28d5ec129d87_end
jmp >var_a63375e82dd1_end
:var_a63375e82dd1
:var_a63375e82dd1_end
rmem reg0 >var_9b9d35f52b9e
rmem reg1 >var_e81a27292bdf
add reg0 reg0 reg1
wmem >var_a63375e82dd1 reg0
rmem reg0 >var_a63375e82dd1
rmem reg0 reg0
rmem reg0 >var_a63375e82dd1
rmem reg0 reg0
push reg0
rmem reg0 >var_e81a27292bdf
add reg0 reg0 1
wmem >var_e81a27292bdf reg0
jmp >while_28d5ec129d87_begin
:while_28d5ec129d87_end
jmp >var_bc7331b04e6e_end
:var_bc7331b04e6e
:var_bc7331b04e6e_end
pop reg0
wmem >var_bc7331b04e6e reg0
set reg0 0
wmem >var_e81a27292bdf reg0
:while_979ccc7ce0e7_begin
rmem reg0 >var_e81a27292bdf
rmem reg1 >var_6b46edeec7b7
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_6b46edeec7b7
jf reg0 >while_979ccc7ce0e7_end
jmp >var_c8be7c88e739_end
:var_c8be7c88e739
:var_c8be7c88e739_end
rmem reg0 >var_0282ce45e598
rmem reg1 >var_e81a27292bdf
add reg0 reg0 reg1
wmem >var_c8be7c88e739 reg0
rmem reg0 >var_c8be7c88e739
rmem reg1 >var_bc7331b04e6e
wmem reg0 reg1
rmem reg0 >var_e81a27292bdf
add reg0 reg0 1
wmem >var_e81a27292bdf reg0
pop reg0
wmem >var_bc7331b04e6e reg0
jmp >while_979ccc7ce0e7_begin
:while_979ccc7ce0e7_end
rmem reg0 >var_bc7331b04e6e
rmem reg0 >var_bc7331b04e6e
push reg0
rmem reg0 >var_0282ce45e598
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_c4cb299bbc69_end
:var_c4cb299bbc69
:var_c4cb299bbc69_end
set reg0 16384
wmem >var_c4cb299bbc69 reg0
jmp >var_850d8ac6c1bd_end
:var_850d8ac6c1bd
:var_850d8ac6c1bd_end
in reg0
wmem >var_850d8ac6c1bd reg0
jmp >var_9189d4b09475_end
:var_9189d4b09475
:var_9189d4b09475_end
rmem reg0 >var_850d8ac6c1bd
set reg1 10
eq reg0 reg0 reg1
wmem >var_9189d4b09475 reg0
:while_004c1dbc7109_begin
rmem reg0 >var_9189d4b09475
rmem reg1 >var_850d8ac6c1bd
call >and
call >not
jf reg0 >while_004c1dbc7109_end
rmem reg0 >var_c4cb299bbc69
rmem reg1 >var_850d8ac6c1bd
wmem reg0 reg1
rmem reg0 >var_c4cb299bbc69
add reg0 reg0 1
wmem >var_c4cb299bbc69 reg0
in reg0
wmem >var_850d8ac6c1bd reg0
rmem reg0 >var_850d8ac6c1bd
set reg1 10
eq reg0 reg0 reg1
wmem >var_9189d4b09475 reg0
jmp >while_004c1dbc7109_begin
:while_004c1dbc7109_end
rmem reg0 >var_c4cb299bbc69
set reg1 0
wmem reg0 reg1
jmp >var_72aa9459d435_end
:var_72aa9459d435
:var_72aa9459d435_end
call >alloc
wmem >var_72aa9459d435 reg0
jmp >var_e2795e1abdd3_end
:var_e2795e1abdd3
:var_e2795e1abdd3_end
set reg0 16384
call >str_len
wmem >var_e2795e1abdd3 reg0
set reg0 16384
rmem reg1 >var_72aa9459d435
rmem reg2 >var_e2795e1abdd3
call >mem_cp
rmem reg0 >var_72aa9459d435
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_6c637c75c318_end
:var_6c637c75c318
:var_6c637c75c318_end
wmem >var_6c637c75c318 reg0
:while_ed44985cfbce_begin
rmem reg0 >var_6c637c75c318
rmem reg0 reg0
jf reg0 >while_ed44985cfbce_end
rmem reg0 >var_6c637c75c318
rmem reg0 reg0
out reg0
rmem reg0 >var_6c637c75c318
add reg0 reg0 1
wmem >var_6c637c75c318 reg0
jmp >while_ed44985cfbce_begin
:while_ed44985cfbce_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_4e3dac32f8b5_end
:var_4e3dac32f8b5
:var_4e3dac32f8b5_end
wmem >var_4e3dac32f8b5 reg0
rmem reg0 >var_4e3dac32f8b5
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_54c800914468_end
:var_54c800914468
:var_54c800914468_end
wmem >var_54c800914468 reg0
rmem reg0 >var_54c800914468
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_7b7fcfa36036
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_7b7fcfa36036
jmp >var_9462af8927a7_end
:var_9462af8927a7
:var_9462af8927a7_end
jmp >var_0492f00d01e1_end
:var_0492f00d01e1
:var_0492f00d01e1_end
set reg0 0
wmem >var_0492f00d01e1 reg0
:while_e147613dd660_begin
rmem reg0 >var_54c800914468
set reg1 10
gt reg0 reg0 reg1
set reg0 10
jf reg0 >while_e147613dd660_end
rmem reg0 >var_54c800914468
set reg1 10
mod reg0 reg0 reg1
wmem >var_9462af8927a7 reg0
rmem reg0 >var_9462af8927a7
rmem reg0 >var_9462af8927a7
push reg0
rmem reg0 >var_0492f00d01e1
add reg0 reg0 1
wmem >var_0492f00d01e1 reg0
rmem reg0 >var_54c800914468
set reg1 10
call >divide
wmem >var_54c800914468 reg0
jmp >while_e147613dd660_begin
:while_e147613dd660_end
rmem reg0 >var_54c800914468
set reg1 10
mod reg0 reg0 reg1
wmem >var_9462af8927a7 reg0
rmem reg0 >var_9462af8927a7
rmem reg0 >var_9462af8927a7
push reg0
rmem reg0 >var_0492f00d01e1
add reg0 reg0 1
wmem >var_0492f00d01e1 reg0
jmp >var_969cc0f8791a_end
:var_969cc0f8791a
:var_969cc0f8791a_end
set reg0 0
wmem >var_969cc0f8791a reg0
:while_a1febf42a866_begin
rmem reg0 >var_969cc0f8791a
rmem reg1 >var_0492f00d01e1
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_0492f00d01e1
jf reg0 >while_a1febf42a866_end
rmem reg0 >var_969cc0f8791a
set reg1 1
add reg0 reg0 reg1
wmem >var_969cc0f8791a reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_a1febf42a866_begin
:while_a1febf42a866_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_62afa0221c69_end
:var_62afa0221c69
:var_62afa0221c69_end
set reg0 0
wmem >var_62afa0221c69 reg0
:while_36372a63d4ce_begin
rmem reg0 >var_62afa0221c69
rmem reg0 reg0
jf reg0 >while_36372a63d4ce_end
rmem reg0 >var_62afa0221c69
add reg0 reg0 1
wmem >var_62afa0221c69 reg0
rmem reg0 >var_62afa0221c69
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_36372a63d4ce_begin
:while_36372a63d4ce_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_2bae90a14fb4_end
:var_2bae90a14fb4
:var_2bae90a14fb4_end
wmem >var_2bae90a14fb4 reg0
jmp >var_b8acf7794410_end
:var_b8acf7794410
:var_b8acf7794410_end
rmem reg0 >var_2bae90a14fb4
call >flip_str
wmem >var_b8acf7794410 reg0
jmp >var_0b62e78b5e65_end
:var_0b62e78b5e65
:var_0b62e78b5e65_end
rmem reg0 >var_b8acf7794410
call >str_len
wmem >var_0b62e78b5e65 reg0
rmem reg0 >var_0b62e78b5e65
set reg1 1
call >subtract
wmem >var_0b62e78b5e65 reg0
jmp >var_aa1ec53ee561_end
:var_aa1ec53ee561
:var_aa1ec53ee561_end
set reg0 0
wmem >var_aa1ec53ee561 reg0
jmp >var_8965a7014031_end
:var_8965a7014031
:var_8965a7014031_end
set reg0 0
wmem >var_8965a7014031 reg0
:while_7192dad16adb_begin
rmem reg0 >var_aa1ec53ee561
rmem reg1 >var_0b62e78b5e65
gt reg0 reg0 reg1
call >not
rmem reg0 >var_0b62e78b5e65
jf reg0 >while_7192dad16adb_end
jmp >var_db6cc1f09078_end
:var_db6cc1f09078
:var_db6cc1f09078_end
rmem reg0 >var_b8acf7794410
rmem reg1 >var_aa1ec53ee561
add reg0 reg0 reg1
wmem >var_db6cc1f09078 reg0
rmem reg0 >var_db6cc1f09078
rmem reg0 reg0
wmem >var_db6cc1f09078 reg0
jmp >var_f0658753ff30_end
:var_f0658753ff30
:var_f0658753ff30_end
rmem reg0 >var_db6cc1f09078
set reg1 47
gt reg0 reg0 reg1
wmem >var_f0658753ff30 reg0
jmp >var_f8238588c64d_end
:var_f8238588c64d
:var_f8238588c64d_end
rmem reg0 >var_db6cc1f09078
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_f8238588c64d reg0
rmem reg0 >var_f0658753ff30
rmem reg1 >var_f8238588c64d
call >and
jf reg0 >end_9f87d8ae6bc4
jmp >var_82c124d62744_end
:var_82c124d62744
:var_82c124d62744_end
rmem reg0 >var_db6cc1f09078
set reg1 48
call >subtract
wmem >var_82c124d62744 reg0
rmem reg0 >var_82c124d62744
call >print_number
set reg0 10
out reg0
jmp >var_773f98385138_end
:var_773f98385138
:var_773f98385138_end
set reg0 0
wmem >var_773f98385138 reg0
jmp >var_c5a492c0c497_end
:var_c5a492c0c497
:var_c5a492c0c497_end
rmem reg0 >var_aa1ec53ee561
set reg1 1
call >subtract
wmem >var_c5a492c0c497 reg0
:while_9ad30845b1b2_begin
rmem reg0 >var_773f98385138
rmem reg1 >var_c5a492c0c497
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_c5a492c0c497
jf reg0 >while_9ad30845b1b2_end
rmem reg0 >var_82c124d62744
set reg1 10
call >subtract
wmem >var_82c124d62744 reg0
rmem reg0 >var_773f98385138
add reg0 reg0 1
wmem >var_773f98385138 reg0
jmp >while_9ad30845b1b2_begin
:while_9ad30845b1b2_end
rmem reg0 >var_8965a7014031
rmem reg1 >var_82c124d62744
add reg0 reg0 reg1
wmem >var_8965a7014031 reg0
:end_9f87d8ae6bc4
rmem reg0 >var_aa1ec53ee561
add reg0 reg0 1
wmem >var_aa1ec53ee561 reg0
jmp >while_7192dad16adb_begin
:while_7192dad16adb_end
rmem reg0 >var_8965a7014031
call >print_number
rmem reg0 >var_8965a7014031
ret
ret
:int_end
set reg0 >int
jmp >var_5efdf18f9c68_end
:var_5efdf18f9c68
:var_5efdf18f9c68_end
set reg0 0
wmem >var_5efdf18f9c68 reg0
jmp >var_c265e22ffc6f_end
:var_c265e22ffc6f
:var_c265e22ffc6f_end
set reg0 20
wmem >var_c265e22ffc6f reg0
set reg0 0
call >not
jf reg0 >end_2736c0151c50
jmp >var_faf01c696f26_end
:var_faf01c696f26
&o
&m
&e
&t
&i
&m
&e
&s
0
:var_faf01c696f26_end
wmem >var_faf01c696f26 &S
set reg0 >var_faf01c696f26
call >println
:end_2736c0151c50
jmp >var_85e0b78fb371_end
:var_85e0b78fb371
&l
&w
&a
&y
&s
0
:var_85e0b78fb371_end
wmem >var_85e0b78fb371 &A
set reg0 >var_85e0b78fb371
call >println
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
