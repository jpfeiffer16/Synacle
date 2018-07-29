jmp >int_end
:int
jmp >var_9b8c1791ead9_end
:var_9b8c1791ead9
:var_9b8c1791ead9_end
wmem >var_9b8c1791ead9 reg0
jmp >var_aefcdfe4b3f4_end
:var_aefcdfe4b3f4
:var_aefcdfe4b3f4_end
rmem reg0 >var_9b8c1791ead9
call >flip_str
wmem >var_aefcdfe4b3f4 reg0
jmp >var_b0f92879d6dc_end
:var_b0f92879d6dc
:var_b0f92879d6dc_end
rmem reg0 >var_aefcdfe4b3f4
call >str_len
wmem >var_b0f92879d6dc reg0
rmem reg0 >var_b0f92879d6dc
set reg1 1
call >subtract
wmem >var_b0f92879d6dc reg0
jmp >var_53f30c1bbc8a_end
:var_53f30c1bbc8a
:var_53f30c1bbc8a_end
set reg0 0
wmem >var_53f30c1bbc8a reg0
jmp >var_ca204be163cf_end
:var_ca204be163cf
:var_ca204be163cf_end
set reg0 0
wmem >var_ca204be163cf reg0
:while_95136e286cfc_begin
rmem reg0 >var_53f30c1bbc8a
rmem reg1 >var_b0f92879d6dc
gt reg0 reg0 reg1
call >not
jf reg0 >while_95136e286cfc_end
jmp >var_230652e2f2cf_end
:var_230652e2f2cf
:var_230652e2f2cf_end
rmem reg0 >var_aefcdfe4b3f4
rmem reg1 >var_53f30c1bbc8a
add reg0 reg0 reg1
wmem >var_230652e2f2cf reg0
rmem reg0 >var_230652e2f2cf
rmem reg0 reg0
wmem >var_230652e2f2cf reg0
jmp >var_256b1d57a123_end
:var_256b1d57a123
:var_256b1d57a123_end
rmem reg0 >var_230652e2f2cf
set reg1 47
gt reg0 reg0 reg1
wmem >var_256b1d57a123 reg0
jmp >var_6371cc110ea6_end
:var_6371cc110ea6
:var_6371cc110ea6_end
rmem reg0 >var_230652e2f2cf
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_6371cc110ea6 reg0
rmem reg0 >var_256b1d57a123
rmem reg1 >var_6371cc110ea6
call >and
jf reg0 >end_05f02b82d119
jmp >var_25d24ed0a55e_end
:var_25d24ed0a55e
:var_25d24ed0a55e_end
rmem reg0 >var_230652e2f2cf
set reg1 48
call >subtract
wmem >var_25d24ed0a55e reg0
rmem reg0 >var_25d24ed0a55e
call >print_number
set reg0 10
out reg0
jmp >var_fba199342e82_end
:var_fba199342e82
:var_fba199342e82_end
set reg0 0
wmem >var_fba199342e82 reg0
jmp >var_c3647089672b_end
:var_c3647089672b
:var_c3647089672b_end
rmem reg0 >var_53f30c1bbc8a
set reg1 1
call >subtract
wmem >var_c3647089672b reg0
:while_b919f70c7419_begin
rmem reg0 >var_fba199342e82
rmem reg1 >var_c3647089672b
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_b919f70c7419_end
rmem reg0 >var_25d24ed0a55e
set reg1 10
call >subtract
wmem >var_25d24ed0a55e reg0
rmem reg0 >var_fba199342e82
add reg0 reg0 1
wmem >var_fba199342e82 reg0
jmp >while_b919f70c7419_begin
:while_b919f70c7419_end
rmem reg0 >var_ca204be163cf
rmem reg1 >var_25d24ed0a55e
add reg0 reg0 reg1
wmem >var_ca204be163cf reg0
:end_05f02b82d119
rmem reg0 >var_53f30c1bbc8a
add reg0 reg0 1
wmem >var_53f30c1bbc8a reg0
jmp >while_95136e286cfc_begin
:while_95136e286cfc_end
rmem reg0 >var_ca204be163cf
call >print_number
rmem reg0 >var_ca204be163cf
ret
ret
:int_end
jmp >flip_str_end
:flip_str
jmp >var_e79fa0295eec_end
:var_e79fa0295eec
:var_e79fa0295eec_end
wmem >var_e79fa0295eec reg0
jmp >var_915a8ff2edc5_end
:var_915a8ff2edc5
:var_915a8ff2edc5_end
call >alloc
wmem >var_915a8ff2edc5 reg0
jmp >var_56d38850d55c_end
:var_56d38850d55c
:var_56d38850d55c_end
rmem reg0 >var_e79fa0295eec
call >str_len
wmem >var_56d38850d55c reg0
jmp >var_84eddd296090_end
:var_84eddd296090
:var_84eddd296090_end
set reg0 0
wmem >var_84eddd296090 reg0
:while_b0539947bf4b_begin
rmem reg0 >var_84eddd296090
rmem reg1 >var_56d38850d55c
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_b0539947bf4b_end
jmp >var_9ebf611eb265_end
:var_9ebf611eb265
:var_9ebf611eb265_end
rmem reg0 >var_e79fa0295eec
rmem reg1 >var_84eddd296090
add reg0 reg0 reg1
wmem >var_9ebf611eb265 reg0
rmem reg0 >var_9ebf611eb265
rmem reg0 reg0
rmem reg0 >var_9ebf611eb265
rmem reg0 reg0
push reg0
rmem reg0 >var_84eddd296090
add reg0 reg0 1
wmem >var_84eddd296090 reg0
jmp >while_b0539947bf4b_begin
:while_b0539947bf4b_end
jmp >var_add3d36593ad_end
:var_add3d36593ad
:var_add3d36593ad_end
pop reg0
wmem >var_add3d36593ad reg0
set reg0 0
wmem >var_84eddd296090 reg0
:while_85ad476c4325_begin
rmem reg0 >var_84eddd296090
rmem reg1 >var_56d38850d55c
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_85ad476c4325_end
jmp >var_42b1848e3d69_end
:var_42b1848e3d69
:var_42b1848e3d69_end
rmem reg0 >var_915a8ff2edc5
rmem reg1 >var_84eddd296090
add reg0 reg0 reg1
wmem >var_42b1848e3d69 reg0
rmem reg0 >var_42b1848e3d69
rmem reg1 >var_add3d36593ad
wmem reg0 reg1
rmem reg0 >var_84eddd296090
add reg0 reg0 1
wmem >var_84eddd296090 reg0
pop reg0
wmem >var_add3d36593ad reg0
jmp >while_85ad476c4325_begin
:while_85ad476c4325_end
rmem reg0 >var_add3d36593ad
rmem reg0 >var_add3d36593ad
push reg0
rmem reg0 >var_915a8ff2edc5
ret
ret
:flip_str_end
jmp >str_cat_end
:str_cat
jmp >var_0b32b8f6c4f4_end
:var_0b32b8f6c4f4
:var_0b32b8f6c4f4_end
jmp >var_5bfeb56451b5_end
:var_5bfeb56451b5
:var_5bfeb56451b5_end
wmem >var_0b32b8f6c4f4 reg0
wmem >var_5bfeb56451b5 reg1
jmp >var_27a66b3d1fb7_end
:var_27a66b3d1fb7
:var_27a66b3d1fb7_end
rmem reg0 >var_0b32b8f6c4f4
call >str_len
wmem >var_27a66b3d1fb7 reg0
jmp >var_53abe7356aae_end
:var_53abe7356aae
:var_53abe7356aae_end
rmem reg0 >var_5bfeb56451b5
call >str_len
wmem >var_53abe7356aae reg0
set reg0 10
out reg0
set reg0 10
out reg0
jmp >var_40e36dfa965b_end
:var_40e36dfa965b
:var_40e36dfa965b_end
call >alloc
wmem >var_40e36dfa965b reg0
rmem reg0 >var_0b32b8f6c4f4
rmem reg1 >var_40e36dfa965b
rmem reg2 >var_27a66b3d1fb7
call >mem_cp
jmp >var_eb2fa2c33c68_end
:var_eb2fa2c33c68
:var_eb2fa2c33c68_end
rmem reg0 >var_40e36dfa965b
rmem reg1 >var_27a66b3d1fb7
add reg0 reg0 reg1
wmem >var_eb2fa2c33c68 reg0
rmem reg0 >var_53abe7356aae
add reg0 reg0 1
wmem >var_53abe7356aae reg0
rmem reg0 >var_5bfeb56451b5
rmem reg1 >var_eb2fa2c33c68
rmem reg2 >var_53abe7356aae
call >mem_cp
rmem reg0 >var_40e36dfa965b
ret
ret
:str_cat_end
jmp >input_end
:input
jmp >var_7d305adbddfd_end
:var_7d305adbddfd
:var_7d305adbddfd_end
set reg0 16384
wmem >var_7d305adbddfd reg0
jmp >var_32befb661278_end
:var_32befb661278
:var_32befb661278_end
in reg0
wmem >var_32befb661278 reg0
jmp >var_8c824372cfd8_end
:var_8c824372cfd8
:var_8c824372cfd8_end
rmem reg0 >var_32befb661278
set reg1 10
eq reg0 reg0 reg1
wmem >var_8c824372cfd8 reg0
:while_5f8b35967ca0_begin
rmem reg0 >var_8c824372cfd8
call >not
rmem reg1 >var_32befb661278
call >and
jf reg0 >while_5f8b35967ca0_end
rmem reg0 >var_7d305adbddfd
rmem reg1 >var_32befb661278
wmem reg0 reg1
rmem reg0 >var_7d305adbddfd
add reg0 reg0 1
wmem >var_7d305adbddfd reg0
in reg0
wmem >var_32befb661278 reg0
rmem reg0 >var_32befb661278
set reg1 10
eq reg0 reg0 reg1
wmem >var_8c824372cfd8 reg0
jmp >while_5f8b35967ca0_begin
:while_5f8b35967ca0_end
rmem reg0 >var_7d305adbddfd
set reg1 0
wmem reg0 reg1
jmp >var_fc6f01047a0a_end
:var_fc6f01047a0a
:var_fc6f01047a0a_end
call >alloc
wmem >var_fc6f01047a0a reg0
jmp >var_783556062773_end
:var_783556062773
:var_783556062773_end
set reg0 16384
call >str_len
wmem >var_783556062773 reg0
set reg0 16384
rmem reg1 >var_fc6f01047a0a
rmem reg2 >var_783556062773
call >mem_cp
rmem reg0 >var_fc6f01047a0a
ret
ret
:input_end
jmp >alloc_end
:alloc
jmp >var_a4f57b63bb62_end
:var_a4f57b63bb62
:var_a4f57b63bb62_end
set reg0 0
wmem >var_a4f57b63bb62 reg0
jmp >var_964a4ac4b434_end
:var_964a4ac4b434
:var_964a4ac4b434_end
set reg0 0
wmem >var_964a4ac4b434 reg0
:while_e6f2116170dc_begin
rmem reg0 >var_964a4ac4b434
set reg1 6
gt reg0 reg0 reg1
call >not
jf reg0 >while_e6f2116170dc_end
jmp >var_45a5ac299f4c_end
:var_45a5ac299f4c
:var_45a5ac299f4c_end
rmem reg0 >var_a4f57b63bb62
rmem reg0 reg0
wmem >var_45a5ac299f4c reg0
rmem reg0 >var_45a5ac299f4c
call >not
jf reg0 >end_1952d126285e
rmem reg0 >var_964a4ac4b434
add reg0 reg0 1
wmem >var_964a4ac4b434 reg0
:end_1952d126285e
rmem reg0 >var_45a5ac299f4c
jf reg0 >end_b0216dd8c357
set reg0 0
wmem >var_964a4ac4b434 reg0
:end_b0216dd8c357
rmem reg0 >var_a4f57b63bb62
add reg0 reg0 1
wmem >var_a4f57b63bb62 reg0
jmp >while_e6f2116170dc_begin
:while_e6f2116170dc_end
rmem reg0 >var_a4f57b63bb62
set reg1 1
call >subtract
wmem >var_a4f57b63bb62 reg0
rmem reg0 >var_a4f57b63bb62
ret
ret
:alloc_end
jmp >mem_cp_end
:mem_cp
jmp >var_fdc49b1dd85c_end
:var_fdc49b1dd85c
:var_fdc49b1dd85c_end
jmp >var_0e71f24e3a57_end
:var_0e71f24e3a57
:var_0e71f24e3a57_end
jmp >var_034c457ba1b9_end
:var_034c457ba1b9
:var_034c457ba1b9_end
wmem >var_fdc49b1dd85c reg0
wmem >var_0e71f24e3a57 reg1
wmem >var_034c457ba1b9 reg2
jmp >var_88770c0664c1_end
:var_88770c0664c1
:var_88770c0664c1_end
set reg0 0
wmem >var_88770c0664c1 reg0
:while_0add8bad5a70_begin
rmem reg0 >var_88770c0664c1
rmem reg1 >var_034c457ba1b9
gt reg0 reg0 reg1
call >not
jf reg0 >while_0add8bad5a70_end
jmp >var_0040323b65a7_end
:var_0040323b65a7
:var_0040323b65a7_end
rmem reg0 >var_fdc49b1dd85c
rmem reg1 >var_88770c0664c1
add reg0 reg0 reg1
wmem >var_0040323b65a7 reg0
jmp >var_7e78bb946188_end
:var_7e78bb946188
:var_7e78bb946188_end
rmem reg0 >var_0e71f24e3a57
rmem reg1 >var_88770c0664c1
add reg0 reg0 reg1
wmem >var_7e78bb946188 reg0
rmem reg0 >var_7e78bb946188
rmem reg1 >var_0040323b65a7
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_88770c0664c1
add reg0 reg0 1
wmem >var_88770c0664c1 reg0
jmp >while_0add8bad5a70_begin
:while_0add8bad5a70_end
ret
:mem_cp_end
jmp >str_len_end
:str_len
jmp >var_c99103b2998e_end
:var_c99103b2998e
:var_c99103b2998e_end
wmem >var_c99103b2998e reg0
jmp >var_7a8e4a8c4171_end
:var_7a8e4a8c4171
:var_7a8e4a8c4171_end
set reg0 0
wmem >var_7a8e4a8c4171 reg0
:while_ea7e5d0c4baa_begin
rmem reg0 >var_c99103b2998e
rmem reg0 reg0
jf reg0 >while_ea7e5d0c4baa_end
rmem reg0 >var_c99103b2998e
add reg0 reg0 1
wmem >var_c99103b2998e reg0
rmem reg0 >var_7a8e4a8c4171
add reg0 reg0 1
wmem >var_7a8e4a8c4171 reg0
jmp >while_ea7e5d0c4baa_begin
:while_ea7e5d0c4baa_end
rmem reg0 >var_7a8e4a8c4171
ret
ret
:str_len_end
jmp >println_end
:println
jmp >var_681dd5f88fbe_end
:var_681dd5f88fbe
:var_681dd5f88fbe_end
wmem >var_681dd5f88fbe reg0
rmem reg0 >var_681dd5f88fbe
call >print
set reg0 10
out reg0
ret
:println_end
jmp >print_end
:print
jmp >var_980329a7cc56_end
:var_980329a7cc56
:var_980329a7cc56_end
wmem >var_980329a7cc56 reg0
:while_ac24aad5b899_begin
rmem reg0 >var_980329a7cc56
rmem reg0 reg0
jf reg0 >while_ac24aad5b899_end
rmem reg0 >var_980329a7cc56
rmem reg0 reg0
out reg0
rmem reg0 >var_980329a7cc56
add reg0 reg0 1
wmem >var_980329a7cc56 reg0
jmp >while_ac24aad5b899_begin
:while_ac24aad5b899_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_18b3d3b6bf09_end
:var_18b3d3b6bf09
:var_18b3d3b6bf09_end
wmem >var_18b3d3b6bf09 reg0
rmem reg0 >var_18b3d3b6bf09
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_e9f8a8683546
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_e9f8a8683546
jmp >var_75489337eef2_end
:var_75489337eef2
:var_75489337eef2_end
jmp >var_26414abf2cc5_end
:var_26414abf2cc5
:var_26414abf2cc5_end
set reg0 0
wmem >var_26414abf2cc5 reg0
:while_11ab93848e4d_begin
rmem reg0 >var_18b3d3b6bf09
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_11ab93848e4d_end
rmem reg0 >var_18b3d3b6bf09
set reg1 10
mod reg0 reg0 reg1
wmem >var_75489337eef2 reg0
rmem reg0 >var_75489337eef2
rmem reg0 >var_75489337eef2
push reg0
rmem reg0 >var_26414abf2cc5
add reg0 reg0 1
wmem >var_26414abf2cc5 reg0
rmem reg0 >var_18b3d3b6bf09
set reg1 10
call >divide
wmem >var_18b3d3b6bf09 reg0
jmp >while_11ab93848e4d_begin
:while_11ab93848e4d_end
rmem reg0 >var_18b3d3b6bf09
set reg1 10
mod reg0 reg0 reg1
wmem >var_75489337eef2 reg0
rmem reg0 >var_75489337eef2
rmem reg0 >var_75489337eef2
push reg0
rmem reg0 >var_26414abf2cc5
add reg0 reg0 1
wmem >var_26414abf2cc5 reg0
jmp >var_0a7939584f01_end
:var_0a7939584f01
:var_0a7939584f01_end
set reg0 0
wmem >var_0a7939584f01 reg0
:while_412e0ff40caa_begin
rmem reg0 >var_0a7939584f01
rmem reg1 >var_26414abf2cc5
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_412e0ff40caa_end
rmem reg0 >var_0a7939584f01
set reg1 1
add reg0 reg0 reg1
wmem >var_0a7939584f01 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_412e0ff40caa_begin
:while_412e0ff40caa_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_1b60b9cdfeef_end
:var_1b60b9cdfeef
:var_1b60b9cdfeef_end
set reg0 0
wmem >var_1b60b9cdfeef reg0
:while_10ba8d09276d_begin
rmem reg0 >var_1b60b9cdfeef
rmem reg0 reg0
jf reg0 >while_10ba8d09276d_end
rmem reg0 >var_1b60b9cdfeef
add reg0 reg0 1
wmem >var_1b60b9cdfeef reg0
rmem reg0 >var_1b60b9cdfeef
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_10ba8d09276d_begin
:while_10ba8d09276d_end
ret
:dump_mem_end
jmp >var_39e1d624b597_end
:var_39e1d624b597
&e
&l
&l
&o
&,
32
&W
&o
&r
&l
&d
&!
32
&2
&!
0
:var_39e1d624b597_end
wmem >var_39e1d624b597 &H
set reg0 >var_39e1d624b597
call >print

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
