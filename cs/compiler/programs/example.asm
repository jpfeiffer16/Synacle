jmp >alloc_end
:alloc
jmp >var_56f7828b8b43_end
:var_56f7828b8b43
:var_56f7828b8b43_end
set reg0 0
wmem >var_56f7828b8b43 reg0
jmp >var_b2227137f5cd_end
:var_b2227137f5cd
:var_b2227137f5cd_end
set reg0 0
wmem >var_b2227137f5cd reg0
:while_bfea5091ec08_begin
rmem reg0 >var_b2227137f5cd
set reg1 6
gt reg0 reg0 reg1
call >not
jf reg0 >while_bfea5091ec08_end
jmp >var_fb3eb5ce6c3b_end
:var_fb3eb5ce6c3b
:var_fb3eb5ce6c3b_end
rmem reg0 >var_56f7828b8b43
rmem reg0 reg0
wmem >var_fb3eb5ce6c3b reg0
rmem reg0 >var_fb3eb5ce6c3b
call >not
jf reg0 >end_068fb50e44b7
rmem reg0 >var_b2227137f5cd
add reg0 reg0 1
wmem >var_b2227137f5cd reg0
:end_068fb50e44b7
rmem reg0 >var_fb3eb5ce6c3b
jf reg0 >end_0387219c8065
set reg0 0
wmem >var_b2227137f5cd reg0
:end_0387219c8065
rmem reg0 >var_56f7828b8b43
add reg0 reg0 1
wmem >var_56f7828b8b43 reg0
jmp >while_bfea5091ec08_begin
:while_bfea5091ec08_end
rmem reg0 >var_56f7828b8b43
set reg1 1
call >subtract
wmem >var_56f7828b8b43 reg0
rmem reg0 >var_56f7828b8b43
ret
ret
:alloc_end
set reg0 >alloc
jmp >mem_cp_end
:mem_cp
jmp >var_6a62abe76e86_end
:var_6a62abe76e86
:var_6a62abe76e86_end
jmp >var_a18e7923d1c9_end
:var_a18e7923d1c9
:var_a18e7923d1c9_end
jmp >var_7f41f32773dc_end
:var_7f41f32773dc
:var_7f41f32773dc_end
wmem >var_6a62abe76e86 reg0
wmem >var_a18e7923d1c9 reg1
wmem >var_7f41f32773dc reg2
jmp >var_0fa8a8c37e32_end
:var_0fa8a8c37e32
:var_0fa8a8c37e32_end
set reg0 0
wmem >var_0fa8a8c37e32 reg0
:while_d8e8f3beadfe_begin
rmem reg0 >var_0fa8a8c37e32
rmem reg1 >var_7f41f32773dc
gt reg0 reg0 reg1
call >not
jf reg0 >while_d8e8f3beadfe_end
jmp >var_4d90ba436773_end
:var_4d90ba436773
:var_4d90ba436773_end
rmem reg0 >var_6a62abe76e86
rmem reg1 >var_0fa8a8c37e32
add reg0 reg0 reg1
wmem >var_4d90ba436773 reg0
jmp >var_3d1c3a43c098_end
:var_3d1c3a43c098
:var_3d1c3a43c098_end
rmem reg0 >var_a18e7923d1c9
rmem reg1 >var_0fa8a8c37e32
add reg0 reg0 reg1
wmem >var_3d1c3a43c098 reg0
rmem reg0 >var_3d1c3a43c098
rmem reg1 >var_4d90ba436773
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_0fa8a8c37e32
add reg0 reg0 1
wmem >var_0fa8a8c37e32 reg0
jmp >while_d8e8f3beadfe_begin
:while_d8e8f3beadfe_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_1e1a4981bca1_end
:var_1e1a4981bca1
:var_1e1a4981bca1_end
wmem >var_1e1a4981bca1 reg0
jmp >var_d461abe629b7_end
:var_d461abe629b7
:var_d461abe629b7_end
set reg0 0
wmem >var_d461abe629b7 reg0
:while_8dd7f0086c5f_begin
rmem reg0 >var_1e1a4981bca1
rmem reg0 reg0
jf reg0 >while_8dd7f0086c5f_end
rmem reg0 >var_1e1a4981bca1
add reg0 reg0 1
wmem >var_1e1a4981bca1 reg0
rmem reg0 >var_d461abe629b7
add reg0 reg0 1
wmem >var_d461abe629b7 reg0
jmp >while_8dd7f0086c5f_begin
:while_8dd7f0086c5f_end
rmem reg0 >var_d461abe629b7
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_0a96ec148403_end
:var_0a96ec148403
:var_0a96ec148403_end
jmp >var_76c2b3f195c8_end
:var_76c2b3f195c8
:var_76c2b3f195c8_end
wmem >var_0a96ec148403 reg0
wmem >var_76c2b3f195c8 reg1
jmp >var_34c22356c69b_end
:var_34c22356c69b
:var_34c22356c69b_end
rmem reg0 >var_0a96ec148403
call >str_len
wmem >var_34c22356c69b reg0
jmp >var_4f468aa32df7_end
:var_4f468aa32df7
:var_4f468aa32df7_end
rmem reg0 >var_76c2b3f195c8
call >str_len
wmem >var_4f468aa32df7 reg0
set reg0 10
out reg0
set reg0 10
out reg0
jmp >var_b4c175072385_end
:var_b4c175072385
:var_b4c175072385_end
call >alloc
wmem >var_b4c175072385 reg0
rmem reg0 >var_0a96ec148403
rmem reg1 >var_b4c175072385
rmem reg2 >var_34c22356c69b
call >mem_cp
jmp >var_9c6a35848d11_end
:var_9c6a35848d11
:var_9c6a35848d11_end
rmem reg0 >var_b4c175072385
rmem reg1 >var_34c22356c69b
add reg0 reg0 reg1
wmem >var_9c6a35848d11 reg0
rmem reg0 >var_4f468aa32df7
add reg0 reg0 1
wmem >var_4f468aa32df7 reg0
rmem reg0 >var_76c2b3f195c8
rmem reg1 >var_9c6a35848d11
rmem reg2 >var_4f468aa32df7
call >mem_cp
rmem reg0 >var_b4c175072385
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_d387fc9ae450_end
:var_d387fc9ae450
:var_d387fc9ae450_end
wmem >var_d387fc9ae450 reg0
jmp >var_bd257a10d676_end
:var_bd257a10d676
:var_bd257a10d676_end
call >alloc
wmem >var_bd257a10d676 reg0
jmp >var_edda9090adef_end
:var_edda9090adef
:var_edda9090adef_end
rmem reg0 >var_d387fc9ae450
call >str_len
wmem >var_edda9090adef reg0
jmp >var_36c582f488da_end
:var_36c582f488da
:var_36c582f488da_end
set reg0 0
wmem >var_36c582f488da reg0
:while_0da916880486_begin
rmem reg0 >var_36c582f488da
rmem reg1 >var_edda9090adef
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_0da916880486_end
jmp >var_00ac44af76bc_end
:var_00ac44af76bc
:var_00ac44af76bc_end
rmem reg0 >var_d387fc9ae450
rmem reg1 >var_36c582f488da
add reg0 reg0 reg1
wmem >var_00ac44af76bc reg0
rmem reg0 >var_00ac44af76bc
rmem reg0 reg0
rmem reg0 >var_00ac44af76bc
rmem reg0 reg0
push reg0
rmem reg0 >var_36c582f488da
add reg0 reg0 1
wmem >var_36c582f488da reg0
jmp >while_0da916880486_begin
:while_0da916880486_end
jmp >var_c633c8135fef_end
:var_c633c8135fef
:var_c633c8135fef_end
pop reg0
wmem >var_c633c8135fef reg0
set reg0 0
wmem >var_36c582f488da reg0
:while_406095871deb_begin
rmem reg0 >var_36c582f488da
rmem reg1 >var_edda9090adef
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_406095871deb_end
jmp >var_166230df78bc_end
:var_166230df78bc
:var_166230df78bc_end
rmem reg0 >var_bd257a10d676
rmem reg1 >var_36c582f488da
add reg0 reg0 reg1
wmem >var_166230df78bc reg0
rmem reg0 >var_166230df78bc
rmem reg1 >var_c633c8135fef
wmem reg0 reg1
rmem reg0 >var_36c582f488da
add reg0 reg0 1
wmem >var_36c582f488da reg0
pop reg0
wmem >var_c633c8135fef reg0
jmp >while_406095871deb_begin
:while_406095871deb_end
rmem reg0 >var_c633c8135fef
rmem reg0 >var_c633c8135fef
push reg0
rmem reg0 >var_bd257a10d676
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_91bb6178eeb3_end
:var_91bb6178eeb3
:var_91bb6178eeb3_end
set reg0 16384
wmem >var_91bb6178eeb3 reg0
jmp >var_984242643449_end
:var_984242643449
:var_984242643449_end
in reg0
wmem >var_984242643449 reg0
jmp >var_2cfbc7bb4699_end
:var_2cfbc7bb4699
:var_2cfbc7bb4699_end
rmem reg0 >var_984242643449
set reg1 10
eq reg0 reg0 reg1
wmem >var_2cfbc7bb4699 reg0
:while_efc47673a55a_begin
rmem reg0 >var_2cfbc7bb4699
call >not
rmem reg1 >var_984242643449
call >and
jf reg0 >while_efc47673a55a_end
rmem reg0 >var_91bb6178eeb3
rmem reg1 >var_984242643449
wmem reg0 reg1
rmem reg0 >var_91bb6178eeb3
add reg0 reg0 1
wmem >var_91bb6178eeb3 reg0
in reg0
wmem >var_984242643449 reg0
rmem reg0 >var_984242643449
set reg1 10
eq reg0 reg0 reg1
wmem >var_2cfbc7bb4699 reg0
jmp >while_efc47673a55a_begin
:while_efc47673a55a_end
rmem reg0 >var_91bb6178eeb3
set reg1 0
wmem reg0 reg1
jmp >var_10c5724a4761_end
:var_10c5724a4761
:var_10c5724a4761_end
call >alloc
wmem >var_10c5724a4761 reg0
jmp >var_6a905873e8d6_end
:var_6a905873e8d6
:var_6a905873e8d6_end
set reg0 16384
call >str_len
wmem >var_6a905873e8d6 reg0
set reg0 16384
rmem reg1 >var_10c5724a4761
rmem reg2 >var_6a905873e8d6
call >mem_cp
rmem reg0 >var_10c5724a4761
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_8e4f0eb61795_end
:var_8e4f0eb61795
:var_8e4f0eb61795_end
wmem >var_8e4f0eb61795 reg0
:while_9e26ac4b0088_begin
rmem reg0 >var_8e4f0eb61795
rmem reg0 reg0
jf reg0 >while_9e26ac4b0088_end
rmem reg0 >var_8e4f0eb61795
rmem reg0 reg0
out reg0
rmem reg0 >var_8e4f0eb61795
add reg0 reg0 1
wmem >var_8e4f0eb61795 reg0
jmp >while_9e26ac4b0088_begin
:while_9e26ac4b0088_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_71a74af2f715_end
:var_71a74af2f715
:var_71a74af2f715_end
wmem >var_71a74af2f715 reg0
rmem reg0 >var_71a74af2f715
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_e15af59aea8b_end
:var_e15af59aea8b
:var_e15af59aea8b_end
wmem >var_e15af59aea8b reg0
rmem reg0 >var_e15af59aea8b
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_0f3cb6b0e499
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_0f3cb6b0e499
jmp >var_6fce4da2103a_end
:var_6fce4da2103a
:var_6fce4da2103a_end
jmp >var_7e072a734b1e_end
:var_7e072a734b1e
:var_7e072a734b1e_end
set reg0 0
wmem >var_7e072a734b1e reg0
:while_6a9f89131859_begin
rmem reg0 >var_e15af59aea8b
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_6a9f89131859_end
rmem reg0 >var_e15af59aea8b
set reg1 10
mod reg0 reg0 reg1
wmem >var_6fce4da2103a reg0
rmem reg0 >var_6fce4da2103a
rmem reg0 >var_6fce4da2103a
push reg0
rmem reg0 >var_7e072a734b1e
add reg0 reg0 1
wmem >var_7e072a734b1e reg0
rmem reg0 >var_e15af59aea8b
set reg1 10
call >divide
wmem >var_e15af59aea8b reg0
jmp >while_6a9f89131859_begin
:while_6a9f89131859_end
rmem reg0 >var_e15af59aea8b
set reg1 10
mod reg0 reg0 reg1
wmem >var_6fce4da2103a reg0
rmem reg0 >var_6fce4da2103a
rmem reg0 >var_6fce4da2103a
push reg0
rmem reg0 >var_7e072a734b1e
add reg0 reg0 1
wmem >var_7e072a734b1e reg0
jmp >var_a7358401c528_end
:var_a7358401c528
:var_a7358401c528_end
set reg0 0
wmem >var_a7358401c528 reg0
:while_0a8a6daca52d_begin
rmem reg0 >var_a7358401c528
rmem reg1 >var_7e072a734b1e
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_0a8a6daca52d_end
rmem reg0 >var_a7358401c528
set reg1 1
add reg0 reg0 reg1
wmem >var_a7358401c528 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_0a8a6daca52d_begin
:while_0a8a6daca52d_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_9c81480df713_end
:var_9c81480df713
:var_9c81480df713_end
set reg0 0
wmem >var_9c81480df713 reg0
:while_dccfffd0387b_begin
rmem reg0 >var_9c81480df713
rmem reg0 reg0
jf reg0 >while_dccfffd0387b_end
rmem reg0 >var_9c81480df713
add reg0 reg0 1
wmem >var_9c81480df713 reg0
rmem reg0 >var_9c81480df713
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_dccfffd0387b_begin
:while_dccfffd0387b_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_d2295aec0e87_end
:var_d2295aec0e87
:var_d2295aec0e87_end
wmem >var_d2295aec0e87 reg0
jmp >var_4c75adc1dd05_end
:var_4c75adc1dd05
:var_4c75adc1dd05_end
rmem reg0 >var_d2295aec0e87
call >flip_str
wmem >var_4c75adc1dd05 reg0
jmp >var_8e163c370e56_end
:var_8e163c370e56
:var_8e163c370e56_end
rmem reg0 >var_4c75adc1dd05
call >str_len
wmem >var_8e163c370e56 reg0
rmem reg0 >var_8e163c370e56
set reg1 1
call >subtract
wmem >var_8e163c370e56 reg0
jmp >var_c67264aa8596_end
:var_c67264aa8596
:var_c67264aa8596_end
set reg0 0
wmem >var_c67264aa8596 reg0
jmp >var_743923143bd8_end
:var_743923143bd8
:var_743923143bd8_end
set reg0 0
wmem >var_743923143bd8 reg0
:while_25458399b463_begin
rmem reg0 >var_c67264aa8596
rmem reg1 >var_8e163c370e56
gt reg0 reg0 reg1
call >not
jf reg0 >while_25458399b463_end
jmp >var_280c3b0000b8_end
:var_280c3b0000b8
:var_280c3b0000b8_end
rmem reg0 >var_4c75adc1dd05
rmem reg1 >var_c67264aa8596
add reg0 reg0 reg1
wmem >var_280c3b0000b8 reg0
rmem reg0 >var_280c3b0000b8
rmem reg0 reg0
wmem >var_280c3b0000b8 reg0
jmp >var_d0badf2e4c3f_end
:var_d0badf2e4c3f
:var_d0badf2e4c3f_end
rmem reg0 >var_280c3b0000b8
set reg1 47
gt reg0 reg0 reg1
wmem >var_d0badf2e4c3f reg0
jmp >var_646c5b4574f1_end
:var_646c5b4574f1
:var_646c5b4574f1_end
rmem reg0 >var_280c3b0000b8
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_646c5b4574f1 reg0
rmem reg0 >var_d0badf2e4c3f
rmem reg1 >var_646c5b4574f1
call >and
jf reg0 >end_199e121f7579
jmp >var_d289e4631ba0_end
:var_d289e4631ba0
:var_d289e4631ba0_end
rmem reg0 >var_280c3b0000b8
set reg1 48
call >subtract
wmem >var_d289e4631ba0 reg0
rmem reg0 >var_d289e4631ba0
call >print_number
set reg0 10
out reg0
jmp >var_d4d290c3eba2_end
:var_d4d290c3eba2
:var_d4d290c3eba2_end
set reg0 0
wmem >var_d4d290c3eba2 reg0
jmp >var_9cb6fe1a6f1b_end
:var_9cb6fe1a6f1b
:var_9cb6fe1a6f1b_end
rmem reg0 >var_c67264aa8596
set reg1 1
call >subtract
wmem >var_9cb6fe1a6f1b reg0
:while_0f0c40c198e1_begin
rmem reg0 >var_d4d290c3eba2
rmem reg1 >var_9cb6fe1a6f1b
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_0f0c40c198e1_end
rmem reg0 >var_d289e4631ba0
set reg1 10
call >subtract
wmem >var_d289e4631ba0 reg0
rmem reg0 >var_d4d290c3eba2
add reg0 reg0 1
wmem >var_d4d290c3eba2 reg0
jmp >while_0f0c40c198e1_begin
:while_0f0c40c198e1_end
rmem reg0 >var_743923143bd8
rmem reg1 >var_d289e4631ba0
add reg0 reg0 reg1
wmem >var_743923143bd8 reg0
:end_199e121f7579
rmem reg0 >var_c67264aa8596
add reg0 reg0 1
wmem >var_c67264aa8596 reg0
jmp >while_25458399b463_begin
:while_25458399b463_end
rmem reg0 >var_743923143bd8
call >print_number
rmem reg0 >var_743923143bd8
ret
ret
:int_end
set reg0 >int
jmp >main_end
:main
jmp >var_927df39d209d_end
:var_927df39d209d
:var_927df39d209d_end
wmem >var_927df39d209d reg0
jmp >var_11a77c1d21ff_end
:var_11a77c1d21ff
:var_11a77c1d21ff_end
set reg0 0
wmem >var_11a77c1d21ff reg0
:while_5cd6b5a7cbe9_begin
rmem reg0 >var_11a77c1d21ff
set reg1 100
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_5cd6b5a7cbe9_end
rmem reg0 >var_11a77c1d21ff
rmem reg7 >var_927df39d209d
call reg7
rmem reg0 >var_11a77c1d21ff
add reg0 reg0 1
wmem >var_11a77c1d21ff reg0
jmp >while_5cd6b5a7cbe9_begin
:while_5cd6b5a7cbe9_end
ret
:main_end
set reg0 >main
jmp >function_d2db5fa4907f_end
:function_d2db5fa4907f
jmp >var_fc224512fd2b_end
:var_fc224512fd2b
:var_fc224512fd2b_end
wmem >var_fc224512fd2b reg0
rmem reg0 >var_fc224512fd2b
call >print_number
set reg0 10
out reg0
ret
:function_d2db5fa4907f_end
set reg0 >function_d2db5fa4907f
call >main

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
