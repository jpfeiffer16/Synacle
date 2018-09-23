jmp >str_equal_end
:str_equal
jmp >var_06c9e1ca98bf_end
:var_06c9e1ca98bf
:var_06c9e1ca98bf_end
jmp >var_385f0c409b48_end
:var_385f0c409b48
:var_385f0c409b48_end
wmem >var_06c9e1ca98bf reg0
wmem >var_385f0c409b48 reg1
jmp >var_b762392f49b0_end
:var_b762392f49b0
:var_b762392f49b0_end
rmem reg0 >var_06c9e1ca98bf
call >str_len
wmem >var_b762392f49b0 reg0
jmp >var_5ad3efed8993_end
:var_5ad3efed8993
:var_5ad3efed8993_end
rmem reg0 >var_385f0c409b48
call >str_len
wmem >var_5ad3efed8993 reg0
rmem reg0 >var_b762392f49b0
rmem reg1 >var_5ad3efed8993
eq reg0 reg0 reg1
call >not
jf reg0 >end_4b4f9fa339d3
set reg0 0
ret
:end_4b4f9fa339d3
jmp >var_5e9e0026833b_end
:var_5e9e0026833b
:var_5e9e0026833b_end
set reg0 0
wmem >var_5e9e0026833b reg0
:for_00cdc6f76e6b_begin
rmem reg0 >var_5e9e0026833b
rmem reg1 >var_b762392f49b0
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_00cdc6f76e6b_end
jmp >var_1a1ceb8a9d13_end
:var_1a1ceb8a9d13
:var_1a1ceb8a9d13_end
rmem reg0 >var_06c9e1ca98bf
rmem reg1 >var_5e9e0026833b
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_1a1ceb8a9d13 reg0
jmp >var_b38aee2af513_end
:var_b38aee2af513
:var_b38aee2af513_end
rmem reg0 >var_385f0c409b48
rmem reg1 >var_5e9e0026833b
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_b38aee2af513 reg0
rmem reg0 >var_1a1ceb8a9d13
rmem reg1 >var_b38aee2af513
eq reg0 reg0 reg1
call >not
jf reg0 >end_01f109a54e6c
set reg0 0
ret
:end_01f109a54e6c
rmem reg0 >var_5e9e0026833b
add reg0 reg0 1
wmem >var_5e9e0026833b reg0
jmp >for_00cdc6f76e6b_begin
:for_00cdc6f76e6b_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_abc7cbe6a650_end
:var_abc7cbe6a650
:var_abc7cbe6a650_end
set reg0 16382
wmem >var_abc7cbe6a650 reg0
:while_cdee00834ef9_begin
rmem reg0 >var_abc7cbe6a650
rmem reg0 reg0
call >not
jf reg0 >while_cdee00834ef9_end
rmem reg0 >var_abc7cbe6a650
set reg1 1
call >subtract
wmem >var_abc7cbe6a650 reg0
jmp >while_cdee00834ef9_begin
:while_cdee00834ef9_end
rmem reg0 >var_abc7cbe6a650
set reg1 2
add reg0 reg0 reg1
wmem >var_abc7cbe6a650 reg0
rmem reg0 >var_abc7cbe6a650
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_151b4859eda3_end
:var_151b4859eda3
:var_151b4859eda3_end
wmem >var_151b4859eda3 reg0
jmp >var_88813d14a1a8_end
:var_88813d14a1a8
:var_88813d14a1a8_end
call >alloc
wmem >var_88813d14a1a8 reg0
jmp >var_d2c62ed0e8d8_end
:var_d2c62ed0e8d8
:var_d2c62ed0e8d8_end
rmem reg0 >var_88813d14a1a8
rmem reg1 >var_151b4859eda3
add reg0 reg0 reg1
wmem >var_d2c62ed0e8d8 reg0
rmem reg0 >var_d2c62ed0e8d8
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_88813d14a1a8
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_dbfc47d13fad_end
:var_dbfc47d13fad
:var_dbfc47d13fad_end
jmp >var_a30a1caca586_end
:var_a30a1caca586
:var_a30a1caca586_end
jmp >var_c24e45ff8ac6_end
:var_c24e45ff8ac6
:var_c24e45ff8ac6_end
wmem >var_dbfc47d13fad reg0
wmem >var_a30a1caca586 reg1
wmem >var_c24e45ff8ac6 reg2
jmp >var_4de1109cc203_end
:var_4de1109cc203
:var_4de1109cc203_end
set reg0 0
wmem >var_4de1109cc203 reg0
:while_846d11e02fed_begin
rmem reg0 >var_4de1109cc203
rmem reg1 >var_c24e45ff8ac6
gt reg0 reg0 reg1
call >not
jf reg0 >while_846d11e02fed_end
jmp >var_d7f027584210_end
:var_d7f027584210
:var_d7f027584210_end
rmem reg0 >var_dbfc47d13fad
rmem reg1 >var_4de1109cc203
add reg0 reg0 reg1
wmem >var_d7f027584210 reg0
jmp >var_580afacdf48e_end
:var_580afacdf48e
:var_580afacdf48e_end
rmem reg0 >var_a30a1caca586
rmem reg1 >var_4de1109cc203
add reg0 reg0 reg1
wmem >var_580afacdf48e reg0
rmem reg0 >var_580afacdf48e
rmem reg1 >var_d7f027584210
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_4de1109cc203
add reg0 reg0 1
wmem >var_4de1109cc203 reg0
jmp >while_846d11e02fed_begin
:while_846d11e02fed_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_9236fb9c7b5a_end
:var_9236fb9c7b5a
:var_9236fb9c7b5a_end
wmem >var_9236fb9c7b5a reg0
jmp >var_79f853f04198_end
:var_79f853f04198
:var_79f853f04198_end
set reg0 0
wmem >var_79f853f04198 reg0
:while_d058782ae80b_begin
rmem reg0 >var_9236fb9c7b5a
rmem reg0 reg0
jf reg0 >while_d058782ae80b_end
rmem reg0 >var_9236fb9c7b5a
add reg0 reg0 1
wmem >var_9236fb9c7b5a reg0
rmem reg0 >var_79f853f04198
add reg0 reg0 1
wmem >var_79f853f04198 reg0
jmp >while_d058782ae80b_begin
:while_d058782ae80b_end
rmem reg0 >var_79f853f04198
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_42c857904057_end
:var_42c857904057
:var_42c857904057_end
jmp >var_e0ffb01805e6_end
:var_e0ffb01805e6
:var_e0ffb01805e6_end
wmem >var_42c857904057 reg0
wmem >var_e0ffb01805e6 reg1
jmp >var_79f202aa2d56_end
:var_79f202aa2d56
:var_79f202aa2d56_end
rmem reg0 >var_42c857904057
call >str_len
wmem >var_79f202aa2d56 reg0
jmp >var_7402f20393b2_end
:var_7402f20393b2
:var_7402f20393b2_end
rmem reg0 >var_e0ffb01805e6
call >str_len
wmem >var_7402f20393b2 reg0
jmp >var_15a7cea247a0_end
:var_15a7cea247a0
:var_15a7cea247a0_end
call >alloc
wmem >var_15a7cea247a0 reg0
rmem reg0 >var_42c857904057
rmem reg1 >var_15a7cea247a0
rmem reg2 >var_79f202aa2d56
call >mem_cp
jmp >var_b5a50f6b770f_end
:var_b5a50f6b770f
:var_b5a50f6b770f_end
rmem reg0 >var_15a7cea247a0
rmem reg1 >var_79f202aa2d56
add reg0 reg0 reg1
wmem >var_b5a50f6b770f reg0
rmem reg0 >var_7402f20393b2
add reg0 reg0 1
wmem >var_7402f20393b2 reg0
rmem reg0 >var_e0ffb01805e6
rmem reg1 >var_b5a50f6b770f
rmem reg2 >var_7402f20393b2
call >mem_cp
rmem reg0 >var_15a7cea247a0
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_8b9529892ace_end
:var_8b9529892ace
:var_8b9529892ace_end
wmem >var_8b9529892ace reg0
jmp >var_aab4f308d647_end
:var_aab4f308d647
:var_aab4f308d647_end
call >alloc
wmem >var_aab4f308d647 reg0
jmp >var_6107de83acda_end
:var_6107de83acda
:var_6107de83acda_end
rmem reg0 >var_8b9529892ace
call >str_len
wmem >var_6107de83acda reg0
jmp >var_7e8ddc23b1b0_end
:var_7e8ddc23b1b0
:var_7e8ddc23b1b0_end
set reg0 0
wmem >var_7e8ddc23b1b0 reg0
:while_42e799d59fd1_begin
rmem reg0 >var_7e8ddc23b1b0
rmem reg1 >var_6107de83acda
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_42e799d59fd1_end
jmp >var_109acab0cf68_end
:var_109acab0cf68
:var_109acab0cf68_end
rmem reg0 >var_8b9529892ace
rmem reg1 >var_7e8ddc23b1b0
add reg0 reg0 reg1
wmem >var_109acab0cf68 reg0
rmem reg0 >var_109acab0cf68
rmem reg0 reg0
rmem reg0 >var_109acab0cf68
rmem reg0 reg0
push reg0
rmem reg0 >var_7e8ddc23b1b0
add reg0 reg0 1
wmem >var_7e8ddc23b1b0 reg0
jmp >while_42e799d59fd1_begin
:while_42e799d59fd1_end
jmp >var_a4a85ead3bd4_end
:var_a4a85ead3bd4
:var_a4a85ead3bd4_end
pop reg0
wmem >var_a4a85ead3bd4 reg0
set reg0 0
wmem >var_7e8ddc23b1b0 reg0
:while_6630098b449a_begin
rmem reg0 >var_7e8ddc23b1b0
rmem reg1 >var_6107de83acda
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_6630098b449a_end
jmp >var_e82b786934e9_end
:var_e82b786934e9
:var_e82b786934e9_end
rmem reg0 >var_aab4f308d647
rmem reg1 >var_7e8ddc23b1b0
add reg0 reg0 reg1
wmem >var_e82b786934e9 reg0
rmem reg0 >var_e82b786934e9
rmem reg1 >var_a4a85ead3bd4
wmem reg0 reg1
rmem reg0 >var_7e8ddc23b1b0
add reg0 reg0 1
wmem >var_7e8ddc23b1b0 reg0
pop reg0
wmem >var_a4a85ead3bd4 reg0
jmp >while_6630098b449a_begin
:while_6630098b449a_end
rmem reg0 >var_a4a85ead3bd4
rmem reg0 >var_a4a85ead3bd4
push reg0
rmem reg0 >var_aab4f308d647
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_26b7837d9872_end
:var_26b7837d9872
:var_26b7837d9872_end
set reg0 16384
wmem >var_26b7837d9872 reg0
jmp >var_032c622b0d44_end
:var_032c622b0d44
:var_032c622b0d44_end
in reg0
wmem >var_032c622b0d44 reg0
jmp >var_8da3f632324c_end
:var_8da3f632324c
:var_8da3f632324c_end
rmem reg0 >var_032c622b0d44
set reg1 10
eq reg0 reg0 reg1
wmem >var_8da3f632324c reg0
:while_95ef72e8f9ac_begin
rmem reg0 >var_8da3f632324c
rmem reg1 >var_032c622b0d44
call >and
call >not
jf reg0 >while_95ef72e8f9ac_end
rmem reg0 >var_26b7837d9872
rmem reg1 >var_032c622b0d44
wmem reg0 reg1
rmem reg0 >var_26b7837d9872
add reg0 reg0 1
wmem >var_26b7837d9872 reg0
in reg0
wmem >var_032c622b0d44 reg0
rmem reg0 >var_032c622b0d44
set reg1 10
eq reg0 reg0 reg1
wmem >var_8da3f632324c reg0
jmp >while_95ef72e8f9ac_begin
:while_95ef72e8f9ac_end
rmem reg0 >var_26b7837d9872
set reg1 0
wmem reg0 reg1
jmp >var_d2949d8c6cb7_end
:var_d2949d8c6cb7
:var_d2949d8c6cb7_end
call >alloc
wmem >var_d2949d8c6cb7 reg0
jmp >var_fb6b7005204a_end
:var_fb6b7005204a
:var_fb6b7005204a_end
set reg0 16384
call >str_len
wmem >var_fb6b7005204a reg0
set reg0 16384
rmem reg1 >var_d2949d8c6cb7
rmem reg2 >var_fb6b7005204a
call >mem_cp
rmem reg0 >var_d2949d8c6cb7
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_709b75acf460_end
:var_709b75acf460
:var_709b75acf460_end
wmem >var_709b75acf460 reg0
:while_91b3f46bec45_begin
rmem reg0 >var_709b75acf460
rmem reg0 reg0
jf reg0 >while_91b3f46bec45_end
rmem reg0 >var_709b75acf460
rmem reg0 reg0
out reg0
rmem reg0 >var_709b75acf460
add reg0 reg0 1
wmem >var_709b75acf460 reg0
jmp >while_91b3f46bec45_begin
:while_91b3f46bec45_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_e0f3d781948a_end
:var_e0f3d781948a
:var_e0f3d781948a_end
wmem >var_e0f3d781948a reg0
rmem reg0 >var_e0f3d781948a
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_064c9e5d1e72_end
:var_064c9e5d1e72
:var_064c9e5d1e72_end
wmem >var_064c9e5d1e72 reg0
rmem reg0 >var_064c9e5d1e72
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_3b64092bcc38
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_3b64092bcc38
jmp >var_39908b72032e_end
:var_39908b72032e
:var_39908b72032e_end
jmp >var_25b8c20a8724_end
:var_25b8c20a8724
:var_25b8c20a8724_end
set reg0 0
wmem >var_25b8c20a8724 reg0
:while_69e9f93d3bca_begin
rmem reg0 >var_064c9e5d1e72
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_69e9f93d3bca_end
rmem reg0 >var_064c9e5d1e72
set reg1 10
mod reg0 reg0 reg1
wmem >var_39908b72032e reg0
rmem reg0 >var_39908b72032e
rmem reg0 >var_39908b72032e
push reg0
rmem reg0 >var_25b8c20a8724
add reg0 reg0 1
wmem >var_25b8c20a8724 reg0
rmem reg0 >var_064c9e5d1e72
set reg1 10
call >divide
wmem >var_064c9e5d1e72 reg0
jmp >while_69e9f93d3bca_begin
:while_69e9f93d3bca_end
rmem reg0 >var_064c9e5d1e72
set reg1 10
mod reg0 reg0 reg1
wmem >var_39908b72032e reg0
rmem reg0 >var_39908b72032e
rmem reg0 >var_39908b72032e
push reg0
rmem reg0 >var_25b8c20a8724
add reg0 reg0 1
wmem >var_25b8c20a8724 reg0
jmp >var_e1e71d881618_end
:var_e1e71d881618
:var_e1e71d881618_end
set reg0 0
wmem >var_e1e71d881618 reg0
:while_12b9d8c413ef_begin
rmem reg0 >var_e1e71d881618
rmem reg1 >var_25b8c20a8724
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_12b9d8c413ef_end
rmem reg0 >var_e1e71d881618
set reg1 1
add reg0 reg0 reg1
wmem >var_e1e71d881618 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_12b9d8c413ef_begin
:while_12b9d8c413ef_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_35ac180914be_end
:var_35ac180914be
:var_35ac180914be_end
set reg0 0
wmem >var_35ac180914be reg0
:while_cf4813d1aeb5_begin
rmem reg0 >var_35ac180914be
rmem reg0 reg0
jf reg0 >while_cf4813d1aeb5_end
rmem reg0 >var_35ac180914be
add reg0 reg0 1
wmem >var_35ac180914be reg0
rmem reg0 >var_35ac180914be
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_cf4813d1aeb5_begin
:while_cf4813d1aeb5_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_06db7b02abea_end
:var_06db7b02abea
:var_06db7b02abea_end
wmem >var_06db7b02abea reg0
jmp >var_7b5264c4034c_end
:var_7b5264c4034c
:var_7b5264c4034c_end
rmem reg0 >var_06db7b02abea
call >flip_str
wmem >var_7b5264c4034c reg0
jmp >var_208c9962d080_end
:var_208c9962d080
:var_208c9962d080_end
rmem reg0 >var_7b5264c4034c
call >str_len
wmem >var_208c9962d080 reg0
rmem reg0 >var_208c9962d080
set reg1 1
call >subtract
wmem >var_208c9962d080 reg0
jmp >var_2ca27f98c3ef_end
:var_2ca27f98c3ef
:var_2ca27f98c3ef_end
set reg0 0
wmem >var_2ca27f98c3ef reg0
jmp >var_513864136d68_end
:var_513864136d68
:var_513864136d68_end
set reg0 0
wmem >var_513864136d68 reg0
:while_bae7c83120a0_begin
rmem reg0 >var_2ca27f98c3ef
rmem reg1 >var_208c9962d080
gt reg0 reg0 reg1
call >not
jf reg0 >while_bae7c83120a0_end
jmp >var_64f5fc6f356d_end
:var_64f5fc6f356d
:var_64f5fc6f356d_end
rmem reg0 >var_7b5264c4034c
rmem reg1 >var_2ca27f98c3ef
add reg0 reg0 reg1
wmem >var_64f5fc6f356d reg0
rmem reg0 >var_64f5fc6f356d
rmem reg0 reg0
wmem >var_64f5fc6f356d reg0
jmp >var_6fd26ffb19a7_end
:var_6fd26ffb19a7
:var_6fd26ffb19a7_end
rmem reg0 >var_64f5fc6f356d
set reg1 47
gt reg0 reg0 reg1
wmem >var_6fd26ffb19a7 reg0
jmp >var_4c896d9da34e_end
:var_4c896d9da34e
:var_4c896d9da34e_end
rmem reg0 >var_64f5fc6f356d
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_4c896d9da34e reg0
rmem reg0 >var_6fd26ffb19a7
rmem reg1 >var_4c896d9da34e
call >and
jf reg0 >end_0b2e841d9236
jmp >var_d85deefa4afb_end
:var_d85deefa4afb
:var_d85deefa4afb_end
rmem reg0 >var_64f5fc6f356d
set reg1 48
call >subtract
wmem >var_d85deefa4afb reg0
rmem reg0 >var_d85deefa4afb
call >print_number
set reg0 10
out reg0
jmp >var_69443c3daafe_end
:var_69443c3daafe
:var_69443c3daafe_end
set reg0 0
wmem >var_69443c3daafe reg0
jmp >var_ce94cb2ebc12_end
:var_ce94cb2ebc12
:var_ce94cb2ebc12_end
rmem reg0 >var_2ca27f98c3ef
set reg1 1
call >subtract
wmem >var_ce94cb2ebc12 reg0
:while_ac255de060b8_begin
rmem reg0 >var_69443c3daafe
rmem reg1 >var_ce94cb2ebc12
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_ac255de060b8_end
rmem reg0 >var_d85deefa4afb
set reg1 10
call >subtract
wmem >var_d85deefa4afb reg0
rmem reg0 >var_69443c3daafe
add reg0 reg0 1
wmem >var_69443c3daafe reg0
jmp >while_ac255de060b8_begin
:while_ac255de060b8_end
rmem reg0 >var_513864136d68
rmem reg1 >var_d85deefa4afb
add reg0 reg0 reg1
wmem >var_513864136d68 reg0
:end_0b2e841d9236
rmem reg0 >var_2ca27f98c3ef
add reg0 reg0 1
wmem >var_2ca27f98c3ef reg0
jmp >while_bae7c83120a0_begin
:while_bae7c83120a0_end
rmem reg0 >var_513864136d68
call >print_number
rmem reg0 >var_513864136d68
ret
ret
:int_end
set reg0 >int
jmp >var_200453057cf2_end
:var_200453057cf2
:var_200453057cf2_end
set reg0 100
wmem >var_200453057cf2 reg0
jmp >fib_end
:fib
jmp >var_2d144e0fd00a_end
:var_2d144e0fd00a
:var_2d144e0fd00a_end
jmp >var_323760037b6c_end
:var_323760037b6c
:var_323760037b6c_end
wmem >var_2d144e0fd00a reg0
wmem >var_323760037b6c reg1
jmp >var_9c96cd635ed4_end
:var_9c96cd635ed4
:var_9c96cd635ed4_end
rmem reg0 >var_2d144e0fd00a
rmem reg1 >var_323760037b6c
add reg0 reg0 reg1
wmem >var_9c96cd635ed4 reg0
rmem reg0 >var_323760037b6c
rmem reg1 >var_200453057cf2
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >end_cce702e3c451
rmem reg0 >var_9c96cd635ed4
call >print_number
set reg0 10
out reg0
rmem reg0 >var_323760037b6c
rmem reg1 >var_9c96cd635ed4
call >fib
:end_cce702e3c451
ret
:fib_end
set reg0 >fib
set reg0 0
set reg1 1
call >fib
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

