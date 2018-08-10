jmp >str_equal_end
:str_equal
jmp >var_9330295b8498_end
:var_9330295b8498
:var_9330295b8498_end
jmp >var_e9801a354c17_end
:var_e9801a354c17
:var_e9801a354c17_end
wmem >var_9330295b8498 reg0
wmem >var_e9801a354c17 reg1
jmp >var_9f2f065bd32a_end
:var_9f2f065bd32a
:var_9f2f065bd32a_end
rmem reg0 >var_9330295b8498
call >str_len
wmem >var_9f2f065bd32a reg0
jmp >var_5a67db4dce2b_end
:var_5a67db4dce2b
:var_5a67db4dce2b_end
rmem reg0 >var_e9801a354c17
call >str_len
wmem >var_5a67db4dce2b reg0
jmp >var_67107339b105_end
:var_67107339b105
:var_67107339b105_end
rmem reg0 >var_9f2f065bd32a
rmem reg1 >var_5a67db4dce2b
eq reg0 reg0 reg1
wmem >var_67107339b105 reg0
rmem reg0 >var_67107339b105
call >not
jf reg0 >end_abc5575bb80b
set reg0 0
ret
:end_abc5575bb80b
jmp >var_febbadfe05ee_end
:var_febbadfe05ee
:var_febbadfe05ee_end
set reg0 0
wmem >var_febbadfe05ee reg0
:for_184256becc07_begin
rmem reg0 >var_febbadfe05ee
rmem reg1 >var_9f2f065bd32a
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_184256becc07_end
jmp >var_7ba380924ace_end
:var_7ba380924ace
:var_7ba380924ace_end
rmem reg0 >var_9330295b8498
rmem reg1 >var_febbadfe05ee
add reg0 reg0 reg1
wmem >var_7ba380924ace reg0
jmp >var_09e4f3dbdd1b_end
:var_09e4f3dbdd1b
:var_09e4f3dbdd1b_end
rmem reg0 >var_e9801a354c17
rmem reg1 >var_febbadfe05ee
add reg0 reg0 reg1
wmem >var_09e4f3dbdd1b reg0
jmp >var_91367892258e_end
:var_91367892258e
:var_91367892258e_end
rmem reg0 >var_7ba380924ace
rmem reg0 reg0
wmem >var_91367892258e reg0
jmp >var_e50785dc34fb_end
:var_e50785dc34fb
:var_e50785dc34fb_end
rmem reg0 >var_09e4f3dbdd1b
rmem reg0 reg0
wmem >var_e50785dc34fb reg0
jmp >var_30aab6b6656c_end
:var_30aab6b6656c
:var_30aab6b6656c_end
rmem reg0 >var_91367892258e
rmem reg1 >var_e50785dc34fb
eq reg0 reg0 reg1
wmem >var_30aab6b6656c reg0
rmem reg0 >var_30aab6b6656c
call >not
jf reg0 >end_82606351751a
set reg0 0
ret
:end_82606351751a
rmem reg0 >var_febbadfe05ee
add reg0 reg0 1
wmem >var_febbadfe05ee reg0
jmp >for_184256becc07_begin
:for_184256becc07_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_0505f303d961_end
:var_0505f303d961
:var_0505f303d961_end
set reg0 0
wmem >var_0505f303d961 reg0
jmp >var_d1c07396507f_end
:var_d1c07396507f
:var_d1c07396507f_end
set reg0 0
wmem >var_d1c07396507f reg0
:while_085c46f261ea_begin
rmem reg0 >var_d1c07396507f
set reg1 6
gt reg0 reg0 reg1
call >not
jf reg0 >while_085c46f261ea_end
jmp >var_d0306d7e23e0_end
:var_d0306d7e23e0
:var_d0306d7e23e0_end
rmem reg0 >var_0505f303d961
rmem reg0 reg0
wmem >var_d0306d7e23e0 reg0
rmem reg0 >var_d0306d7e23e0
call >not
jf reg0 >end_e97d47c8b848
rmem reg0 >var_d1c07396507f
add reg0 reg0 1
wmem >var_d1c07396507f reg0
:end_e97d47c8b848
rmem reg0 >var_d0306d7e23e0
jf reg0 >end_d147e05fddec
set reg0 0
wmem >var_d1c07396507f reg0
:end_d147e05fddec
rmem reg0 >var_0505f303d961
add reg0 reg0 1
wmem >var_0505f303d961 reg0
jmp >while_085c46f261ea_begin
:while_085c46f261ea_end
rmem reg0 >var_0505f303d961
set reg1 1
call >subtract
wmem >var_0505f303d961 reg0
rmem reg0 >var_0505f303d961
ret
ret
:alloc_end
set reg0 >alloc
jmp >mem_cp_end
:mem_cp
jmp >var_4f5f8a773cce_end
:var_4f5f8a773cce
:var_4f5f8a773cce_end
jmp >var_ea36f205583f_end
:var_ea36f205583f
:var_ea36f205583f_end
jmp >var_77512987a170_end
:var_77512987a170
:var_77512987a170_end
wmem >var_4f5f8a773cce reg0
wmem >var_ea36f205583f reg1
wmem >var_77512987a170 reg2
jmp >var_793c2975edc7_end
:var_793c2975edc7
:var_793c2975edc7_end
set reg0 0
wmem >var_793c2975edc7 reg0
:while_ae5bc4fe29d3_begin
rmem reg0 >var_793c2975edc7
rmem reg1 >var_77512987a170
gt reg0 reg0 reg1
call >not
jf reg0 >while_ae5bc4fe29d3_end
jmp >var_c1af2563c13a_end
:var_c1af2563c13a
:var_c1af2563c13a_end
rmem reg0 >var_4f5f8a773cce
rmem reg1 >var_793c2975edc7
add reg0 reg0 reg1
wmem >var_c1af2563c13a reg0
jmp >var_4d561d234687_end
:var_4d561d234687
:var_4d561d234687_end
rmem reg0 >var_ea36f205583f
rmem reg1 >var_793c2975edc7
add reg0 reg0 reg1
wmem >var_4d561d234687 reg0
rmem reg0 >var_4d561d234687
rmem reg1 >var_c1af2563c13a
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_793c2975edc7
add reg0 reg0 1
wmem >var_793c2975edc7 reg0
jmp >while_ae5bc4fe29d3_begin
:while_ae5bc4fe29d3_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_6ca1af20b119_end
:var_6ca1af20b119
:var_6ca1af20b119_end
wmem >var_6ca1af20b119 reg0
jmp >var_36eb413421ad_end
:var_36eb413421ad
:var_36eb413421ad_end
set reg0 0
wmem >var_36eb413421ad reg0
:while_324ff1c5ada3_begin
rmem reg0 >var_6ca1af20b119
rmem reg0 reg0
jf reg0 >while_324ff1c5ada3_end
rmem reg0 >var_6ca1af20b119
add reg0 reg0 1
wmem >var_6ca1af20b119 reg0
rmem reg0 >var_36eb413421ad
add reg0 reg0 1
wmem >var_36eb413421ad reg0
jmp >while_324ff1c5ada3_begin
:while_324ff1c5ada3_end
rmem reg0 >var_36eb413421ad
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_5a990f03bade_end
:var_5a990f03bade
:var_5a990f03bade_end
jmp >var_adc7c85f8832_end
:var_adc7c85f8832
:var_adc7c85f8832_end
wmem >var_5a990f03bade reg0
wmem >var_adc7c85f8832 reg1
jmp >var_95dcce1b6ed8_end
:var_95dcce1b6ed8
:var_95dcce1b6ed8_end
rmem reg0 >var_5a990f03bade
call >str_len
wmem >var_95dcce1b6ed8 reg0
jmp >var_2c7389d7e000_end
:var_2c7389d7e000
:var_2c7389d7e000_end
rmem reg0 >var_adc7c85f8832
call >str_len
wmem >var_2c7389d7e000 reg0
set reg0 10
out reg0
set reg0 10
out reg0
jmp >var_cec66c461db7_end
:var_cec66c461db7
:var_cec66c461db7_end
call >alloc
wmem >var_cec66c461db7 reg0
rmem reg0 >var_5a990f03bade
rmem reg1 >var_cec66c461db7
rmem reg2 >var_95dcce1b6ed8
call >mem_cp
jmp >var_80ce831c88c8_end
:var_80ce831c88c8
:var_80ce831c88c8_end
rmem reg0 >var_cec66c461db7
rmem reg1 >var_95dcce1b6ed8
add reg0 reg0 reg1
wmem >var_80ce831c88c8 reg0
rmem reg0 >var_2c7389d7e000
add reg0 reg0 1
wmem >var_2c7389d7e000 reg0
rmem reg0 >var_adc7c85f8832
rmem reg1 >var_80ce831c88c8
rmem reg2 >var_2c7389d7e000
call >mem_cp
rmem reg0 >var_cec66c461db7
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_11f5e5bf5bdc_end
:var_11f5e5bf5bdc
:var_11f5e5bf5bdc_end
wmem >var_11f5e5bf5bdc reg0
jmp >var_922be18b1610_end
:var_922be18b1610
:var_922be18b1610_end
call >alloc
wmem >var_922be18b1610 reg0
jmp >var_d45cc5dfcd35_end
:var_d45cc5dfcd35
:var_d45cc5dfcd35_end
rmem reg0 >var_11f5e5bf5bdc
call >str_len
wmem >var_d45cc5dfcd35 reg0
jmp >var_bbfa182c25af_end
:var_bbfa182c25af
:var_bbfa182c25af_end
set reg0 0
wmem >var_bbfa182c25af reg0
:while_cb7818eb8c95_begin
rmem reg0 >var_bbfa182c25af
rmem reg1 >var_d45cc5dfcd35
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_cb7818eb8c95_end
jmp >var_d85bb9afe121_end
:var_d85bb9afe121
:var_d85bb9afe121_end
rmem reg0 >var_11f5e5bf5bdc
rmem reg1 >var_bbfa182c25af
add reg0 reg0 reg1
wmem >var_d85bb9afe121 reg0
rmem reg0 >var_d85bb9afe121
rmem reg0 reg0
rmem reg0 >var_d85bb9afe121
rmem reg0 reg0
push reg0
rmem reg0 >var_bbfa182c25af
add reg0 reg0 1
wmem >var_bbfa182c25af reg0
jmp >while_cb7818eb8c95_begin
:while_cb7818eb8c95_end
jmp >var_48e20b3b432c_end
:var_48e20b3b432c
:var_48e20b3b432c_end
pop reg0
wmem >var_48e20b3b432c reg0
set reg0 0
wmem >var_bbfa182c25af reg0
:while_e8849ea0c446_begin
rmem reg0 >var_bbfa182c25af
rmem reg1 >var_d45cc5dfcd35
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_e8849ea0c446_end
jmp >var_daf667335eb6_end
:var_daf667335eb6
:var_daf667335eb6_end
rmem reg0 >var_922be18b1610
rmem reg1 >var_bbfa182c25af
add reg0 reg0 reg1
wmem >var_daf667335eb6 reg0
rmem reg0 >var_daf667335eb6
rmem reg1 >var_48e20b3b432c
wmem reg0 reg1
rmem reg0 >var_bbfa182c25af
add reg0 reg0 1
wmem >var_bbfa182c25af reg0
pop reg0
wmem >var_48e20b3b432c reg0
jmp >while_e8849ea0c446_begin
:while_e8849ea0c446_end
rmem reg0 >var_48e20b3b432c
rmem reg0 >var_48e20b3b432c
push reg0
rmem reg0 >var_922be18b1610
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_26d98d20a795_end
:var_26d98d20a795
:var_26d98d20a795_end
set reg0 16384
wmem >var_26d98d20a795 reg0
jmp >var_9bbdeeed29b5_end
:var_9bbdeeed29b5
:var_9bbdeeed29b5_end
in reg0
wmem >var_9bbdeeed29b5 reg0
jmp >var_33f11806b1c3_end
:var_33f11806b1c3
:var_33f11806b1c3_end
rmem reg0 >var_9bbdeeed29b5
set reg1 10
eq reg0 reg0 reg1
wmem >var_33f11806b1c3 reg0
:while_e717a72a6b3e_begin
rmem reg0 >var_33f11806b1c3
call >not
rmem reg1 >var_9bbdeeed29b5
call >and
jf reg0 >while_e717a72a6b3e_end
rmem reg0 >var_26d98d20a795
rmem reg1 >var_9bbdeeed29b5
wmem reg0 reg1
rmem reg0 >var_26d98d20a795
add reg0 reg0 1
wmem >var_26d98d20a795 reg0
in reg0
wmem >var_9bbdeeed29b5 reg0
rmem reg0 >var_9bbdeeed29b5
set reg1 10
eq reg0 reg0 reg1
wmem >var_33f11806b1c3 reg0
jmp >while_e717a72a6b3e_begin
:while_e717a72a6b3e_end
rmem reg0 >var_26d98d20a795
set reg1 0
wmem reg0 reg1
jmp >var_c0553fc9a268_end
:var_c0553fc9a268
:var_c0553fc9a268_end
call >alloc
wmem >var_c0553fc9a268 reg0
jmp >var_be65db238c6d_end
:var_be65db238c6d
:var_be65db238c6d_end
set reg0 16384
call >str_len
wmem >var_be65db238c6d reg0
set reg0 16384
rmem reg1 >var_c0553fc9a268
rmem reg2 >var_be65db238c6d
call >mem_cp
rmem reg0 >var_c0553fc9a268
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_fc4b59634898_end
:var_fc4b59634898
:var_fc4b59634898_end
wmem >var_fc4b59634898 reg0
:while_49a7b6419961_begin
rmem reg0 >var_fc4b59634898
rmem reg0 reg0
jf reg0 >while_49a7b6419961_end
rmem reg0 >var_fc4b59634898
rmem reg0 reg0
out reg0
rmem reg0 >var_fc4b59634898
add reg0 reg0 1
wmem >var_fc4b59634898 reg0
jmp >while_49a7b6419961_begin
:while_49a7b6419961_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_3dce122b51f4_end
:var_3dce122b51f4
:var_3dce122b51f4_end
wmem >var_3dce122b51f4 reg0
rmem reg0 >var_3dce122b51f4
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_7dfb2ab2b233_end
:var_7dfb2ab2b233
:var_7dfb2ab2b233_end
wmem >var_7dfb2ab2b233 reg0
rmem reg0 >var_7dfb2ab2b233
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_d84fdde77ea5
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_d84fdde77ea5
jmp >var_364cfaed0ac9_end
:var_364cfaed0ac9
:var_364cfaed0ac9_end
jmp >var_a0697e960588_end
:var_a0697e960588
:var_a0697e960588_end
set reg0 0
wmem >var_a0697e960588 reg0
:while_e51ef1aa6ab8_begin
rmem reg0 >var_7dfb2ab2b233
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_e51ef1aa6ab8_end
rmem reg0 >var_7dfb2ab2b233
set reg1 10
mod reg0 reg0 reg1
wmem >var_364cfaed0ac9 reg0
rmem reg0 >var_364cfaed0ac9
rmem reg0 >var_364cfaed0ac9
push reg0
rmem reg0 >var_a0697e960588
add reg0 reg0 1
wmem >var_a0697e960588 reg0
rmem reg0 >var_7dfb2ab2b233
set reg1 10
call >divide
wmem >var_7dfb2ab2b233 reg0
jmp >while_e51ef1aa6ab8_begin
:while_e51ef1aa6ab8_end
rmem reg0 >var_7dfb2ab2b233
set reg1 10
mod reg0 reg0 reg1
wmem >var_364cfaed0ac9 reg0
rmem reg0 >var_364cfaed0ac9
rmem reg0 >var_364cfaed0ac9
push reg0
rmem reg0 >var_a0697e960588
add reg0 reg0 1
wmem >var_a0697e960588 reg0
jmp >var_79ff38fe8c77_end
:var_79ff38fe8c77
:var_79ff38fe8c77_end
set reg0 0
wmem >var_79ff38fe8c77 reg0
:while_4be8db5bb206_begin
rmem reg0 >var_79ff38fe8c77
rmem reg1 >var_a0697e960588
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_4be8db5bb206_end
rmem reg0 >var_79ff38fe8c77
set reg1 1
add reg0 reg0 reg1
wmem >var_79ff38fe8c77 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_4be8db5bb206_begin
:while_4be8db5bb206_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_64db13e75cff_end
:var_64db13e75cff
:var_64db13e75cff_end
set reg0 0
wmem >var_64db13e75cff reg0
:while_1d9ea99b63cf_begin
rmem reg0 >var_64db13e75cff
rmem reg0 reg0
jf reg0 >while_1d9ea99b63cf_end
rmem reg0 >var_64db13e75cff
add reg0 reg0 1
wmem >var_64db13e75cff reg0
rmem reg0 >var_64db13e75cff
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_1d9ea99b63cf_begin
:while_1d9ea99b63cf_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_d95c003457fb_end
:var_d95c003457fb
:var_d95c003457fb_end
wmem >var_d95c003457fb reg0
jmp >var_7560988d8e71_end
:var_7560988d8e71
:var_7560988d8e71_end
rmem reg0 >var_d95c003457fb
call >flip_str
wmem >var_7560988d8e71 reg0
jmp >var_b4dc8e74f85a_end
:var_b4dc8e74f85a
:var_b4dc8e74f85a_end
rmem reg0 >var_7560988d8e71
call >str_len
wmem >var_b4dc8e74f85a reg0
rmem reg0 >var_b4dc8e74f85a
set reg1 1
call >subtract
wmem >var_b4dc8e74f85a reg0
jmp >var_80e817d53f59_end
:var_80e817d53f59
:var_80e817d53f59_end
set reg0 0
wmem >var_80e817d53f59 reg0
jmp >var_77e3276386c3_end
:var_77e3276386c3
:var_77e3276386c3_end
set reg0 0
wmem >var_77e3276386c3 reg0
:while_561e5ff089c4_begin
rmem reg0 >var_80e817d53f59
rmem reg1 >var_b4dc8e74f85a
gt reg0 reg0 reg1
call >not
jf reg0 >while_561e5ff089c4_end
jmp >var_a98bf8bf283b_end
:var_a98bf8bf283b
:var_a98bf8bf283b_end
rmem reg0 >var_7560988d8e71
rmem reg1 >var_80e817d53f59
add reg0 reg0 reg1
wmem >var_a98bf8bf283b reg0
rmem reg0 >var_a98bf8bf283b
rmem reg0 reg0
wmem >var_a98bf8bf283b reg0
jmp >var_84305d2edaad_end
:var_84305d2edaad
:var_84305d2edaad_end
rmem reg0 >var_a98bf8bf283b
set reg1 47
gt reg0 reg0 reg1
wmem >var_84305d2edaad reg0
jmp >var_44b66d4420e0_end
:var_44b66d4420e0
:var_44b66d4420e0_end
rmem reg0 >var_a98bf8bf283b
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_44b66d4420e0 reg0
rmem reg0 >var_84305d2edaad
rmem reg1 >var_44b66d4420e0
call >and
jf reg0 >end_c4dc64bb34f8
jmp >var_595286eb3806_end
:var_595286eb3806
:var_595286eb3806_end
rmem reg0 >var_a98bf8bf283b
set reg1 48
call >subtract
wmem >var_595286eb3806 reg0
rmem reg0 >var_595286eb3806
call >print_number
set reg0 10
out reg0
jmp >var_d86ed2c98956_end
:var_d86ed2c98956
:var_d86ed2c98956_end
set reg0 0
wmem >var_d86ed2c98956 reg0
jmp >var_9957cf587c64_end
:var_9957cf587c64
:var_9957cf587c64_end
rmem reg0 >var_80e817d53f59
set reg1 1
call >subtract
wmem >var_9957cf587c64 reg0
:while_3e7475c8ae2f_begin
rmem reg0 >var_d86ed2c98956
rmem reg1 >var_9957cf587c64
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_3e7475c8ae2f_end
rmem reg0 >var_595286eb3806
set reg1 10
call >subtract
wmem >var_595286eb3806 reg0
rmem reg0 >var_d86ed2c98956
add reg0 reg0 1
wmem >var_d86ed2c98956 reg0
jmp >while_3e7475c8ae2f_begin
:while_3e7475c8ae2f_end
rmem reg0 >var_77e3276386c3
rmem reg1 >var_595286eb3806
add reg0 reg0 reg1
wmem >var_77e3276386c3 reg0
:end_c4dc64bb34f8
rmem reg0 >var_80e817d53f59
add reg0 reg0 1
wmem >var_80e817d53f59 reg0
jmp >while_561e5ff089c4_begin
:while_561e5ff089c4_end
rmem reg0 >var_77e3276386c3
call >print_number
rmem reg0 >var_77e3276386c3
ret
ret
:int_end
set reg0 >int
jmp >var_f5c4ccb3e852_end
:var_f5c4ccb3e852
:var_f5c4ccb3e852_end
set reg0 1220
wmem >var_f5c4ccb3e852 reg0
jmp >rand_end
:rand
rmem reg0 >var_f5c4ccb3e852
set reg1 1103
call >subtract
set reg1 12345
add reg0 reg0 reg1
wmem >var_f5c4ccb3e852 reg0
rmem reg0 >var_f5c4ccb3e852
set reg1 1202
mod reg0 reg0 reg1
wmem >var_f5c4ccb3e852 reg0
rmem reg0 >var_f5c4ccb3e852
ret
ret
:rand_end
set reg0 >rand
jmp >main_end
:main
jmp >var_d61bf05450e9_end
:var_d61bf05450e9
:var_d61bf05450e9_end
set reg0 0
wmem >var_d61bf05450e9 reg0
:for_795904325cc0_begin
rmem reg0 >var_d61bf05450e9
set reg1 10
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_795904325cc0_end
call >rand
call >print_number
jmp >var_6038a559bf71_end
:var_6038a559bf71
0
:var_6038a559bf71_end
wmem >var_6038a559bf71 32
set reg0 >var_6038a559bf71
call >println
rmem reg0 >var_d61bf05450e9
add reg0 reg0 1
wmem >var_d61bf05450e9 reg0
jmp >for_795904325cc0_begin
:for_795904325cc0_end
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

