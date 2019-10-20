jmp >str_len_end
:str_len
jmp >var_460d876862f5_end
:var_460d876862f5
:var_460d876862f5_end
wmem >var_460d876862f5 reg0
jmp >var_c08423e38168_end
:var_c08423e38168
:var_c08423e38168_end
set reg0 0
wmem >var_c08423e38168 reg0
:while_02f000231ea8_begin
rmem reg0 >var_460d876862f5
rmem reg0 reg0
jf reg0 >while_02f000231ea8_end
rmem reg0 >var_460d876862f5
add reg0 reg0 1
wmem >var_460d876862f5 reg0
rmem reg0 >var_c08423e38168
add reg0 reg0 1
wmem >var_c08423e38168 reg0
jmp >while_02f000231ea8_begin
:while_02f000231ea8_end
rmem reg0 >var_c08423e38168
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_equal_end
:str_equal
jmp >var_d01383365013_end
:var_d01383365013
:var_d01383365013_end
jmp >var_93df86184093_end
:var_93df86184093
:var_93df86184093_end
wmem >var_d01383365013 reg0
wmem >var_93df86184093 reg1
jmp >var_8ba62bde3343_end
:var_8ba62bde3343
:var_8ba62bde3343_end
rmem reg0 >var_d01383365013
call >str_len
wmem >var_8ba62bde3343 reg0
jmp >var_b4a65e8d056e_end
:var_b4a65e8d056e
:var_b4a65e8d056e_end
rmem reg0 >var_93df86184093
call >str_len
wmem >var_b4a65e8d056e reg0
rmem reg0 >var_8ba62bde3343
rmem reg1 >var_b4a65e8d056e
eq reg0 reg0 reg1
call >not
jf reg0 >end_ac8674b8e159
set reg0 0
ret
:end_ac8674b8e159
jmp >var_3c64f942d201_end
:var_3c64f942d201
:var_3c64f942d201_end
set reg0 0
wmem >var_3c64f942d201 reg0
:for_df4e987341ef_begin
rmem reg0 >var_3c64f942d201
rmem reg1 >var_8ba62bde3343
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_df4e987341ef_end
jmp >var_acce143d41f3_end
:var_acce143d41f3
:var_acce143d41f3_end
rmem reg0 >var_d01383365013
rmem reg1 >var_3c64f942d201
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_acce143d41f3 reg0
jmp >var_192c5ef259a5_end
:var_192c5ef259a5
:var_192c5ef259a5_end
rmem reg0 >var_93df86184093
rmem reg1 >var_3c64f942d201
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_192c5ef259a5 reg0
rmem reg0 >var_acce143d41f3
rmem reg1 >var_192c5ef259a5
eq reg0 reg0 reg1
call >not
jf reg0 >end_702b5f114950
set reg0 0
ret
:end_702b5f114950
rmem reg0 >var_3c64f942d201
add reg0 reg0 1
wmem >var_3c64f942d201 reg0
jmp >for_df4e987341ef_begin
:for_df4e987341ef_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_9e58c14ea014_end
:var_9e58c14ea014
:var_9e58c14ea014_end
set reg0 16382
wmem >var_9e58c14ea014 reg0
:while_0babc7ffd150_begin
rmem reg0 >var_9e58c14ea014
rmem reg0 reg0
call >not
jf reg0 >while_0babc7ffd150_end
rmem reg0 >var_9e58c14ea014
set reg1 1
call >subtract
wmem >var_9e58c14ea014 reg0
jmp >while_0babc7ffd150_begin
:while_0babc7ffd150_end
rmem reg0 >var_9e58c14ea014
set reg1 2
add reg0 reg0 reg1
wmem >var_9e58c14ea014 reg0
rmem reg0 >var_9e58c14ea014
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_6bacf4193978_end
:var_6bacf4193978
:var_6bacf4193978_end
wmem >var_6bacf4193978 reg0
jmp >var_64885fa2f6f2_end
:var_64885fa2f6f2
:var_64885fa2f6f2_end
call >alloc
wmem >var_64885fa2f6f2 reg0
jmp >var_28765d9aebc3_end
:var_28765d9aebc3
:var_28765d9aebc3_end
rmem reg0 >var_64885fa2f6f2
rmem reg1 >var_6bacf4193978
add reg0 reg0 reg1
wmem >var_28765d9aebc3 reg0
rmem reg0 >var_28765d9aebc3
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_64885fa2f6f2
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_77047caf58ea_end
:var_77047caf58ea
:var_77047caf58ea_end
jmp >var_4f0f384e8010_end
:var_4f0f384e8010
:var_4f0f384e8010_end
jmp >var_6e744cfbd9aa_end
:var_6e744cfbd9aa
:var_6e744cfbd9aa_end
wmem >var_77047caf58ea reg0
wmem >var_4f0f384e8010 reg1
wmem >var_6e744cfbd9aa reg2
jmp >var_cf98177c5152_end
:var_cf98177c5152
:var_cf98177c5152_end
set reg0 0
wmem >var_cf98177c5152 reg0
:while_0b41e8e2ce6d_begin
rmem reg0 >var_cf98177c5152
rmem reg1 >var_6e744cfbd9aa
gt reg0 reg0 reg1
call >not
jf reg0 >while_0b41e8e2ce6d_end
jmp >var_31285f714189_end
:var_31285f714189
:var_31285f714189_end
rmem reg0 >var_77047caf58ea
rmem reg1 >var_cf98177c5152
add reg0 reg0 reg1
wmem >var_31285f714189 reg0
jmp >var_f35e59e5d3bb_end
:var_f35e59e5d3bb
:var_f35e59e5d3bb_end
rmem reg0 >var_4f0f384e8010
rmem reg1 >var_cf98177c5152
add reg0 reg0 reg1
wmem >var_f35e59e5d3bb reg0
rmem reg0 >var_f35e59e5d3bb
rmem reg1 >var_31285f714189
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_cf98177c5152
add reg0 reg0 1
wmem >var_cf98177c5152 reg0
jmp >while_0b41e8e2ce6d_begin
:while_0b41e8e2ce6d_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_cat_end
:str_cat
jmp >var_a4c1ee050f13_end
:var_a4c1ee050f13
:var_a4c1ee050f13_end
jmp >var_f2f47109ff86_end
:var_f2f47109ff86
:var_f2f47109ff86_end
wmem >var_a4c1ee050f13 reg0
wmem >var_f2f47109ff86 reg1
jmp >var_50c7b11943da_end
:var_50c7b11943da
:var_50c7b11943da_end
rmem reg0 >var_a4c1ee050f13
call >str_len
wmem >var_50c7b11943da reg0
jmp >var_f050716ffc14_end
:var_f050716ffc14
:var_f050716ffc14_end
rmem reg0 >var_f2f47109ff86
call >str_len
wmem >var_f050716ffc14 reg0
jmp >var_d3152cfb8f23_end
:var_d3152cfb8f23
:var_d3152cfb8f23_end
call >alloc
wmem >var_d3152cfb8f23 reg0
rmem reg0 >var_a4c1ee050f13
rmem reg1 >var_d3152cfb8f23
rmem reg2 >var_50c7b11943da
call >mem_cp
jmp >var_25734a51a618_end
:var_25734a51a618
:var_25734a51a618_end
rmem reg0 >var_d3152cfb8f23
rmem reg1 >var_50c7b11943da
add reg0 reg0 reg1
wmem >var_25734a51a618 reg0
rmem reg0 >var_f050716ffc14
add reg0 reg0 1
wmem >var_f050716ffc14 reg0
rmem reg0 >var_f2f47109ff86
rmem reg1 >var_25734a51a618
rmem reg2 >var_f050716ffc14
call >mem_cp
rmem reg0 >var_d3152cfb8f23
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_0ad825020ebe_end
:var_0ad825020ebe
:var_0ad825020ebe_end
wmem >var_0ad825020ebe reg0
jmp >var_35be6d1851ee_end
:var_35be6d1851ee
:var_35be6d1851ee_end
call >alloc
wmem >var_35be6d1851ee reg0
jmp >var_8f4caae96afb_end
:var_8f4caae96afb
:var_8f4caae96afb_end
rmem reg0 >var_0ad825020ebe
call >str_len
wmem >var_8f4caae96afb reg0
jmp >var_5ff04e6651d7_end
:var_5ff04e6651d7
:var_5ff04e6651d7_end
set reg0 0
wmem >var_5ff04e6651d7 reg0
:while_f4f1169de315_begin
rmem reg0 >var_5ff04e6651d7
rmem reg1 >var_8f4caae96afb
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_f4f1169de315_end
jmp >var_5b757535233d_end
:var_5b757535233d
:var_5b757535233d_end
rmem reg0 >var_0ad825020ebe
rmem reg1 >var_5ff04e6651d7
add reg0 reg0 reg1
wmem >var_5b757535233d reg0
rmem reg0 >var_5b757535233d
rmem reg0 reg0
rmem reg0 >var_5b757535233d
rmem reg0 reg0
push reg0
rmem reg0 >var_5ff04e6651d7
add reg0 reg0 1
wmem >var_5ff04e6651d7 reg0
jmp >while_f4f1169de315_begin
:while_f4f1169de315_end
jmp >var_e434e9d63dc8_end
:var_e434e9d63dc8
:var_e434e9d63dc8_end
pop reg0
wmem >var_e434e9d63dc8 reg0
set reg0 0
wmem >var_5ff04e6651d7 reg0
:while_19e0a9dc3b1d_begin
rmem reg0 >var_5ff04e6651d7
rmem reg1 >var_8f4caae96afb
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_19e0a9dc3b1d_end
jmp >var_3cecab9c8e7f_end
:var_3cecab9c8e7f
:var_3cecab9c8e7f_end
rmem reg0 >var_35be6d1851ee
rmem reg1 >var_5ff04e6651d7
add reg0 reg0 reg1
wmem >var_3cecab9c8e7f reg0
rmem reg0 >var_3cecab9c8e7f
rmem reg1 >var_e434e9d63dc8
wmem reg0 reg1
rmem reg0 >var_5ff04e6651d7
add reg0 reg0 1
wmem >var_5ff04e6651d7 reg0
pop reg0
wmem >var_e434e9d63dc8 reg0
jmp >while_19e0a9dc3b1d_begin
:while_19e0a9dc3b1d_end
rmem reg0 >var_e434e9d63dc8
rmem reg0 >var_e434e9d63dc8
push reg0
rmem reg0 >var_35be6d1851ee
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_4b3985cad735_end
:var_4b3985cad735
:var_4b3985cad735_end
set reg0 16384
wmem >var_4b3985cad735 reg0
jmp >var_4ee32cfbe031_end
:var_4ee32cfbe031
:var_4ee32cfbe031_end
in reg0
wmem >var_4ee32cfbe031 reg0
jmp >var_3a99b491cad9_end
:var_3a99b491cad9
:var_3a99b491cad9_end
rmem reg0 >var_4ee32cfbe031
set reg1 10
eq reg0 reg0 reg1
wmem >var_3a99b491cad9 reg0
:while_ef04d6be6c89_begin
rmem reg0 >var_3a99b491cad9
rmem reg1 >var_4ee32cfbe031
call >and
call >not
jf reg0 >while_ef04d6be6c89_end
rmem reg0 >var_4b3985cad735
rmem reg1 >var_4ee32cfbe031
wmem reg0 reg1
rmem reg0 >var_4b3985cad735
add reg0 reg0 1
wmem >var_4b3985cad735 reg0
in reg0
wmem >var_4ee32cfbe031 reg0
rmem reg0 >var_4ee32cfbe031
set reg1 10
eq reg0 reg0 reg1
wmem >var_3a99b491cad9 reg0
jmp >while_ef04d6be6c89_begin
:while_ef04d6be6c89_end
rmem reg0 >var_4b3985cad735
set reg1 0
wmem reg0 reg1
jmp >var_d8fd33926fa7_end
:var_d8fd33926fa7
:var_d8fd33926fa7_end
call >alloc
wmem >var_d8fd33926fa7 reg0
jmp >var_6075361bb586_end
:var_6075361bb586
:var_6075361bb586_end
set reg0 16384
call >str_len
wmem >var_6075361bb586 reg0
set reg0 16384
rmem reg1 >var_d8fd33926fa7
rmem reg2 >var_6075361bb586
call >mem_cp
rmem reg0 >var_d8fd33926fa7
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_feb741ee6d43_end
:var_feb741ee6d43
:var_feb741ee6d43_end
wmem >var_feb741ee6d43 reg0
:while_6d83770d0478_begin
rmem reg0 >var_feb741ee6d43
rmem reg0 reg0
jf reg0 >while_6d83770d0478_end
rmem reg0 >var_feb741ee6d43
rmem reg0 reg0
out reg0
rmem reg0 >var_feb741ee6d43
add reg0 reg0 1
wmem >var_feb741ee6d43 reg0
jmp >while_6d83770d0478_begin
:while_6d83770d0478_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_00f4f7b11045_end
:var_00f4f7b11045
:var_00f4f7b11045_end
wmem >var_00f4f7b11045 reg0
rmem reg0 >var_00f4f7b11045
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_c24ba04a4e5a_end
:var_c24ba04a4e5a
:var_c24ba04a4e5a_end
wmem >var_c24ba04a4e5a reg0
rmem reg0 >var_c24ba04a4e5a
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_f7a5aa392943
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_f7a5aa392943
jmp >var_61b0116a80a6_end
:var_61b0116a80a6
:var_61b0116a80a6_end
jmp >var_8ab37f956b53_end
:var_8ab37f956b53
:var_8ab37f956b53_end
set reg0 0
wmem >var_8ab37f956b53 reg0
:while_14c1c29be5d2_begin
rmem reg0 >var_c24ba04a4e5a
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_14c1c29be5d2_end
rmem reg0 >var_c24ba04a4e5a
set reg1 10
mod reg0 reg0 reg1
wmem >var_61b0116a80a6 reg0
rmem reg0 >var_61b0116a80a6
rmem reg0 >var_61b0116a80a6
push reg0
rmem reg0 >var_8ab37f956b53
add reg0 reg0 1
wmem >var_8ab37f956b53 reg0
rmem reg0 >var_c24ba04a4e5a
set reg1 10
call >divide
wmem >var_c24ba04a4e5a reg0
jmp >while_14c1c29be5d2_begin
:while_14c1c29be5d2_end
rmem reg0 >var_c24ba04a4e5a
set reg1 10
mod reg0 reg0 reg1
wmem >var_61b0116a80a6 reg0
rmem reg0 >var_61b0116a80a6
rmem reg0 >var_61b0116a80a6
push reg0
rmem reg0 >var_8ab37f956b53
add reg0 reg0 1
wmem >var_8ab37f956b53 reg0
jmp >var_ad7a4af8b30c_end
:var_ad7a4af8b30c
:var_ad7a4af8b30c_end
set reg0 0
wmem >var_ad7a4af8b30c reg0
:while_e40b73561924_begin
rmem reg0 >var_ad7a4af8b30c
rmem reg1 >var_8ab37f956b53
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_e40b73561924_end
rmem reg0 >var_ad7a4af8b30c
set reg1 1
add reg0 reg0 reg1
wmem >var_ad7a4af8b30c reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_e40b73561924_begin
:while_e40b73561924_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_603496186367_end
:var_603496186367
:var_603496186367_end
set reg0 0
wmem >var_603496186367 reg0
:while_ca1b9c107b65_begin
rmem reg0 >var_603496186367
rmem reg0 reg0
jf reg0 >while_ca1b9c107b65_end
rmem reg0 >var_603496186367
add reg0 reg0 1
wmem >var_603496186367 reg0
rmem reg0 >var_603496186367
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_ca1b9c107b65_begin
:while_ca1b9c107b65_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_95ce86c8ba93_end
:var_95ce86c8ba93
:var_95ce86c8ba93_end
wmem >var_95ce86c8ba93 reg0
jmp >var_42db702b02c8_end
:var_42db702b02c8
:var_42db702b02c8_end
rmem reg0 >var_95ce86c8ba93
call >flip_str
wmem >var_42db702b02c8 reg0
jmp >var_b8447364b8bd_end
:var_b8447364b8bd
:var_b8447364b8bd_end
rmem reg0 >var_42db702b02c8
call >str_len
wmem >var_b8447364b8bd reg0
rmem reg0 >var_b8447364b8bd
set reg1 1
call >subtract
wmem >var_b8447364b8bd reg0
jmp >var_7aafe5779900_end
:var_7aafe5779900
:var_7aafe5779900_end
set reg0 0
wmem >var_7aafe5779900 reg0
jmp >var_f61a5047efa4_end
:var_f61a5047efa4
:var_f61a5047efa4_end
set reg0 0
wmem >var_f61a5047efa4 reg0
:while_fb65529704ff_begin
rmem reg0 >var_7aafe5779900
rmem reg1 >var_b8447364b8bd
gt reg0 reg0 reg1
call >not
jf reg0 >while_fb65529704ff_end
jmp >var_f6219fbbee05_end
:var_f6219fbbee05
:var_f6219fbbee05_end
rmem reg0 >var_42db702b02c8
rmem reg1 >var_7aafe5779900
add reg0 reg0 reg1
wmem >var_f6219fbbee05 reg0
rmem reg0 >var_f6219fbbee05
rmem reg0 reg0
wmem >var_f6219fbbee05 reg0
jmp >var_ec86c14b3034_end
:var_ec86c14b3034
:var_ec86c14b3034_end
rmem reg0 >var_f6219fbbee05
set reg1 47
gt reg0 reg0 reg1
wmem >var_ec86c14b3034 reg0
jmp >var_59feb08341ab_end
:var_59feb08341ab
:var_59feb08341ab_end
rmem reg0 >var_f6219fbbee05
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_59feb08341ab reg0
rmem reg0 >var_ec86c14b3034
rmem reg1 >var_59feb08341ab
call >and
jf reg0 >end_44f3fdb5a9b8
jmp >var_880bad10f801_end
:var_880bad10f801
:var_880bad10f801_end
rmem reg0 >var_f6219fbbee05
set reg1 48
call >subtract
wmem >var_880bad10f801 reg0
rmem reg0 >var_880bad10f801
call >print_number
set reg0 10
out reg0
jmp >var_8f5b29264d3c_end
:var_8f5b29264d3c
:var_8f5b29264d3c_end
set reg0 0
wmem >var_8f5b29264d3c reg0
jmp >var_946369cb410b_end
:var_946369cb410b
:var_946369cb410b_end
rmem reg0 >var_7aafe5779900
set reg1 1
call >subtract
wmem >var_946369cb410b reg0
:while_33932827051c_begin
rmem reg0 >var_8f5b29264d3c
rmem reg1 >var_946369cb410b
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_33932827051c_end
rmem reg0 >var_880bad10f801
set reg1 10
mult reg0 reg0 reg1
wmem >var_880bad10f801 reg0
rmem reg0 >var_8f5b29264d3c
add reg0 reg0 1
wmem >var_8f5b29264d3c reg0
jmp >while_33932827051c_begin
:while_33932827051c_end
rmem reg0 >var_f61a5047efa4
rmem reg1 >var_880bad10f801
add reg0 reg0 reg1
wmem >var_f61a5047efa4 reg0
:end_44f3fdb5a9b8
rmem reg0 >var_7aafe5779900
add reg0 reg0 1
wmem >var_7aafe5779900 reg0
jmp >while_fb65529704ff_begin
:while_fb65529704ff_end
rmem reg0 >var_f61a5047efa4
call >print_number
rmem reg0 >var_f61a5047efa4
ret
ret
:int_end
set reg0 >int
jmp >test_mem_end
:test_mem
jmp >var_9004a8972fac_end
:var_9004a8972fac
:var_9004a8972fac_end
set reg0 0
wmem >var_9004a8972fac reg0
jmp >var_5a80ca2cac0d_end
:var_5a80ca2cac0d
:var_5a80ca2cac0d_end
set reg0 0
wmem >var_5a80ca2cac0d reg0
:for_42af43ce383f_begin
rmem reg0 >var_5a80ca2cac0d
set reg1 32768
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_42af43ce383f_end
rmem reg0 >var_5a80ca2cac0d
rmem reg0 reg1
jf reg0 >end_36572a1ab7fb
rmem reg0 >var_5a80ca2cac0d
wmem >var_9004a8972fac reg0
:end_36572a1ab7fb
rmem reg0 >var_5a80ca2cac0d
add reg0 reg0 1
wmem >var_5a80ca2cac0d reg0
jmp >for_42af43ce383f_begin
:for_42af43ce383f_end
rmem reg0 >var_9004a8972fac
call >print_number
jmp >var_03537a7962f0_end
:var_03537a7962f0
0
:var_03537a7962f0_end
wmem >var_03537a7962f0 32
set reg0 >var_03537a7962f0
call >println
ret
:test_mem_end
set reg0 >test_mem
jmp >test_dump_mem_end
:test_dump_mem
jmp >var_6afd08ae7e4d_end
:var_6afd08ae7e4d
:var_6afd08ae7e4d_end
set reg0 0
wmem >var_6afd08ae7e4d reg0
jmp >var_d6c4d7e63658_end
:var_d6c4d7e63658
:var_d6c4d7e63658_end
jmp >var_3c9a0b7062f5_end
:var_3c9a0b7062f5
0
:var_3c9a0b7062f5_end
wmem >var_3c9a0b7062f5 32
set reg0 >var_3c9a0b7062f5
call >str_len
wmem >var_d6c4d7e63658 reg0
rmem reg0 >var_d6c4d7e63658
call >print_number
ret
:test_dump_mem_end
set reg0 >test_dump_mem
jmp >internal_dump_mem_end
:internal_dump_mem
jmp >var_59966769736a_end
:var_59966769736a
:var_59966769736a_end
set reg0 0
wmem >var_59966769736a reg0
jmp >var_1812429bfc08_end
:var_1812429bfc08
:var_1812429bfc08_end
set reg0 0
wmem >var_1812429bfc08 reg0
:while_a0ebe8098693_begin
rmem reg0 >var_1812429bfc08
set reg1 5
eq reg0 reg0 reg1
call >not
jf reg0 >while_a0ebe8098693_end
rmem reg0 >var_59966769736a
rmem reg0 reg0
jf reg0 >end_ba25106ef1f7
rmem reg0 >var_1812429bfc08
add reg0 reg0 1
wmem >var_1812429bfc08 reg0
:end_ba25106ef1f7
rmem reg0 >var_59966769736a
add reg0 reg0 1
wmem >var_59966769736a reg0
rmem reg0 >var_59966769736a
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_a0ebe8098693_begin
:while_a0ebe8098693_end
ret
:internal_dump_mem_end
set reg0 >internal_dump_mem
jmp >interpret_command_end
:interpret_command
jmp >var_4ba36bb99a9a_end
:var_4ba36bb99a9a
:var_4ba36bb99a9a_end
wmem >var_4ba36bb99a9a reg0
rmem reg0 >var_4ba36bb99a9a
jmp >var_8549ac8dab7f_end
:var_8549ac8dab7f
&e
&l
&p
0
:var_8549ac8dab7f_end
wmem >var_8549ac8dab7f &h
set reg1 >var_8549ac8dab7f
call >str_equal
jf reg0 >end_76c109c1b71b
jmp >var_6d202f8931b7_end
:var_6d202f8931b7
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
:var_6d202f8931b7_end
wmem >var_6d202f8931b7 &T
set reg0 >var_6d202f8931b7
call >println
:end_76c109c1b71b
rmem reg0 >var_4ba36bb99a9a
jmp >var_e0e85d5cd90d_end
:var_e0e85d5cd90d
&e
&m
0
:var_e0e85d5cd90d_end
wmem >var_e0e85d5cd90d &m
set reg1 >var_e0e85d5cd90d
call >str_equal
jf reg0 >end_e87757c7531f
call >internal_dump_mem
:end_e87757c7531f
rmem reg0 >var_4ba36bb99a9a
jmp >var_48f6428fa138_end
:var_48f6428fa138
&e
&m
&_
&u
&s
&a
&g
&e
0
:var_48f6428fa138_end
wmem >var_48f6428fa138 &m
set reg1 >var_48f6428fa138
call >str_equal
jf reg0 >end_ae690a1fb76e
call >test_dump_mem
:end_ae690a1fb76e
ret
:interpret_command_end
set reg0 >interpret_command
jmp >interpret_loop_end
:interpret_loop
jmp >var_4507c813d264_end
:var_4507c813d264
32
0
:var_4507c813d264_end
wmem >var_4507c813d264 &>
set reg0 >var_4507c813d264
call >print
jmp >var_ba498d481e8b_end
:var_ba498d481e8b
:var_ba498d481e8b_end
call >input
wmem >var_ba498d481e8b reg0
rmem reg0 >var_ba498d481e8b
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

