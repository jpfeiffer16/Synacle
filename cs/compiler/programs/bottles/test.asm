jmp >str_equal_end
:str_equal
jmp >var_2d5afe8bd0a1_end
:var_2d5afe8bd0a1
:var_2d5afe8bd0a1_end
jmp >var_30075f06c6f3_end
:var_30075f06c6f3
:var_30075f06c6f3_end
wmem >var_2d5afe8bd0a1 reg0
wmem >var_30075f06c6f3 reg1
jmp >var_3279d7a515ec_end
:var_3279d7a515ec
:var_3279d7a515ec_end
rmem reg0 >var_2d5afe8bd0a1
call >str_len
wmem >var_3279d7a515ec reg0
jmp >var_283cc20a6aae_end
:var_283cc20a6aae
:var_283cc20a6aae_end
rmem reg0 >var_30075f06c6f3
call >str_len
wmem >var_283cc20a6aae reg0
jmp >var_3d5a4329b47b_end
:var_3d5a4329b47b
:var_3d5a4329b47b_end
rmem reg0 >var_3279d7a515ec
rmem reg1 >var_283cc20a6aae
eq reg0 reg0 reg1
wmem >var_3d5a4329b47b reg0
rmem reg0 >var_3d5a4329b47b
call >not
jf reg0 >end_dfc5072874f2
set reg0 0
ret
:end_dfc5072874f2
jmp >var_3c3460da2519_end
:var_3c3460da2519
:var_3c3460da2519_end
set reg0 0
wmem >var_3c3460da2519 reg0
:for_f33bd170b0c5_begin
rmem reg0 >var_3c3460da2519
rmem reg1 >var_3279d7a515ec
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_f33bd170b0c5_end
jmp >var_a686f5c5cafc_end
:var_a686f5c5cafc
:var_a686f5c5cafc_end
rmem reg0 >var_2d5afe8bd0a1
rmem reg1 >var_3c3460da2519
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_a686f5c5cafc reg0
jmp >var_c49e7a0bea90_end
:var_c49e7a0bea90
:var_c49e7a0bea90_end
rmem reg0 >var_30075f06c6f3
rmem reg1 >var_3c3460da2519
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_c49e7a0bea90 reg0
rmem reg0 >var_a686f5c5cafc
rmem reg1 >var_c49e7a0bea90
eq reg0 reg0 reg1
call >not
jf reg0 >end_54cf6d840f9b
set reg0 0
ret
:end_54cf6d840f9b
rmem reg0 >var_3c3460da2519
add reg0 reg0 1
wmem >var_3c3460da2519 reg0
jmp >for_f33bd170b0c5_begin
:for_f33bd170b0c5_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_19abc84d42ff_end
:var_19abc84d42ff
:var_19abc84d42ff_end
set reg0 0
wmem >var_19abc84d42ff reg0
jmp >var_e6bd80d298d7_end
:var_e6bd80d298d7
:var_e6bd80d298d7_end
set reg0 0
wmem >var_e6bd80d298d7 reg0
:while_3c23fa419767_begin
rmem reg0 >var_e6bd80d298d7
set reg1 6
gt reg0 reg0 reg1
call >not
jf reg0 >while_3c23fa419767_end
jmp >var_b725bb660dc9_end
:var_b725bb660dc9
:var_b725bb660dc9_end
rmem reg0 >var_19abc84d42ff
rmem reg0 reg0
wmem >var_b725bb660dc9 reg0
rmem reg0 >var_b725bb660dc9
call >not
jf reg0 >end_16a50bcc7e6c
rmem reg0 >var_e6bd80d298d7
add reg0 reg0 1
wmem >var_e6bd80d298d7 reg0
:end_16a50bcc7e6c
rmem reg0 >var_b725bb660dc9
jf reg0 >end_7ff7f0070044
set reg0 0
wmem >var_e6bd80d298d7 reg0
:end_7ff7f0070044
rmem reg0 >var_19abc84d42ff
add reg0 reg0 1
wmem >var_19abc84d42ff reg0
jmp >while_3c23fa419767_begin
:while_3c23fa419767_end
rmem reg0 >var_19abc84d42ff
set reg1 1
call >subtract
wmem >var_19abc84d42ff reg0
rmem reg0 >var_19abc84d42ff
ret
ret
:alloc_end
set reg0 >alloc
jmp >mem_cp_end
:mem_cp
jmp >var_f9026dee40a7_end
:var_f9026dee40a7
:var_f9026dee40a7_end
jmp >var_7244971fd3fd_end
:var_7244971fd3fd
:var_7244971fd3fd_end
jmp >var_70fed39e3a36_end
:var_70fed39e3a36
:var_70fed39e3a36_end
wmem >var_f9026dee40a7 reg0
wmem >var_7244971fd3fd reg1
wmem >var_70fed39e3a36 reg2
jmp >var_3e1514723965_end
:var_3e1514723965
:var_3e1514723965_end
set reg0 0
wmem >var_3e1514723965 reg0
:while_f9fd0c8f2f51_begin
rmem reg0 >var_3e1514723965
rmem reg1 >var_70fed39e3a36
gt reg0 reg0 reg1
call >not
jf reg0 >while_f9fd0c8f2f51_end
jmp >var_0f582b042edc_end
:var_0f582b042edc
:var_0f582b042edc_end
rmem reg0 >var_f9026dee40a7
rmem reg1 >var_3e1514723965
add reg0 reg0 reg1
wmem >var_0f582b042edc reg0
jmp >var_67920a8c0cd2_end
:var_67920a8c0cd2
:var_67920a8c0cd2_end
rmem reg0 >var_7244971fd3fd
rmem reg1 >var_3e1514723965
add reg0 reg0 reg1
wmem >var_67920a8c0cd2 reg0
rmem reg0 >var_67920a8c0cd2
rmem reg1 >var_0f582b042edc
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_3e1514723965
add reg0 reg0 1
wmem >var_3e1514723965 reg0
jmp >while_f9fd0c8f2f51_begin
:while_f9fd0c8f2f51_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_17eeb6654ee4_end
:var_17eeb6654ee4
:var_17eeb6654ee4_end
wmem >var_17eeb6654ee4 reg0
jmp >var_96aa4c56330e_end
:var_96aa4c56330e
:var_96aa4c56330e_end
set reg0 0
wmem >var_96aa4c56330e reg0
:while_88df1a416671_begin
rmem reg0 >var_17eeb6654ee4
rmem reg0 reg0
jf reg0 >while_88df1a416671_end
rmem reg0 >var_17eeb6654ee4
add reg0 reg0 1
wmem >var_17eeb6654ee4 reg0
rmem reg0 >var_96aa4c56330e
add reg0 reg0 1
wmem >var_96aa4c56330e reg0
jmp >while_88df1a416671_begin
:while_88df1a416671_end
rmem reg0 >var_96aa4c56330e
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_37f70a1941e7_end
:var_37f70a1941e7
:var_37f70a1941e7_end
jmp >var_451cc4d82097_end
:var_451cc4d82097
:var_451cc4d82097_end
wmem >var_37f70a1941e7 reg0
wmem >var_451cc4d82097 reg1
jmp >var_38176711e3a0_end
:var_38176711e3a0
:var_38176711e3a0_end
rmem reg0 >var_37f70a1941e7
call >str_len
wmem >var_38176711e3a0 reg0
jmp >var_b9ada3d35f85_end
:var_b9ada3d35f85
:var_b9ada3d35f85_end
rmem reg0 >var_451cc4d82097
call >str_len
wmem >var_b9ada3d35f85 reg0
jmp >var_7fe8c00ce876_end
:var_7fe8c00ce876
:var_7fe8c00ce876_end
call >alloc
wmem >var_7fe8c00ce876 reg0
rmem reg0 >var_37f70a1941e7
rmem reg1 >var_7fe8c00ce876
rmem reg2 >var_38176711e3a0
call >mem_cp
jmp >var_23d824360c18_end
:var_23d824360c18
:var_23d824360c18_end
rmem reg0 >var_7fe8c00ce876
rmem reg1 >var_38176711e3a0
add reg0 reg0 reg1
wmem >var_23d824360c18 reg0
rmem reg0 >var_b9ada3d35f85
add reg0 reg0 1
wmem >var_b9ada3d35f85 reg0
rmem reg0 >var_451cc4d82097
rmem reg1 >var_23d824360c18
rmem reg2 >var_b9ada3d35f85
call >mem_cp
rmem reg0 >var_7fe8c00ce876
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_50fd93712aeb_end
:var_50fd93712aeb
:var_50fd93712aeb_end
wmem >var_50fd93712aeb reg0
jmp >var_56dea198a0b6_end
:var_56dea198a0b6
:var_56dea198a0b6_end
call >alloc
wmem >var_56dea198a0b6 reg0
jmp >var_e285f060d85a_end
:var_e285f060d85a
:var_e285f060d85a_end
rmem reg0 >var_50fd93712aeb
call >str_len
wmem >var_e285f060d85a reg0
jmp >var_b787c8856956_end
:var_b787c8856956
:var_b787c8856956_end
set reg0 0
wmem >var_b787c8856956 reg0
:while_d3fe2199bf01_begin
rmem reg0 >var_b787c8856956
rmem reg1 >var_e285f060d85a
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_d3fe2199bf01_end
jmp >var_e3f54b32cc05_end
:var_e3f54b32cc05
:var_e3f54b32cc05_end
rmem reg0 >var_50fd93712aeb
rmem reg1 >var_b787c8856956
add reg0 reg0 reg1
wmem >var_e3f54b32cc05 reg0
rmem reg0 >var_e3f54b32cc05
rmem reg0 reg0
rmem reg0 >var_e3f54b32cc05
rmem reg0 reg0
push reg0
rmem reg0 >var_b787c8856956
add reg0 reg0 1
wmem >var_b787c8856956 reg0
jmp >while_d3fe2199bf01_begin
:while_d3fe2199bf01_end
jmp >var_cc3a4406ec5b_end
:var_cc3a4406ec5b
:var_cc3a4406ec5b_end
pop reg0
wmem >var_cc3a4406ec5b reg0
set reg0 0
wmem >var_b787c8856956 reg0
:while_9afb3827c1ea_begin
rmem reg0 >var_b787c8856956
rmem reg1 >var_e285f060d85a
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_9afb3827c1ea_end
jmp >var_4bb7c971b4e8_end
:var_4bb7c971b4e8
:var_4bb7c971b4e8_end
rmem reg0 >var_56dea198a0b6
rmem reg1 >var_b787c8856956
add reg0 reg0 reg1
wmem >var_4bb7c971b4e8 reg0
rmem reg0 >var_4bb7c971b4e8
rmem reg1 >var_cc3a4406ec5b
wmem reg0 reg1
rmem reg0 >var_b787c8856956
add reg0 reg0 1
wmem >var_b787c8856956 reg0
pop reg0
wmem >var_cc3a4406ec5b reg0
jmp >while_9afb3827c1ea_begin
:while_9afb3827c1ea_end
rmem reg0 >var_cc3a4406ec5b
rmem reg0 >var_cc3a4406ec5b
push reg0
rmem reg0 >var_56dea198a0b6
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_41ea021430fd_end
:var_41ea021430fd
:var_41ea021430fd_end
set reg0 16384
wmem >var_41ea021430fd reg0
jmp >var_605bc3870446_end
:var_605bc3870446
:var_605bc3870446_end
in reg0
wmem >var_605bc3870446 reg0
jmp >var_32043644c97f_end
:var_32043644c97f
:var_32043644c97f_end
rmem reg0 >var_605bc3870446
set reg1 10
eq reg0 reg0 reg1
wmem >var_32043644c97f reg0
:while_13438b029109_begin
rmem reg0 >var_32043644c97f
rmem reg1 >var_605bc3870446
call >and
call >not
jf reg0 >while_13438b029109_end
rmem reg0 >var_41ea021430fd
rmem reg1 >var_605bc3870446
wmem reg0 reg1
rmem reg0 >var_41ea021430fd
add reg0 reg0 1
wmem >var_41ea021430fd reg0
in reg0
wmem >var_605bc3870446 reg0
rmem reg0 >var_605bc3870446
set reg1 10
eq reg0 reg0 reg1
wmem >var_32043644c97f reg0
jmp >while_13438b029109_begin
:while_13438b029109_end
rmem reg0 >var_41ea021430fd
set reg1 0
wmem reg0 reg1
jmp >var_b5742f3e6075_end
:var_b5742f3e6075
:var_b5742f3e6075_end
call >alloc
wmem >var_b5742f3e6075 reg0
jmp >var_e22ce1a5bb7e_end
:var_e22ce1a5bb7e
:var_e22ce1a5bb7e_end
set reg0 16384
call >str_len
wmem >var_e22ce1a5bb7e reg0
set reg0 16384
rmem reg1 >var_b5742f3e6075
rmem reg2 >var_e22ce1a5bb7e
call >mem_cp
rmem reg0 >var_b5742f3e6075
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_6ad11e243b36_end
:var_6ad11e243b36
:var_6ad11e243b36_end
wmem >var_6ad11e243b36 reg0
:while_afdd805c1132_begin
rmem reg0 >var_6ad11e243b36
rmem reg0 reg0
jf reg0 >while_afdd805c1132_end
rmem reg0 >var_6ad11e243b36
rmem reg0 reg0
out reg0
rmem reg0 >var_6ad11e243b36
add reg0 reg0 1
wmem >var_6ad11e243b36 reg0
jmp >while_afdd805c1132_begin
:while_afdd805c1132_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_8c3fe9a25df3_end
:var_8c3fe9a25df3
:var_8c3fe9a25df3_end
wmem >var_8c3fe9a25df3 reg0
rmem reg0 >var_8c3fe9a25df3
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_850ca9a9fb9e_end
:var_850ca9a9fb9e
:var_850ca9a9fb9e_end
wmem >var_850ca9a9fb9e reg0
rmem reg0 >var_850ca9a9fb9e
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_898b424e1fdb
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_898b424e1fdb
jmp >var_2fcc32140df1_end
:var_2fcc32140df1
:var_2fcc32140df1_end
jmp >var_8e40b6e386fe_end
:var_8e40b6e386fe
:var_8e40b6e386fe_end
set reg0 0
wmem >var_8e40b6e386fe reg0
:while_b5c3e0132a6d_begin
rmem reg0 >var_850ca9a9fb9e
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_b5c3e0132a6d_end
rmem reg0 >var_850ca9a9fb9e
set reg1 10
mod reg0 reg0 reg1
wmem >var_2fcc32140df1 reg0
rmem reg0 >var_2fcc32140df1
rmem reg0 >var_2fcc32140df1
push reg0
rmem reg0 >var_8e40b6e386fe
add reg0 reg0 1
wmem >var_8e40b6e386fe reg0
rmem reg0 >var_850ca9a9fb9e
set reg1 10
call >divide
wmem >var_850ca9a9fb9e reg0
jmp >while_b5c3e0132a6d_begin
:while_b5c3e0132a6d_end
rmem reg0 >var_850ca9a9fb9e
set reg1 10
mod reg0 reg0 reg1
wmem >var_2fcc32140df1 reg0
rmem reg0 >var_2fcc32140df1
rmem reg0 >var_2fcc32140df1
push reg0
rmem reg0 >var_8e40b6e386fe
add reg0 reg0 1
wmem >var_8e40b6e386fe reg0
jmp >var_38324a8d8f70_end
:var_38324a8d8f70
:var_38324a8d8f70_end
set reg0 0
wmem >var_38324a8d8f70 reg0
:while_9a400e7031eb_begin
rmem reg0 >var_38324a8d8f70
rmem reg1 >var_8e40b6e386fe
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_9a400e7031eb_end
rmem reg0 >var_38324a8d8f70
set reg1 1
add reg0 reg0 reg1
wmem >var_38324a8d8f70 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_9a400e7031eb_begin
:while_9a400e7031eb_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_8c0c95fd4282_end
:var_8c0c95fd4282
:var_8c0c95fd4282_end
set reg0 0
wmem >var_8c0c95fd4282 reg0
:while_0432a7057cca_begin
rmem reg0 >var_8c0c95fd4282
rmem reg0 reg0
jf reg0 >while_0432a7057cca_end
rmem reg0 >var_8c0c95fd4282
add reg0 reg0 1
wmem >var_8c0c95fd4282 reg0
rmem reg0 >var_8c0c95fd4282
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_0432a7057cca_begin
:while_0432a7057cca_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_86d79366ecf6_end
:var_86d79366ecf6
:var_86d79366ecf6_end
wmem >var_86d79366ecf6 reg0
jmp >var_f28e44e282cd_end
:var_f28e44e282cd
:var_f28e44e282cd_end
rmem reg0 >var_86d79366ecf6
call >flip_str
wmem >var_f28e44e282cd reg0
jmp >var_c4552789f318_end
:var_c4552789f318
:var_c4552789f318_end
rmem reg0 >var_f28e44e282cd
call >str_len
wmem >var_c4552789f318 reg0
rmem reg0 >var_c4552789f318
set reg1 1
call >subtract
wmem >var_c4552789f318 reg0
jmp >var_10754443ce24_end
:var_10754443ce24
:var_10754443ce24_end
set reg0 0
wmem >var_10754443ce24 reg0
jmp >var_e5cfda75d4ac_end
:var_e5cfda75d4ac
:var_e5cfda75d4ac_end
set reg0 0
wmem >var_e5cfda75d4ac reg0
:while_e5fb7d5824e9_begin
rmem reg0 >var_10754443ce24
rmem reg1 >var_c4552789f318
gt reg0 reg0 reg1
call >not
jf reg0 >while_e5fb7d5824e9_end
jmp >var_eb7160ea8e49_end
:var_eb7160ea8e49
:var_eb7160ea8e49_end
rmem reg0 >var_f28e44e282cd
rmem reg1 >var_10754443ce24
add reg0 reg0 reg1
wmem >var_eb7160ea8e49 reg0
rmem reg0 >var_eb7160ea8e49
rmem reg0 reg0
wmem >var_eb7160ea8e49 reg0
jmp >var_c6bcb4fadaa9_end
:var_c6bcb4fadaa9
:var_c6bcb4fadaa9_end
rmem reg0 >var_eb7160ea8e49
set reg1 47
gt reg0 reg0 reg1
wmem >var_c6bcb4fadaa9 reg0
jmp >var_3df9d41e9f7c_end
:var_3df9d41e9f7c
:var_3df9d41e9f7c_end
rmem reg0 >var_eb7160ea8e49
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_3df9d41e9f7c reg0
rmem reg0 >var_c6bcb4fadaa9
rmem reg1 >var_3df9d41e9f7c
call >and
jf reg0 >end_ae694ad75220
jmp >var_bc4f3f5d0496_end
:var_bc4f3f5d0496
:var_bc4f3f5d0496_end
rmem reg0 >var_eb7160ea8e49
set reg1 48
call >subtract
wmem >var_bc4f3f5d0496 reg0
rmem reg0 >var_bc4f3f5d0496
call >print_number
set reg0 10
out reg0
jmp >var_ee9956779802_end
:var_ee9956779802
:var_ee9956779802_end
set reg0 0
wmem >var_ee9956779802 reg0
jmp >var_8527bf62e902_end
:var_8527bf62e902
:var_8527bf62e902_end
rmem reg0 >var_10754443ce24
set reg1 1
call >subtract
wmem >var_8527bf62e902 reg0
:while_3e45cb5c8727_begin
rmem reg0 >var_ee9956779802
rmem reg1 >var_8527bf62e902
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_3e45cb5c8727_end
rmem reg0 >var_bc4f3f5d0496
set reg1 10
call >subtract
wmem >var_bc4f3f5d0496 reg0
rmem reg0 >var_ee9956779802
add reg0 reg0 1
wmem >var_ee9956779802 reg0
jmp >while_3e45cb5c8727_begin
:while_3e45cb5c8727_end
rmem reg0 >var_e5cfda75d4ac
rmem reg1 >var_bc4f3f5d0496
add reg0 reg0 reg1
wmem >var_e5cfda75d4ac reg0
:end_ae694ad75220
rmem reg0 >var_10754443ce24
add reg0 reg0 1
wmem >var_10754443ce24 reg0
jmp >while_e5fb7d5824e9_begin
:while_e5fb7d5824e9_end
rmem reg0 >var_e5cfda75d4ac
call >print_number
rmem reg0 >var_e5cfda75d4ac
ret
ret
:int_end
set reg0 >int
jmp >var_27394319563f_end
:var_27394319563f
:var_27394319563f_end
set reg0 3
wmem >var_27394319563f reg0
jmp >main_end
:main
:while_d9e9779687a2_begin
set reg0 1
jf reg0 >while_d9e9779687a2_end
jmp >var_f4a78d59d34b_end
:var_f4a78d59d34b
&o
&u
32
&h
&a
&v
&e
32
0
:var_f4a78d59d34b_end
wmem >var_f4a78d59d34b &Y
set reg0 >var_f4a78d59d34b
call >print
rmem reg0 >var_27394319563f
call >print_number
jmp >var_aada45f30d88_end
:var_aada45f30d88
&b
&o
&t
&t
&l
&e
&s
32
&l
&e
&f
&t
&.
32
&W
&h
&a
&t
32
&d
&o
32
&y
&o
&u
32
&d
&o
&?
0
:var_aada45f30d88_end
wmem >var_aada45f30d88 32
set reg0 >var_aada45f30d88
call >println
jmp >var_82a892f83a22_end
:var_82a892f83a22
:var_82a892f83a22_end
call >input
wmem >var_82a892f83a22 reg0
rmem reg0 >var_82a892f83a22
jmp >var_d61de25ab281_end
:var_d61de25ab281
0
:var_d61de25ab281_end
wmem >var_d61de25ab281 &+
set reg1 >var_d61de25ab281
call >str_equal
jf reg0 >end_fbbd14d52040
jmp >var_aa3714a61553_end
:var_aa3714a61553
&o
&u
32
&a
&d
&d
32
&o
&n
&e
0
:var_aa3714a61553_end
wmem >var_aa3714a61553 &Y
set reg0 >var_aa3714a61553
call >println
rmem reg0 >var_27394319563f
add reg0 reg0 1
wmem >var_27394319563f reg0
:end_fbbd14d52040
rmem reg0 >var_82a892f83a22
jmp >var_7b88703968d4_end
:var_7b88703968d4
0
:var_7b88703968d4_end
wmem >var_7b88703968d4 &-
set reg1 >var_7b88703968d4
call >str_equal
jf reg0 >end_93a5a54f1465
jmp >var_2a0079fc9a4f_end
:var_2a0079fc9a4f
&o
&u
32
&d
&r
&i
&n
&k
32
&o
&n
&e
0
:var_2a0079fc9a4f_end
wmem >var_2a0079fc9a4f &Y
set reg0 >var_2a0079fc9a4f
call >println
rmem reg0 >var_27394319563f
set reg1 1
call >subtract
wmem >var_27394319563f reg0
:end_93a5a54f1465
rmem reg0 >var_27394319563f
set reg1 1
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >end_30c77af71fb7
jmp >var_e57479d4ca0c_end
:var_e57479d4ca0c
&o
&u
32
&d
&i
&e
&.
&.
&.
0
:var_e57479d4ca0c_end
wmem >var_e57479d4ca0c &Y
set reg0 >var_e57479d4ca0c
call >println
ret
:end_30c77af71fb7
jmp >while_d9e9779687a2_begin
:while_d9e9779687a2_end
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

