jmp >str_len_end
:str_len
jmp >var_d05bb5ad54e2_end
:var_d05bb5ad54e2
:var_d05bb5ad54e2_end
wmem >var_d05bb5ad54e2 reg0
jmp >var_62afc73fb91d_end
:var_62afc73fb91d
:var_62afc73fb91d_end
set reg0 0
wmem >var_62afc73fb91d reg0
:while_14fdc719a2e0_begin
rmem reg0 >var_d05bb5ad54e2
rmem reg0 reg0
jf reg0 >while_14fdc719a2e0_end
rmem reg0 >var_d05bb5ad54e2
add reg0 reg0 1
wmem >var_d05bb5ad54e2 reg0
rmem reg0 >var_62afc73fb91d
add reg0 reg0 1
wmem >var_62afc73fb91d reg0
jmp >while_14fdc719a2e0_begin
:while_14fdc719a2e0_end
rmem reg0 >var_62afc73fb91d
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_equal_end
:str_equal
jmp >var_59f4b91b9dea_end
:var_59f4b91b9dea
:var_59f4b91b9dea_end
jmp >var_ceb2befc58cd_end
:var_ceb2befc58cd
:var_ceb2befc58cd_end
wmem >var_59f4b91b9dea reg0
wmem >var_ceb2befc58cd reg1
jmp >var_dd538fa4196d_end
:var_dd538fa4196d
:var_dd538fa4196d_end
rmem reg0 >var_59f4b91b9dea
call >str_len
wmem >var_dd538fa4196d reg0
jmp >var_2e0805870c31_end
:var_2e0805870c31
:var_2e0805870c31_end
rmem reg0 >var_ceb2befc58cd
call >str_len
wmem >var_2e0805870c31 reg0
rmem reg0 >var_dd538fa4196d
rmem reg1 >var_2e0805870c31
eq reg0 reg0 reg1
call >not
jf reg0 >end_7bbc971ef56b
set reg0 0
ret
:end_7bbc971ef56b
jmp >var_d85061af306b_end
:var_d85061af306b
:var_d85061af306b_end
set reg0 0
wmem >var_d85061af306b reg0
:for_3f9475152895_begin
rmem reg0 >var_d85061af306b
rmem reg1 >var_dd538fa4196d
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_3f9475152895_end
jmp >var_c929630fb957_end
:var_c929630fb957
:var_c929630fb957_end
rmem reg0 >var_59f4b91b9dea
rmem reg1 >var_d85061af306b
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_c929630fb957 reg0
jmp >var_620a4d356627_end
:var_620a4d356627
:var_620a4d356627_end
rmem reg0 >var_ceb2befc58cd
rmem reg1 >var_d85061af306b
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_620a4d356627 reg0
rmem reg0 >var_c929630fb957
rmem reg1 >var_620a4d356627
eq reg0 reg0 reg1
call >not
jf reg0 >end_3893fe1d7d90
set reg0 0
ret
:end_3893fe1d7d90
rmem reg0 >var_d85061af306b
add reg0 reg0 1
wmem >var_d85061af306b reg0
jmp >for_3f9475152895_begin
:for_3f9475152895_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_7c89a03cf32a_end
:var_7c89a03cf32a
:var_7c89a03cf32a_end
set reg0 16382
wmem >var_7c89a03cf32a reg0
:while_9f1fa4255b7f_begin
rmem reg0 >var_7c89a03cf32a
rmem reg0 reg0
call >not
jf reg0 >while_9f1fa4255b7f_end
rmem reg0 >var_7c89a03cf32a
set reg1 1
call >subtract
wmem >var_7c89a03cf32a reg0
jmp >while_9f1fa4255b7f_begin
:while_9f1fa4255b7f_end
rmem reg0 >var_7c89a03cf32a
set reg1 2
add reg0 reg0 reg1
wmem >var_7c89a03cf32a reg0
rmem reg0 >var_7c89a03cf32a
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_4d9fa83287b0_end
:var_4d9fa83287b0
:var_4d9fa83287b0_end
wmem >var_4d9fa83287b0 reg0
jmp >var_cd685f741707_end
:var_cd685f741707
:var_cd685f741707_end
call >alloc
wmem >var_cd685f741707 reg0
jmp >var_dd728e428586_end
:var_dd728e428586
:var_dd728e428586_end
rmem reg0 >var_cd685f741707
rmem reg1 >var_4d9fa83287b0
add reg0 reg0 reg1
wmem >var_dd728e428586 reg0
rmem reg0 >var_dd728e428586
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_cd685f741707
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_c8a7f9ecdfa4_end
:var_c8a7f9ecdfa4
:var_c8a7f9ecdfa4_end
jmp >var_0d7acd4460ac_end
:var_0d7acd4460ac
:var_0d7acd4460ac_end
jmp >var_b0c1e1210f41_end
:var_b0c1e1210f41
:var_b0c1e1210f41_end
wmem >var_c8a7f9ecdfa4 reg0
wmem >var_0d7acd4460ac reg1
wmem >var_b0c1e1210f41 reg2
jmp >var_114d03818fc9_end
:var_114d03818fc9
:var_114d03818fc9_end
set reg0 0
wmem >var_114d03818fc9 reg0
:while_08297bc02d35_begin
rmem reg0 >var_114d03818fc9
rmem reg1 >var_b0c1e1210f41
gt reg0 reg0 reg1
call >not
jf reg0 >while_08297bc02d35_end
jmp >var_63dd8fc7b27e_end
:var_63dd8fc7b27e
:var_63dd8fc7b27e_end
rmem reg0 >var_c8a7f9ecdfa4
rmem reg1 >var_114d03818fc9
add reg0 reg0 reg1
wmem >var_63dd8fc7b27e reg0
jmp >var_a32c136e428c_end
:var_a32c136e428c
:var_a32c136e428c_end
rmem reg0 >var_0d7acd4460ac
rmem reg1 >var_114d03818fc9
add reg0 reg0 reg1
wmem >var_a32c136e428c reg0
rmem reg0 >var_a32c136e428c
rmem reg1 >var_63dd8fc7b27e
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_114d03818fc9
add reg0 reg0 1
wmem >var_114d03818fc9 reg0
jmp >while_08297bc02d35_begin
:while_08297bc02d35_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_cat_end
:str_cat
jmp >var_74f222513da0_end
:var_74f222513da0
:var_74f222513da0_end
jmp >var_a18089421768_end
:var_a18089421768
:var_a18089421768_end
wmem >var_74f222513da0 reg0
wmem >var_a18089421768 reg1
jmp >var_d8c39ba91609_end
:var_d8c39ba91609
:var_d8c39ba91609_end
rmem reg0 >var_74f222513da0
call >str_len
wmem >var_d8c39ba91609 reg0
jmp >var_37ea84f9c3c1_end
:var_37ea84f9c3c1
:var_37ea84f9c3c1_end
rmem reg0 >var_a18089421768
call >str_len
wmem >var_37ea84f9c3c1 reg0
jmp >var_1f0ddc9d91ce_end
:var_1f0ddc9d91ce
:var_1f0ddc9d91ce_end
call >alloc
wmem >var_1f0ddc9d91ce reg0
rmem reg0 >var_74f222513da0
rmem reg1 >var_1f0ddc9d91ce
rmem reg2 >var_d8c39ba91609
call >mem_cp
jmp >var_90bf8507c17f_end
:var_90bf8507c17f
:var_90bf8507c17f_end
rmem reg0 >var_1f0ddc9d91ce
rmem reg1 >var_d8c39ba91609
add reg0 reg0 reg1
wmem >var_90bf8507c17f reg0
rmem reg0 >var_37ea84f9c3c1
add reg0 reg0 1
wmem >var_37ea84f9c3c1 reg0
rmem reg0 >var_a18089421768
rmem reg1 >var_90bf8507c17f
rmem reg2 >var_37ea84f9c3c1
call >mem_cp
rmem reg0 >var_1f0ddc9d91ce
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_155b830a0b18_end
:var_155b830a0b18
:var_155b830a0b18_end
wmem >var_155b830a0b18 reg0
jmp >var_3226f0f200da_end
:var_3226f0f200da
:var_3226f0f200da_end
call >alloc
wmem >var_3226f0f200da reg0
jmp >var_e35a75464ad6_end
:var_e35a75464ad6
:var_e35a75464ad6_end
rmem reg0 >var_155b830a0b18
call >str_len
wmem >var_e35a75464ad6 reg0
jmp >var_01eef561dc71_end
:var_01eef561dc71
:var_01eef561dc71_end
set reg0 0
wmem >var_01eef561dc71 reg0
:while_c60a2417ced4_begin
rmem reg0 >var_01eef561dc71
rmem reg1 >var_e35a75464ad6
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_c60a2417ced4_end
jmp >var_c39dfbd7911c_end
:var_c39dfbd7911c
:var_c39dfbd7911c_end
rmem reg0 >var_155b830a0b18
rmem reg1 >var_01eef561dc71
add reg0 reg0 reg1
wmem >var_c39dfbd7911c reg0
rmem reg0 >var_c39dfbd7911c
rmem reg0 reg0
rmem reg0 >var_c39dfbd7911c
rmem reg0 reg0
push reg0
rmem reg0 >var_01eef561dc71
add reg0 reg0 1
wmem >var_01eef561dc71 reg0
jmp >while_c60a2417ced4_begin
:while_c60a2417ced4_end
jmp >var_3019e080b785_end
:var_3019e080b785
:var_3019e080b785_end
pop reg0
wmem >var_3019e080b785 reg0
set reg0 0
wmem >var_01eef561dc71 reg0
:while_207058acdd5a_begin
rmem reg0 >var_01eef561dc71
rmem reg1 >var_e35a75464ad6
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_207058acdd5a_end
jmp >var_b4a559e72f5a_end
:var_b4a559e72f5a
:var_b4a559e72f5a_end
rmem reg0 >var_3226f0f200da
rmem reg1 >var_01eef561dc71
add reg0 reg0 reg1
wmem >var_b4a559e72f5a reg0
rmem reg0 >var_b4a559e72f5a
rmem reg1 >var_3019e080b785
wmem reg0 reg1
rmem reg0 >var_01eef561dc71
add reg0 reg0 1
wmem >var_01eef561dc71 reg0
pop reg0
wmem >var_3019e080b785 reg0
jmp >while_207058acdd5a_begin
:while_207058acdd5a_end
rmem reg0 >var_3019e080b785
rmem reg0 >var_3019e080b785
push reg0
rmem reg0 >var_3226f0f200da
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_26bc1a8d63f2_end
:var_26bc1a8d63f2
:var_26bc1a8d63f2_end
set reg0 16384
wmem >var_26bc1a8d63f2 reg0
jmp >var_d79078b28abb_end
:var_d79078b28abb
:var_d79078b28abb_end
in reg0
wmem >var_d79078b28abb reg0
jmp >var_39863c88b7a6_end
:var_39863c88b7a6
:var_39863c88b7a6_end
rmem reg0 >var_d79078b28abb
set reg1 10
eq reg0 reg0 reg1
wmem >var_39863c88b7a6 reg0
:while_9b430b3ff1ed_begin
rmem reg0 >var_39863c88b7a6
rmem reg1 >var_d79078b28abb
call >and
call >not
jf reg0 >while_9b430b3ff1ed_end
rmem reg0 >var_26bc1a8d63f2
rmem reg1 >var_d79078b28abb
wmem reg0 reg1
rmem reg0 >var_26bc1a8d63f2
add reg0 reg0 1
wmem >var_26bc1a8d63f2 reg0
in reg0
wmem >var_d79078b28abb reg0
rmem reg0 >var_d79078b28abb
set reg1 10
eq reg0 reg0 reg1
wmem >var_39863c88b7a6 reg0
jmp >while_9b430b3ff1ed_begin
:while_9b430b3ff1ed_end
rmem reg0 >var_26bc1a8d63f2
set reg1 0
wmem reg0 reg1
jmp >var_bb53c9b0fbe1_end
:var_bb53c9b0fbe1
:var_bb53c9b0fbe1_end
call >alloc
wmem >var_bb53c9b0fbe1 reg0
jmp >var_391242ed69cc_end
:var_391242ed69cc
:var_391242ed69cc_end
set reg0 16384
call >str_len
wmem >var_391242ed69cc reg0
set reg0 16384
rmem reg1 >var_bb53c9b0fbe1
rmem reg2 >var_391242ed69cc
call >mem_cp
rmem reg0 >var_bb53c9b0fbe1
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_1ecd75f7b3c6_end
:var_1ecd75f7b3c6
:var_1ecd75f7b3c6_end
wmem >var_1ecd75f7b3c6 reg0
:while_b936054ed5f1_begin
rmem reg0 >var_1ecd75f7b3c6
rmem reg0 reg0
jf reg0 >while_b936054ed5f1_end
rmem reg0 >var_1ecd75f7b3c6
rmem reg0 reg0
out reg0
rmem reg0 >var_1ecd75f7b3c6
add reg0 reg0 1
wmem >var_1ecd75f7b3c6 reg0
jmp >while_b936054ed5f1_begin
:while_b936054ed5f1_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_a83b72eb3bfb_end
:var_a83b72eb3bfb
:var_a83b72eb3bfb_end
wmem >var_a83b72eb3bfb reg0
rmem reg0 >var_a83b72eb3bfb
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_d01c359afc7c_end
:var_d01c359afc7c
:var_d01c359afc7c_end
wmem >var_d01c359afc7c reg0
rmem reg0 >var_d01c359afc7c
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_0c087bd8811b
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_0c087bd8811b
jmp >var_c0122b90de69_end
:var_c0122b90de69
:var_c0122b90de69_end
jmp >var_720345c0d32e_end
:var_720345c0d32e
:var_720345c0d32e_end
set reg0 0
wmem >var_720345c0d32e reg0
:while_a22ccfc82ba7_begin
rmem reg0 >var_d01c359afc7c
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_a22ccfc82ba7_end
rmem reg0 >var_d01c359afc7c
set reg1 10
mod reg0 reg0 reg1
wmem >var_c0122b90de69 reg0
rmem reg0 >var_c0122b90de69
rmem reg0 >var_c0122b90de69
push reg0
rmem reg0 >var_720345c0d32e
add reg0 reg0 1
wmem >var_720345c0d32e reg0
rmem reg0 >var_d01c359afc7c
set reg1 10
call >divide
wmem >var_d01c359afc7c reg0
jmp >while_a22ccfc82ba7_begin
:while_a22ccfc82ba7_end
rmem reg0 >var_d01c359afc7c
set reg1 10
mod reg0 reg0 reg1
wmem >var_c0122b90de69 reg0
rmem reg0 >var_c0122b90de69
rmem reg0 >var_c0122b90de69
push reg0
rmem reg0 >var_720345c0d32e
add reg0 reg0 1
wmem >var_720345c0d32e reg0
jmp >var_a2a45a483acd_end
:var_a2a45a483acd
:var_a2a45a483acd_end
set reg0 0
wmem >var_a2a45a483acd reg0
:while_c5555fe90eee_begin
rmem reg0 >var_a2a45a483acd
rmem reg1 >var_720345c0d32e
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_c5555fe90eee_end
rmem reg0 >var_a2a45a483acd
set reg1 1
add reg0 reg0 reg1
wmem >var_a2a45a483acd reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_c5555fe90eee_begin
:while_c5555fe90eee_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_ecedea1e1788_end
:var_ecedea1e1788
:var_ecedea1e1788_end
set reg0 0
wmem >var_ecedea1e1788 reg0
:while_d4476eb5b3fd_begin
rmem reg0 >var_ecedea1e1788
rmem reg0 reg0
jf reg0 >while_d4476eb5b3fd_end
rmem reg0 >var_ecedea1e1788
add reg0 reg0 1
wmem >var_ecedea1e1788 reg0
rmem reg0 >var_ecedea1e1788
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_d4476eb5b3fd_begin
:while_d4476eb5b3fd_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_19b614431cf3_end
:var_19b614431cf3
:var_19b614431cf3_end
wmem >var_19b614431cf3 reg0
jmp >var_0791a4909bc7_end
:var_0791a4909bc7
:var_0791a4909bc7_end
rmem reg0 >var_19b614431cf3
call >flip_str
wmem >var_0791a4909bc7 reg0
jmp >var_d65173adda9b_end
:var_d65173adda9b
:var_d65173adda9b_end
rmem reg0 >var_0791a4909bc7
call >str_len
wmem >var_d65173adda9b reg0
rmem reg0 >var_d65173adda9b
set reg1 1
call >subtract
wmem >var_d65173adda9b reg0
jmp >var_9a4f5687c392_end
:var_9a4f5687c392
:var_9a4f5687c392_end
set reg0 0
wmem >var_9a4f5687c392 reg0
jmp >var_9999eeeced96_end
:var_9999eeeced96
:var_9999eeeced96_end
set reg0 0
wmem >var_9999eeeced96 reg0
:while_1b439b763efc_begin
rmem reg0 >var_9a4f5687c392
rmem reg1 >var_d65173adda9b
gt reg0 reg0 reg1
call >not
jf reg0 >while_1b439b763efc_end
jmp >var_d2da00f5bc1e_end
:var_d2da00f5bc1e
:var_d2da00f5bc1e_end
rmem reg0 >var_0791a4909bc7
rmem reg1 >var_9a4f5687c392
add reg0 reg0 reg1
wmem >var_d2da00f5bc1e reg0
rmem reg0 >var_d2da00f5bc1e
rmem reg0 reg0
wmem >var_d2da00f5bc1e reg0
jmp >var_da927cab72ba_end
:var_da927cab72ba
:var_da927cab72ba_end
rmem reg0 >var_d2da00f5bc1e
set reg1 47
gt reg0 reg0 reg1
wmem >var_da927cab72ba reg0
jmp >var_056f6f9727b3_end
:var_056f6f9727b3
:var_056f6f9727b3_end
rmem reg0 >var_d2da00f5bc1e
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_056f6f9727b3 reg0
rmem reg0 >var_da927cab72ba
rmem reg1 >var_056f6f9727b3
call >and
jf reg0 >end_df379df764d4
jmp >var_1256b4e7aefb_end
:var_1256b4e7aefb
:var_1256b4e7aefb_end
rmem reg0 >var_d2da00f5bc1e
set reg1 48
call >subtract
wmem >var_1256b4e7aefb reg0
rmem reg0 >var_1256b4e7aefb
call >print_number
set reg0 10
out reg0
jmp >var_06f2259bddd6_end
:var_06f2259bddd6
:var_06f2259bddd6_end
set reg0 0
wmem >var_06f2259bddd6 reg0
jmp >var_da45f721f27f_end
:var_da45f721f27f
:var_da45f721f27f_end
rmem reg0 >var_9a4f5687c392
set reg1 1
call >subtract
wmem >var_da45f721f27f reg0
:while_caa2a80b06f0_begin
rmem reg0 >var_06f2259bddd6
rmem reg1 >var_da45f721f27f
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_caa2a80b06f0_end
rmem reg0 >var_1256b4e7aefb
set reg1 10
mult reg0 reg0 reg1
wmem >var_1256b4e7aefb reg0
rmem reg0 >var_06f2259bddd6
add reg0 reg0 1
wmem >var_06f2259bddd6 reg0
jmp >while_caa2a80b06f0_begin
:while_caa2a80b06f0_end
rmem reg0 >var_9999eeeced96
rmem reg1 >var_1256b4e7aefb
add reg0 reg0 reg1
wmem >var_9999eeeced96 reg0
:end_df379df764d4
rmem reg0 >var_9a4f5687c392
add reg0 reg0 1
wmem >var_9a4f5687c392 reg0
jmp >while_1b439b763efc_begin
:while_1b439b763efc_end
rmem reg0 >var_9999eeeced96
call >print_number
rmem reg0 >var_9999eeeced96
ret
ret
:int_end
set reg0 >int
jmp >test_dump_mem_end
:test_dump_mem
jmp >var_2b4d6e58f862_end
:var_2b4d6e58f862
:var_2b4d6e58f862_end
set reg0 0
wmem >var_2b4d6e58f862 reg0
:while_1e3103df15b0_begin
rmem reg0 >var_2b4d6e58f862
rmem reg0 reg0
jf reg0 >while_1e3103df15b0_end
rmem reg0 >var_2b4d6e58f862
add reg0 reg0 1
wmem >var_2b4d6e58f862 reg0
rmem reg0 >var_2b4d6e58f862
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_1e3103df15b0_begin
:while_1e3103df15b0_end
ret
:test_dump_mem_end
set reg0 >test_dump_mem
jmp >internal_dump_mem_end
:internal_dump_mem
jmp >var_27c7302f132b_end
:var_27c7302f132b
:var_27c7302f132b_end
set reg0 0
wmem >var_27c7302f132b reg0
jmp >var_3cd7fab99229_end
:var_3cd7fab99229
:var_3cd7fab99229_end
set reg0 0
wmem >var_3cd7fab99229 reg0
:while_ec0d25b9c6e2_begin
rmem reg0 >var_3cd7fab99229
set reg1 5
eq reg0 reg0 reg1
call >not
jf reg0 >while_ec0d25b9c6e2_end
rmem reg0 >var_27c7302f132b
rmem reg0 reg0
jf reg0 >end_331692c9c757
rmem reg0 >var_3cd7fab99229
add reg0 reg0 1
wmem >var_3cd7fab99229 reg0
:end_331692c9c757
rmem reg0 >var_27c7302f132b
add reg0 reg0 1
wmem >var_27c7302f132b reg0
rmem reg0 >var_27c7302f132b
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_ec0d25b9c6e2_begin
:while_ec0d25b9c6e2_end
ret
:internal_dump_mem_end
set reg0 >internal_dump_mem
jmp >interpret_command_end
:interpret_command
jmp >var_1bdd8d0494aa_end
:var_1bdd8d0494aa
:var_1bdd8d0494aa_end
wmem >var_1bdd8d0494aa reg0
rmem reg0 >var_1bdd8d0494aa
jmp >var_1f2bc6321375_end
:var_1f2bc6321375
&e
&l
&p
0
:var_1f2bc6321375_end
wmem >var_1f2bc6321375 &h
set reg1 >var_1f2bc6321375
call >str_equal
jf reg0 >end_a35829469182
jmp >var_310e6c72ea28_end
:var_310e6c72ea28
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
:var_310e6c72ea28_end
wmem >var_310e6c72ea28 &T
set reg0 >var_310e6c72ea28
call >println
:end_a35829469182
rmem reg0 >var_1bdd8d0494aa
jmp >var_c9cb3271f70e_end
:var_c9cb3271f70e
&e
&m
0
:var_c9cb3271f70e_end
wmem >var_c9cb3271f70e &m
set reg1 >var_c9cb3271f70e
call >str_equal
jf reg0 >end_167a4564151f
call >internal_dump_mem
:end_167a4564151f
ret
:interpret_command_end
set reg0 >interpret_command
jmp >interpret_loop_end
:interpret_loop
jmp >var_ad99bb36258e_end
:var_ad99bb36258e
32
0
:var_ad99bb36258e_end
wmem >var_ad99bb36258e &>
set reg0 >var_ad99bb36258e
call >print
jmp >var_b0f94f770c07_end
:var_b0f94f770c07
:var_b0f94f770c07_end
call >input
wmem >var_b0f94f770c07 reg0
rmem reg0 >var_b0f94f770c07
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

