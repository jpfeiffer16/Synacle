jmp >str_equal_end
:str_equal
jmp >var_b399b5181372_end
:var_b399b5181372
:var_b399b5181372_end
jmp >var_5f798f1fc3ba_end
:var_5f798f1fc3ba
:var_5f798f1fc3ba_end
wmem >var_b399b5181372 reg0
wmem >var_5f798f1fc3ba reg1
jmp >var_9cdbce1f4173_end
:var_9cdbce1f4173
:var_9cdbce1f4173_end
rmem reg0 >var_b399b5181372
call >str_len
wmem >var_9cdbce1f4173 reg0
jmp >var_8600b6742335_end
:var_8600b6742335
:var_8600b6742335_end
rmem reg0 >var_5f798f1fc3ba
call >str_len
wmem >var_8600b6742335 reg0
rmem reg0 >var_9cdbce1f4173
rmem reg1 >var_8600b6742335
eq reg0 reg0 reg1
call >not
jf reg0 >end_db8f682320ae
set reg0 0
ret
:end_db8f682320ae
jmp >var_65fe6e3ab55e_end
:var_65fe6e3ab55e
:var_65fe6e3ab55e_end
set reg0 0
wmem >var_65fe6e3ab55e reg0
:for_d1c014a00c76_begin
rmem reg0 >var_65fe6e3ab55e
rmem reg1 >var_9cdbce1f4173
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_9cdbce1f4173
jf reg0 >for_d1c014a00c76_end
jmp >var_2b975f56a611_end
:var_2b975f56a611
:var_2b975f56a611_end
rmem reg0 >var_b399b5181372
rmem reg1 >var_65fe6e3ab55e
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_2b975f56a611 reg0
jmp >var_d902088697e0_end
:var_d902088697e0
:var_d902088697e0_end
rmem reg0 >var_5f798f1fc3ba
rmem reg1 >var_65fe6e3ab55e
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_d902088697e0 reg0
rmem reg0 >var_2b975f56a611
rmem reg1 >var_d902088697e0
eq reg0 reg0 reg1
call >not
jf reg0 >end_523a6a78940e
set reg0 0
ret
:end_523a6a78940e
rmem reg0 >var_65fe6e3ab55e
add reg0 reg0 1
wmem >var_65fe6e3ab55e reg0
jmp >for_d1c014a00c76_begin
:for_d1c014a00c76_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_0f248586ca29_end
:var_0f248586ca29
:var_0f248586ca29_end
set reg0 16382
wmem >var_0f248586ca29 reg0
:while_0b77115b8395_begin
rmem reg0 >var_0f248586ca29
rmem reg0 reg0
call >not
jf reg0 >while_0b77115b8395_end
rmem reg0 >var_0f248586ca29
set reg1 1
call >subtract
wmem >var_0f248586ca29 reg0
jmp >while_0b77115b8395_begin
:while_0b77115b8395_end
rmem reg0 >var_0f248586ca29
set reg1 2
add reg0 reg0 reg1
wmem >var_0f248586ca29 reg0
rmem reg0 >var_0f248586ca29
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_4f78d8e589de_end
:var_4f78d8e589de
:var_4f78d8e589de_end
wmem >var_4f78d8e589de reg0
jmp >var_8738e7595e1c_end
:var_8738e7595e1c
:var_8738e7595e1c_end
call >alloc
wmem >var_8738e7595e1c reg0
jmp >var_7c3159a02ff1_end
:var_7c3159a02ff1
:var_7c3159a02ff1_end
rmem reg0 >var_8738e7595e1c
rmem reg1 >var_4f78d8e589de
add reg0 reg0 reg1
wmem >var_7c3159a02ff1 reg0
rmem reg0 >var_7c3159a02ff1
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_8738e7595e1c
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_26c1079cdcda_end
:var_26c1079cdcda
:var_26c1079cdcda_end
jmp >var_124222e0db65_end
:var_124222e0db65
:var_124222e0db65_end
jmp >var_0fe6eb8768df_end
:var_0fe6eb8768df
:var_0fe6eb8768df_end
wmem >var_26c1079cdcda reg0
wmem >var_124222e0db65 reg1
wmem >var_0fe6eb8768df reg2
jmp >var_1ed4f437f582_end
:var_1ed4f437f582
:var_1ed4f437f582_end
set reg0 0
wmem >var_1ed4f437f582 reg0
:while_1aace1cd3240_begin
rmem reg0 >var_1ed4f437f582
rmem reg1 >var_0fe6eb8768df
gt reg0 reg0 reg1
call >not
rmem reg0 >var_0fe6eb8768df
jf reg0 >while_1aace1cd3240_end
jmp >var_903820fe8d64_end
:var_903820fe8d64
:var_903820fe8d64_end
rmem reg0 >var_26c1079cdcda
rmem reg1 >var_1ed4f437f582
add reg0 reg0 reg1
wmem >var_903820fe8d64 reg0
jmp >var_b4ac66aabbe2_end
:var_b4ac66aabbe2
:var_b4ac66aabbe2_end
rmem reg0 >var_124222e0db65
rmem reg1 >var_1ed4f437f582
add reg0 reg0 reg1
wmem >var_b4ac66aabbe2 reg0
rmem reg0 >var_b4ac66aabbe2
rmem reg1 >var_903820fe8d64
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_1ed4f437f582
add reg0 reg0 1
wmem >var_1ed4f437f582 reg0
jmp >while_1aace1cd3240_begin
:while_1aace1cd3240_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_bb81bc82df34_end
:var_bb81bc82df34
:var_bb81bc82df34_end
wmem >var_bb81bc82df34 reg0
jmp >var_831c61878015_end
:var_831c61878015
:var_831c61878015_end
set reg0 0
wmem >var_831c61878015 reg0
:while_430bc9891bb5_begin
rmem reg0 >var_bb81bc82df34
rmem reg0 reg0
jf reg0 >while_430bc9891bb5_end
rmem reg0 >var_bb81bc82df34
add reg0 reg0 1
wmem >var_bb81bc82df34 reg0
rmem reg0 >var_831c61878015
add reg0 reg0 1
wmem >var_831c61878015 reg0
jmp >while_430bc9891bb5_begin
:while_430bc9891bb5_end
rmem reg0 >var_831c61878015
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_3cc6909be88f_end
:var_3cc6909be88f
:var_3cc6909be88f_end
jmp >var_3ad6a898c5b2_end
:var_3ad6a898c5b2
:var_3ad6a898c5b2_end
wmem >var_3cc6909be88f reg0
wmem >var_3ad6a898c5b2 reg1
jmp >var_120adcfa53ac_end
:var_120adcfa53ac
:var_120adcfa53ac_end
rmem reg0 >var_3cc6909be88f
call >str_len
wmem >var_120adcfa53ac reg0
jmp >var_75264218d4f4_end
:var_75264218d4f4
:var_75264218d4f4_end
rmem reg0 >var_3ad6a898c5b2
call >str_len
wmem >var_75264218d4f4 reg0
jmp >var_5cdce2727348_end
:var_5cdce2727348
:var_5cdce2727348_end
call >alloc
wmem >var_5cdce2727348 reg0
rmem reg0 >var_3cc6909be88f
rmem reg1 >var_5cdce2727348
rmem reg2 >var_120adcfa53ac
call >mem_cp
jmp >var_5e7814fe11b1_end
:var_5e7814fe11b1
:var_5e7814fe11b1_end
rmem reg0 >var_5cdce2727348
rmem reg1 >var_120adcfa53ac
add reg0 reg0 reg1
wmem >var_5e7814fe11b1 reg0
rmem reg0 >var_75264218d4f4
add reg0 reg0 1
wmem >var_75264218d4f4 reg0
rmem reg0 >var_3ad6a898c5b2
rmem reg1 >var_5e7814fe11b1
rmem reg2 >var_75264218d4f4
call >mem_cp
rmem reg0 >var_5cdce2727348
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_cc97f31ff10f_end
:var_cc97f31ff10f
:var_cc97f31ff10f_end
wmem >var_cc97f31ff10f reg0
jmp >var_34e80b369042_end
:var_34e80b369042
:var_34e80b369042_end
call >alloc
wmem >var_34e80b369042 reg0
jmp >var_40c8bf987397_end
:var_40c8bf987397
:var_40c8bf987397_end
rmem reg0 >var_cc97f31ff10f
call >str_len
wmem >var_40c8bf987397 reg0
jmp >var_f652037eafa3_end
:var_f652037eafa3
:var_f652037eafa3_end
set reg0 0
wmem >var_f652037eafa3 reg0
:while_f4512b58eb91_begin
rmem reg0 >var_f652037eafa3
rmem reg1 >var_40c8bf987397
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_40c8bf987397
jf reg0 >while_f4512b58eb91_end
jmp >var_acfb2a3a6ad4_end
:var_acfb2a3a6ad4
:var_acfb2a3a6ad4_end
rmem reg0 >var_cc97f31ff10f
rmem reg1 >var_f652037eafa3
add reg0 reg0 reg1
wmem >var_acfb2a3a6ad4 reg0
rmem reg0 >var_acfb2a3a6ad4
rmem reg0 reg0
rmem reg0 >var_acfb2a3a6ad4
rmem reg0 reg0
push reg0
rmem reg0 >var_f652037eafa3
add reg0 reg0 1
wmem >var_f652037eafa3 reg0
jmp >while_f4512b58eb91_begin
:while_f4512b58eb91_end
jmp >var_b1622270c44e_end
:var_b1622270c44e
:var_b1622270c44e_end
pop reg0
wmem >var_b1622270c44e reg0
set reg0 0
wmem >var_f652037eafa3 reg0
:while_7d9d1a497f3b_begin
rmem reg0 >var_f652037eafa3
rmem reg1 >var_40c8bf987397
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_40c8bf987397
jf reg0 >while_7d9d1a497f3b_end
jmp >var_354424522c7d_end
:var_354424522c7d
:var_354424522c7d_end
rmem reg0 >var_34e80b369042
rmem reg1 >var_f652037eafa3
add reg0 reg0 reg1
wmem >var_354424522c7d reg0
rmem reg0 >var_354424522c7d
rmem reg1 >var_b1622270c44e
wmem reg0 reg1
rmem reg0 >var_f652037eafa3
add reg0 reg0 1
wmem >var_f652037eafa3 reg0
pop reg0
wmem >var_b1622270c44e reg0
jmp >while_7d9d1a497f3b_begin
:while_7d9d1a497f3b_end
rmem reg0 >var_b1622270c44e
rmem reg0 >var_b1622270c44e
push reg0
rmem reg0 >var_34e80b369042
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_26b292ff2f09_end
:var_26b292ff2f09
:var_26b292ff2f09_end
set reg0 16384
wmem >var_26b292ff2f09 reg0
jmp >var_0af1b564504b_end
:var_0af1b564504b
:var_0af1b564504b_end
in reg0
wmem >var_0af1b564504b reg0
jmp >var_f50c0a9a1998_end
:var_f50c0a9a1998
:var_f50c0a9a1998_end
rmem reg0 >var_0af1b564504b
set reg1 10
eq reg0 reg0 reg1
wmem >var_f50c0a9a1998 reg0
:while_1278385d291c_begin
rmem reg0 >var_f50c0a9a1998
rmem reg1 >var_0af1b564504b
call >and
call >not
jf reg0 >while_1278385d291c_end
rmem reg0 >var_26b292ff2f09
rmem reg1 >var_0af1b564504b
wmem reg0 reg1
rmem reg0 >var_26b292ff2f09
add reg0 reg0 1
wmem >var_26b292ff2f09 reg0
in reg0
wmem >var_0af1b564504b reg0
rmem reg0 >var_0af1b564504b
set reg1 10
eq reg0 reg0 reg1
wmem >var_f50c0a9a1998 reg0
jmp >while_1278385d291c_begin
:while_1278385d291c_end
rmem reg0 >var_26b292ff2f09
set reg1 0
wmem reg0 reg1
jmp >var_efcee273f72d_end
:var_efcee273f72d
:var_efcee273f72d_end
call >alloc
wmem >var_efcee273f72d reg0
jmp >var_34865ad0f441_end
:var_34865ad0f441
:var_34865ad0f441_end
set reg0 16384
call >str_len
wmem >var_34865ad0f441 reg0
set reg0 16384
rmem reg1 >var_efcee273f72d
rmem reg2 >var_34865ad0f441
call >mem_cp
rmem reg0 >var_efcee273f72d
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_5a2d7bf2b8cc_end
:var_5a2d7bf2b8cc
:var_5a2d7bf2b8cc_end
wmem >var_5a2d7bf2b8cc reg0
:while_d1d2a491d55e_begin
rmem reg0 >var_5a2d7bf2b8cc
rmem reg0 reg0
jf reg0 >while_d1d2a491d55e_end
rmem reg0 >var_5a2d7bf2b8cc
rmem reg0 reg0
out reg0
rmem reg0 >var_5a2d7bf2b8cc
add reg0 reg0 1
wmem >var_5a2d7bf2b8cc reg0
jmp >while_d1d2a491d55e_begin
:while_d1d2a491d55e_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_ea858b1863da_end
:var_ea858b1863da
:var_ea858b1863da_end
wmem >var_ea858b1863da reg0
rmem reg0 >var_ea858b1863da
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_ac9177aeee66_end
:var_ac9177aeee66
:var_ac9177aeee66_end
wmem >var_ac9177aeee66 reg0
rmem reg0 >var_ac9177aeee66
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_893f1b4ea894
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_893f1b4ea894
jmp >var_1792f33b7f01_end
:var_1792f33b7f01
:var_1792f33b7f01_end
jmp >var_850a926e3cda_end
:var_850a926e3cda
:var_850a926e3cda_end
set reg0 0
wmem >var_850a926e3cda reg0
:while_76296d41c318_begin
rmem reg0 >var_ac9177aeee66
set reg1 10
gt reg0 reg0 reg1
set reg0 10
jf reg0 >while_76296d41c318_end
rmem reg0 >var_ac9177aeee66
set reg1 10
mod reg0 reg0 reg1
wmem >var_1792f33b7f01 reg0
rmem reg0 >var_1792f33b7f01
rmem reg0 >var_1792f33b7f01
push reg0
rmem reg0 >var_850a926e3cda
add reg0 reg0 1
wmem >var_850a926e3cda reg0
rmem reg0 >var_ac9177aeee66
set reg1 10
call >divide
wmem >var_ac9177aeee66 reg0
jmp >while_76296d41c318_begin
:while_76296d41c318_end
rmem reg0 >var_ac9177aeee66
set reg1 10
mod reg0 reg0 reg1
wmem >var_1792f33b7f01 reg0
rmem reg0 >var_1792f33b7f01
rmem reg0 >var_1792f33b7f01
push reg0
rmem reg0 >var_850a926e3cda
add reg0 reg0 1
wmem >var_850a926e3cda reg0
jmp >var_34b6b48adbd0_end
:var_34b6b48adbd0
:var_34b6b48adbd0_end
set reg0 0
wmem >var_34b6b48adbd0 reg0
:while_83ec1c7553fc_begin
rmem reg0 >var_34b6b48adbd0
rmem reg1 >var_850a926e3cda
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_850a926e3cda
jf reg0 >while_83ec1c7553fc_end
rmem reg0 >var_34b6b48adbd0
set reg1 1
add reg0 reg0 reg1
wmem >var_34b6b48adbd0 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_83ec1c7553fc_begin
:while_83ec1c7553fc_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_57efd03e6adc_end
:var_57efd03e6adc
:var_57efd03e6adc_end
set reg0 0
wmem >var_57efd03e6adc reg0
:while_1616e5e3ee21_begin
rmem reg0 >var_57efd03e6adc
rmem reg0 reg0
jf reg0 >while_1616e5e3ee21_end
rmem reg0 >var_57efd03e6adc
add reg0 reg0 1
wmem >var_57efd03e6adc reg0
rmem reg0 >var_57efd03e6adc
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_1616e5e3ee21_begin
:while_1616e5e3ee21_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_9e4996aa830d_end
:var_9e4996aa830d
:var_9e4996aa830d_end
wmem >var_9e4996aa830d reg0
jmp >var_3f28e51c4e38_end
:var_3f28e51c4e38
:var_3f28e51c4e38_end
rmem reg0 >var_9e4996aa830d
call >flip_str
wmem >var_3f28e51c4e38 reg0
jmp >var_cf6af264ce4f_end
:var_cf6af264ce4f
:var_cf6af264ce4f_end
rmem reg0 >var_3f28e51c4e38
call >str_len
wmem >var_cf6af264ce4f reg0
rmem reg0 >var_cf6af264ce4f
set reg1 1
call >subtract
wmem >var_cf6af264ce4f reg0
jmp >var_83f15719fba4_end
:var_83f15719fba4
:var_83f15719fba4_end
set reg0 0
wmem >var_83f15719fba4 reg0
jmp >var_ef59db9ac8f2_end
:var_ef59db9ac8f2
:var_ef59db9ac8f2_end
set reg0 0
wmem >var_ef59db9ac8f2 reg0
:while_7ee3b8d5debf_begin
rmem reg0 >var_83f15719fba4
rmem reg1 >var_cf6af264ce4f
gt reg0 reg0 reg1
call >not
rmem reg0 >var_cf6af264ce4f
jf reg0 >while_7ee3b8d5debf_end
jmp >var_f6ca3aaf52b7_end
:var_f6ca3aaf52b7
:var_f6ca3aaf52b7_end
rmem reg0 >var_3f28e51c4e38
rmem reg1 >var_83f15719fba4
add reg0 reg0 reg1
wmem >var_f6ca3aaf52b7 reg0
rmem reg0 >var_f6ca3aaf52b7
rmem reg0 reg0
wmem >var_f6ca3aaf52b7 reg0
jmp >var_56430e49dcb8_end
:var_56430e49dcb8
:var_56430e49dcb8_end
rmem reg0 >var_f6ca3aaf52b7
set reg1 47
gt reg0 reg0 reg1
wmem >var_56430e49dcb8 reg0
jmp >var_30ab2e954429_end
:var_30ab2e954429
:var_30ab2e954429_end
rmem reg0 >var_f6ca3aaf52b7
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_30ab2e954429 reg0
rmem reg0 >var_56430e49dcb8
rmem reg1 >var_30ab2e954429
call >and
jf reg0 >end_a7d49a0e1517
jmp >var_f3cc275db172_end
:var_f3cc275db172
:var_f3cc275db172_end
rmem reg0 >var_f6ca3aaf52b7
set reg1 48
call >subtract
wmem >var_f3cc275db172 reg0
rmem reg0 >var_f3cc275db172
call >print_number
set reg0 10
out reg0
jmp >var_1e05c3a583ed_end
:var_1e05c3a583ed
:var_1e05c3a583ed_end
set reg0 0
wmem >var_1e05c3a583ed reg0
jmp >var_5c6acb22eb6b_end
:var_5c6acb22eb6b
:var_5c6acb22eb6b_end
rmem reg0 >var_83f15719fba4
set reg1 1
call >subtract
wmem >var_5c6acb22eb6b reg0
:while_ef6d2b43e845_begin
rmem reg0 >var_1e05c3a583ed
rmem reg1 >var_5c6acb22eb6b
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_5c6acb22eb6b
jf reg0 >while_ef6d2b43e845_end
rmem reg0 >var_f3cc275db172
set reg1 10
call >subtract
wmem >var_f3cc275db172 reg0
rmem reg0 >var_1e05c3a583ed
add reg0 reg0 1
wmem >var_1e05c3a583ed reg0
jmp >while_ef6d2b43e845_begin
:while_ef6d2b43e845_end
rmem reg0 >var_ef59db9ac8f2
rmem reg1 >var_f3cc275db172
add reg0 reg0 reg1
wmem >var_ef59db9ac8f2 reg0
:end_a7d49a0e1517
rmem reg0 >var_83f15719fba4
add reg0 reg0 1
wmem >var_83f15719fba4 reg0
jmp >while_7ee3b8d5debf_begin
:while_7ee3b8d5debf_end
rmem reg0 >var_ef59db9ac8f2
call >print_number
rmem reg0 >var_ef59db9ac8f2
ret
ret
:int_end
set reg0 >int
jmp >main_end
:main
jmp >var_2b7a3ed57c78_end
:var_2b7a3ed57c78
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
:var_2b7a3ed57c78_end
wmem >var_2b7a3ed57c78 &E
set reg0 >var_2b7a3ed57c78
call >print
jmp >var_c218df8b5ca6_end
:var_c218df8b5ca6
:var_c218df8b5ca6_end
call >input
wmem >var_c218df8b5ca6 reg0
rmem reg0 >var_c218df8b5ca6
jmp >var_d4b5d62dcc37_end
:var_d4b5d62dcc37
&x
&i
&t
0
:var_d4b5d62dcc37_end
wmem >var_d4b5d62dcc37 &e
set reg1 >var_d4b5d62dcc37
call >str_equal
jf reg0 >end_d489bcdd797e
ret
:end_d489bcdd797e
jmp >var_80ad4046a4e8_end
:var_80ad4046a4e8
:var_80ad4046a4e8_end
call >alloc
wmem >var_80ad4046a4e8 reg0
rmem reg0 >var_80ad4046a4e8
rmem reg1 >var_c218df8b5ca6
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_c218df8b5ca6
add reg0 reg0 1
wmem >var_c218df8b5ca6 reg0
rmem reg0 >var_c218df8b5ca6
rmem reg1 >var_80ad4046a4e8
call >str_cat
jmp >var_6966c48d34f6_end
:var_6966c48d34f6
&y
0
:var_6966c48d34f6_end
wmem >var_6966c48d34f6 &a
set reg1 >var_6966c48d34f6
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

