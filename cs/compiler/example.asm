jmp >int_end
:int
jmp >var_54b2ca3c1b4f_end
:var_54b2ca3c1b4f
:var_54b2ca3c1b4f_end
wmem >var_54b2ca3c1b4f reg0
jmp >var_72a8dd13973f_end
:var_72a8dd13973f
:var_72a8dd13973f_end
rmem reg0 >var_54b2ca3c1b4f
call >flip_str
wmem >var_72a8dd13973f reg0
jmp >var_fda8c21c5e16_end
:var_fda8c21c5e16
:var_fda8c21c5e16_end
rmem reg0 >var_72a8dd13973f
call >str_len
wmem >var_fda8c21c5e16 reg0
rmem reg0 >var_fda8c21c5e16
set reg1 1
call >subtract
wmem >var_fda8c21c5e16 reg0
jmp >var_5905aa13ad3a_end
:var_5905aa13ad3a
:var_5905aa13ad3a_end
set reg0 0
wmem >var_5905aa13ad3a reg0
jmp >var_2bf55590390f_end
:var_2bf55590390f
:var_2bf55590390f_end
set reg0 0
wmem >var_2bf55590390f reg0
:while_4c09e27fa5d4_begin
rmem reg0 >var_5905aa13ad3a
rmem reg1 >var_fda8c21c5e16
gt reg0 reg0 reg1
call >not
jf reg0 >while_4c09e27fa5d4_end
jmp >var_1bb2d52db5ff_end
:var_1bb2d52db5ff
:var_1bb2d52db5ff_end
rmem reg0 >var_72a8dd13973f
rmem reg1 >var_5905aa13ad3a
add reg0 reg0 reg1
wmem >var_1bb2d52db5ff reg0
rmem reg0 >var_1bb2d52db5ff
rmem reg0 reg0
wmem >var_1bb2d52db5ff reg0
jmp >var_fcaae12c4efb_end
:var_fcaae12c4efb
:var_fcaae12c4efb_end
rmem reg0 >var_1bb2d52db5ff
set reg1 47
gt reg0 reg0 reg1
wmem >var_fcaae12c4efb reg0
jmp >var_903e3c51c8d0_end
:var_903e3c51c8d0
:var_903e3c51c8d0_end
rmem reg0 >var_1bb2d52db5ff
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_903e3c51c8d0 reg0
jmp >var_112b75c25809_end
:var_112b75c25809
:var_112b75c25809_end
rmem reg0 >var_fcaae12c4efb
rmem reg1 >var_903e3c51c8d0
call >and
wmem >var_112b75c25809 reg0
rmem reg0 >var_fcaae12c4efb
rmem reg1 >var_903e3c51c8d0
call >and
jf reg0 >end_47c5fd123d21
jmp >var_575ed21f47ef_end
:var_575ed21f47ef
:var_575ed21f47ef_end
rmem reg0 >var_1bb2d52db5ff
set reg1 48
call >subtract
wmem >var_575ed21f47ef reg0
rmem reg0 >var_575ed21f47ef
call >print_number
set reg0 10
out reg0
jmp >var_3dffbc69b702_end
:var_3dffbc69b702
:var_3dffbc69b702_end
set reg0 0
wmem >var_3dffbc69b702 reg0
:while_0050c392e9e0_begin
rmem reg0 >var_3dffbc69b702
rmem reg1 >var_5905aa13ad3a
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_0050c392e9e0_end
rmem reg0 >var_575ed21f47ef
set reg1 10
call >subtract
wmem >var_575ed21f47ef reg0
rmem reg0 >var_3dffbc69b702
add reg0 reg0 1
wmem >var_3dffbc69b702 reg0
jmp >while_0050c392e9e0_begin
:while_0050c392e9e0_end
rmem reg0 >var_2bf55590390f
rmem reg1 >var_575ed21f47ef
add reg0 reg0 reg1
wmem >var_2bf55590390f reg0
:end_47c5fd123d21
rmem reg0 >var_5905aa13ad3a
add reg0 reg0 1
wmem >var_5905aa13ad3a reg0
jmp >while_4c09e27fa5d4_begin
:while_4c09e27fa5d4_end
rmem reg0 >var_2bf55590390f
ret
ret
:int_end
jmp >flip_str_end
:flip_str
jmp >var_9eccd9fbcd29_end
:var_9eccd9fbcd29
:var_9eccd9fbcd29_end
wmem >var_9eccd9fbcd29 reg0
jmp >var_8e3a48f40af5_end
:var_8e3a48f40af5
:var_8e3a48f40af5_end
call >alloc
wmem >var_8e3a48f40af5 reg0
jmp >var_333fb9761e8e_end
:var_333fb9761e8e
:var_333fb9761e8e_end
rmem reg0 >var_9eccd9fbcd29
call >str_len
wmem >var_333fb9761e8e reg0
jmp >var_4740712c93f0_end
:var_4740712c93f0
:var_4740712c93f0_end
set reg0 0
wmem >var_4740712c93f0 reg0
:while_a036f9b9671f_begin
rmem reg0 >var_4740712c93f0
rmem reg1 >var_333fb9761e8e
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_a036f9b9671f_end
jmp >var_1f4bea5fb14b_end
:var_1f4bea5fb14b
:var_1f4bea5fb14b_end
rmem reg0 >var_9eccd9fbcd29
rmem reg1 >var_4740712c93f0
add reg0 reg0 reg1
wmem >var_1f4bea5fb14b reg0
rmem reg0 >var_1f4bea5fb14b
rmem reg0 reg0
rmem reg0 >var_1f4bea5fb14b
rmem reg0 reg0
push reg0
rmem reg0 >var_4740712c93f0
add reg0 reg0 1
wmem >var_4740712c93f0 reg0
jmp >while_a036f9b9671f_begin
:while_a036f9b9671f_end
jmp >var_1fdde4e9b81d_end
:var_1fdde4e9b81d
:var_1fdde4e9b81d_end
pop reg0
wmem >var_1fdde4e9b81d reg0
set reg0 0
wmem >var_4740712c93f0 reg0
:while_f63972000e07_begin
rmem reg0 >var_4740712c93f0
rmem reg1 >var_333fb9761e8e
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_f63972000e07_end
jmp >var_313aecaac576_end
:var_313aecaac576
:var_313aecaac576_end
rmem reg0 >var_8e3a48f40af5
rmem reg1 >var_4740712c93f0
add reg0 reg0 reg1
wmem >var_313aecaac576 reg0
rmem reg0 >var_313aecaac576
rmem reg1 >var_1fdde4e9b81d
wmem reg0 reg1
rmem reg0 >var_4740712c93f0
add reg0 reg0 1
wmem >var_4740712c93f0 reg0
pop reg0
wmem >var_1fdde4e9b81d reg0
jmp >while_f63972000e07_begin
:while_f63972000e07_end
rmem reg0 >var_1fdde4e9b81d
rmem reg0 >var_1fdde4e9b81d
push reg0
rmem reg0 >var_8e3a48f40af5
ret
ret
:flip_str_end
jmp >str_cat_end
:str_cat
jmp >var_d5534894c1ea_end
:var_d5534894c1ea
:var_d5534894c1ea_end
jmp >var_9c2ec6d14d3d_end
:var_9c2ec6d14d3d
:var_9c2ec6d14d3d_end
wmem >var_d5534894c1ea reg0
wmem >var_9c2ec6d14d3d reg1
jmp >var_f789d6871335_end
:var_f789d6871335
:var_f789d6871335_end
rmem reg0 >var_d5534894c1ea
call >str_len
wmem >var_f789d6871335 reg0
jmp >var_fa1bb67966be_end
:var_fa1bb67966be
:var_fa1bb67966be_end
rmem reg0 >var_9c2ec6d14d3d
call >str_len
wmem >var_fa1bb67966be reg0
set reg0 10
out reg0
set reg0 10
out reg0
jmp >var_24791cf85660_end
:var_24791cf85660
:var_24791cf85660_end
call >alloc
wmem >var_24791cf85660 reg0
rmem reg0 >var_d5534894c1ea
rmem reg1 >var_24791cf85660
rmem reg2 >var_f789d6871335
call >mem_cp
jmp >var_b58a0f1ab3f0_end
:var_b58a0f1ab3f0
:var_b58a0f1ab3f0_end
rmem reg0 >var_24791cf85660
rmem reg1 >var_f789d6871335
add reg0 reg0 reg1
wmem >var_b58a0f1ab3f0 reg0
rmem reg0 >var_fa1bb67966be
add reg0 reg0 1
wmem >var_fa1bb67966be reg0
rmem reg0 >var_9c2ec6d14d3d
rmem reg1 >var_b58a0f1ab3f0
rmem reg2 >var_fa1bb67966be
call >mem_cp
rmem reg0 >var_24791cf85660
ret
ret
:str_cat_end
jmp >input_end
:input
jmp >var_4e87ca2ed0e1_end
:var_4e87ca2ed0e1
:var_4e87ca2ed0e1_end
set reg0 16384
wmem >var_4e87ca2ed0e1 reg0
jmp >var_4e039f4fdd34_end
:var_4e039f4fdd34
:var_4e039f4fdd34_end
in reg0
wmem >var_4e039f4fdd34 reg0
jmp >var_1408155dc455_end
:var_1408155dc455
:var_1408155dc455_end
rmem reg0 >var_4e039f4fdd34
set reg1 10
eq reg0 reg0 reg1
wmem >var_1408155dc455 reg0
:while_56f42af6e709_begin
rmem reg0 >var_1408155dc455
call >not
rmem reg1 >var_4e039f4fdd34
call >and
jf reg0 >while_56f42af6e709_end
rmem reg0 >var_4e87ca2ed0e1
rmem reg1 >var_4e039f4fdd34
wmem reg0 reg1
rmem reg0 >var_4e87ca2ed0e1
add reg0 reg0 1
wmem >var_4e87ca2ed0e1 reg0
in reg0
wmem >var_4e039f4fdd34 reg0
rmem reg0 >var_4e039f4fdd34
set reg1 10
eq reg0 reg0 reg1
wmem >var_1408155dc455 reg0
jmp >while_56f42af6e709_begin
:while_56f42af6e709_end
rmem reg0 >var_4e87ca2ed0e1
set reg1 0
wmem reg0 reg1
jmp >var_eb646739cd1e_end
:var_eb646739cd1e
:var_eb646739cd1e_end
call >alloc
wmem >var_eb646739cd1e reg0
jmp >var_f621dd13b082_end
:var_f621dd13b082
:var_f621dd13b082_end
set reg0 16384
call >str_len
wmem >var_f621dd13b082 reg0
set reg0 16384
rmem reg1 >var_eb646739cd1e
rmem reg2 >var_f621dd13b082
call >mem_cp
rmem reg0 >var_eb646739cd1e
ret
ret
:input_end
jmp >alloc_end
:alloc
jmp >var_8f4882ad0e61_end
:var_8f4882ad0e61
:var_8f4882ad0e61_end
set reg0 0
wmem >var_8f4882ad0e61 reg0
jmp >var_eae4fe3e11ce_end
:var_eae4fe3e11ce
:var_eae4fe3e11ce_end
set reg0 0
wmem >var_eae4fe3e11ce reg0
:while_cebc2a656d3d_begin
rmem reg0 >var_eae4fe3e11ce
set reg1 6
gt reg0 reg0 reg1
call >not
jf reg0 >while_cebc2a656d3d_end
jmp >var_6f68cf9bb72d_end
:var_6f68cf9bb72d
:var_6f68cf9bb72d_end
rmem reg0 >var_8f4882ad0e61
rmem reg0 reg0
wmem >var_6f68cf9bb72d reg0
rmem reg0 >var_6f68cf9bb72d
call >not
jf reg0 >end_48941059098f
rmem reg0 >var_eae4fe3e11ce
add reg0 reg0 1
wmem >var_eae4fe3e11ce reg0
:end_48941059098f
rmem reg0 >var_6f68cf9bb72d
jf reg0 >end_d2db9afa44f7
set reg0 0
wmem >var_eae4fe3e11ce reg0
:end_d2db9afa44f7
rmem reg0 >var_8f4882ad0e61
add reg0 reg0 1
wmem >var_8f4882ad0e61 reg0
jmp >while_cebc2a656d3d_begin
:while_cebc2a656d3d_end
rmem reg0 >var_8f4882ad0e61
set reg1 1
call >subtract
wmem >var_8f4882ad0e61 reg0
rmem reg0 >var_8f4882ad0e61
ret
ret
:alloc_end
jmp >mem_cp_end
:mem_cp
jmp >var_e232d0cf32f6_end
:var_e232d0cf32f6
:var_e232d0cf32f6_end
jmp >var_3e3d12ce5798_end
:var_3e3d12ce5798
:var_3e3d12ce5798_end
jmp >var_8f23674d0d0c_end
:var_8f23674d0d0c
:var_8f23674d0d0c_end
wmem >var_e232d0cf32f6 reg0
wmem >var_3e3d12ce5798 reg1
wmem >var_8f23674d0d0c reg2
jmp >var_66947b78f591_end
:var_66947b78f591
:var_66947b78f591_end
set reg0 0
wmem >var_66947b78f591 reg0
:while_babb8c2e1723_begin
rmem reg0 >var_66947b78f591
rmem reg1 >var_8f23674d0d0c
gt reg0 reg0 reg1
call >not
jf reg0 >while_babb8c2e1723_end
jmp >var_8c9b12c93d7d_end
:var_8c9b12c93d7d
:var_8c9b12c93d7d_end
rmem reg0 >var_e232d0cf32f6
rmem reg1 >var_66947b78f591
add reg0 reg0 reg1
wmem >var_8c9b12c93d7d reg0
jmp >var_6de801532e2c_end
:var_6de801532e2c
:var_6de801532e2c_end
rmem reg0 >var_3e3d12ce5798
rmem reg1 >var_66947b78f591
add reg0 reg0 reg1
wmem >var_6de801532e2c reg0
rmem reg0 >var_6de801532e2c
rmem reg1 >var_8c9b12c93d7d
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_66947b78f591
add reg0 reg0 1
wmem >var_66947b78f591 reg0
jmp >while_babb8c2e1723_begin
:while_babb8c2e1723_end
ret
:mem_cp_end
jmp >str_len_end
:str_len
jmp >var_a1e8fe1911f8_end
:var_a1e8fe1911f8
:var_a1e8fe1911f8_end
wmem >var_a1e8fe1911f8 reg0
jmp >var_54cf66c0d231_end
:var_54cf66c0d231
:var_54cf66c0d231_end
set reg0 0
wmem >var_54cf66c0d231 reg0
:while_756bee76cf2a_begin
rmem reg0 >var_a1e8fe1911f8
rmem reg0 reg0
jf reg0 >while_756bee76cf2a_end
rmem reg0 >var_a1e8fe1911f8
add reg0 reg0 1
wmem >var_a1e8fe1911f8 reg0
rmem reg0 >var_54cf66c0d231
add reg0 reg0 1
wmem >var_54cf66c0d231 reg0
jmp >while_756bee76cf2a_begin
:while_756bee76cf2a_end
rmem reg0 >var_54cf66c0d231
ret
ret
:str_len_end
jmp >println_end
:println
jmp >var_efea033c0b7f_end
:var_efea033c0b7f
:var_efea033c0b7f_end
wmem >var_efea033c0b7f reg0
rmem reg0 >var_efea033c0b7f
call >print
set reg0 10
out reg0
ret
:println_end
jmp >print_end
:print
jmp >var_294f4b06baf9_end
:var_294f4b06baf9
:var_294f4b06baf9_end
wmem >var_294f4b06baf9 reg0
:while_0acc45895f22_begin
rmem reg0 >var_294f4b06baf9
rmem reg0 reg0
jf reg0 >while_0acc45895f22_end
rmem reg0 >var_294f4b06baf9
rmem reg0 reg0
out reg0
rmem reg0 >var_294f4b06baf9
add reg0 reg0 1
wmem >var_294f4b06baf9 reg0
jmp >while_0acc45895f22_begin
:while_0acc45895f22_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_1c06e7d2175c_end
:var_1c06e7d2175c
:var_1c06e7d2175c_end
wmem >var_1c06e7d2175c reg0
rmem reg0 >var_1c06e7d2175c
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_31f6e1c1b2a9
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_31f6e1c1b2a9
jmp >var_2bdc1178e0d6_end
:var_2bdc1178e0d6
:var_2bdc1178e0d6_end
jmp >var_0b7cc44e69bd_end
:var_0b7cc44e69bd
:var_0b7cc44e69bd_end
set reg0 0
wmem >var_0b7cc44e69bd reg0
:while_de6180469c9f_begin
rmem reg0 >var_1c06e7d2175c
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_de6180469c9f_end
rmem reg0 >var_1c06e7d2175c
set reg1 10
mod reg0 reg0 reg1
wmem >var_2bdc1178e0d6 reg0
rmem reg0 >var_2bdc1178e0d6
rmem reg0 >var_2bdc1178e0d6
push reg0
rmem reg0 >var_0b7cc44e69bd
add reg0 reg0 1
wmem >var_0b7cc44e69bd reg0
rmem reg0 >var_1c06e7d2175c
set reg1 10
call >divide
wmem >var_1c06e7d2175c reg0
jmp >while_de6180469c9f_begin
:while_de6180469c9f_end
rmem reg0 >var_1c06e7d2175c
set reg1 10
mod reg0 reg0 reg1
wmem >var_2bdc1178e0d6 reg0
rmem reg0 >var_2bdc1178e0d6
rmem reg0 >var_2bdc1178e0d6
push reg0
rmem reg0 >var_0b7cc44e69bd
add reg0 reg0 1
wmem >var_0b7cc44e69bd reg0
jmp >var_969677220199_end
:var_969677220199
:var_969677220199_end
set reg0 0
wmem >var_969677220199 reg0
:while_6b15a4dd1f8c_begin
rmem reg0 >var_969677220199
rmem reg1 >var_0b7cc44e69bd
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_6b15a4dd1f8c_end
rmem reg0 >var_969677220199
set reg1 1
add reg0 reg0 reg1
wmem >var_969677220199 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_6b15a4dd1f8c_begin
:while_6b15a4dd1f8c_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_c0fd63e1525a_end
:var_c0fd63e1525a
:var_c0fd63e1525a_end
set reg0 0
wmem >var_c0fd63e1525a reg0
:while_b86f277e35e1_begin
rmem reg0 >var_c0fd63e1525a
rmem reg0 reg0
jf reg0 >while_b86f277e35e1_end
rmem reg0 >var_c0fd63e1525a
add reg0 reg0 1
wmem >var_c0fd63e1525a reg0
rmem reg0 >var_c0fd63e1525a
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_b86f277e35e1_begin
:while_b86f277e35e1_end
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
