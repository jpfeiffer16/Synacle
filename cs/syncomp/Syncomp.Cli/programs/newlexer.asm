jmp >str_equal_end
:str_equal
jmp >var_799c538f1f1d_end
:var_799c538f1f1d
:var_799c538f1f1d_end
jmp >var_fc68a4d7b7db_end
:var_fc68a4d7b7db
:var_fc68a4d7b7db_end
wmem >var_799c538f1f1d reg0
wmem >var_fc68a4d7b7db reg1
jmp >var_1939f17ed65c_end
:var_1939f17ed65c
:var_1939f17ed65c_end
rmem reg0 >var_799c538f1f1d
call >str_len
wmem >var_1939f17ed65c reg0
jmp >var_6bbb76b084ef_end
:var_6bbb76b084ef
:var_6bbb76b084ef_end
rmem reg0 >var_fc68a4d7b7db
call >str_len
wmem >var_6bbb76b084ef reg0
rmem reg0 >var_1939f17ed65c
rmem reg1 >var_6bbb76b084ef
eq reg0 reg0 reg1
call >not
jf reg0 >end_fd50ba5b35a0
set reg0 0
ret
:end_fd50ba5b35a0
jmp >var_0fe8b0c3542c_end
:var_0fe8b0c3542c
:var_0fe8b0c3542c_end
set reg0 0
wmem >var_0fe8b0c3542c reg0
:for_ea4e638abf81_begin
rmem reg0 >var_0fe8b0c3542c
rmem reg1 >var_1939f17ed65c
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_ea4e638abf81_end
jmp >var_2ca177533ea9_end
:var_2ca177533ea9
:var_2ca177533ea9_end
rmem reg0 >var_799c538f1f1d
rmem reg1 >var_0fe8b0c3542c
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_2ca177533ea9 reg0
jmp >var_e7209a3f16ab_end
:var_e7209a3f16ab
:var_e7209a3f16ab_end
rmem reg0 >var_fc68a4d7b7db
rmem reg1 >var_0fe8b0c3542c
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_e7209a3f16ab reg0
rmem reg0 >var_2ca177533ea9
rmem reg1 >var_e7209a3f16ab
eq reg0 reg0 reg1
call >not
jf reg0 >end_a13a5d518bc2
set reg0 0
ret
:end_a13a5d518bc2
rmem reg0 >var_0fe8b0c3542c
add reg0 reg0 1
wmem >var_0fe8b0c3542c reg0
jmp >for_ea4e638abf81_begin
:for_ea4e638abf81_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_e22db0a2dd8d_end
:var_e22db0a2dd8d
:var_e22db0a2dd8d_end
set reg0 16382
wmem >var_e22db0a2dd8d reg0
:while_5d2442ab3f93_begin
rmem reg0 >var_e22db0a2dd8d
rmem reg0 reg0
call >not
jf reg0 >while_5d2442ab3f93_end
rmem reg0 >var_e22db0a2dd8d
set reg1 1
call >subtract
wmem >var_e22db0a2dd8d reg0
jmp >while_5d2442ab3f93_begin
:while_5d2442ab3f93_end
rmem reg0 >var_e22db0a2dd8d
set reg1 2
add reg0 reg0 reg1
wmem >var_e22db0a2dd8d reg0
rmem reg0 >var_e22db0a2dd8d
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_74149e6670a1_end
:var_74149e6670a1
:var_74149e6670a1_end
wmem >var_74149e6670a1 reg0
jmp >var_2004c3dd838c_end
:var_2004c3dd838c
:var_2004c3dd838c_end
call >alloc
wmem >var_2004c3dd838c reg0
jmp >var_956e13d3d306_end
:var_956e13d3d306
:var_956e13d3d306_end
rmem reg0 >var_2004c3dd838c
rmem reg1 >var_74149e6670a1
add reg0 reg0 reg1
wmem >var_956e13d3d306 reg0
rmem reg0 >var_956e13d3d306
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_2004c3dd838c
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_7fc865e8f09c_end
:var_7fc865e8f09c
:var_7fc865e8f09c_end
jmp >var_234746fa0b2e_end
:var_234746fa0b2e
:var_234746fa0b2e_end
jmp >var_913a8e127fd1_end
:var_913a8e127fd1
:var_913a8e127fd1_end
wmem >var_7fc865e8f09c reg0
wmem >var_234746fa0b2e reg1
wmem >var_913a8e127fd1 reg2
jmp >var_fb003fe4a036_end
:var_fb003fe4a036
:var_fb003fe4a036_end
set reg0 0
wmem >var_fb003fe4a036 reg0
:while_97ecdfec4d50_begin
rmem reg0 >var_fb003fe4a036
rmem reg1 >var_913a8e127fd1
gt reg0 reg0 reg1
call >not
jf reg0 >while_97ecdfec4d50_end
jmp >var_9af7e6c95cf8_end
:var_9af7e6c95cf8
:var_9af7e6c95cf8_end
rmem reg0 >var_7fc865e8f09c
rmem reg1 >var_fb003fe4a036
add reg0 reg0 reg1
wmem >var_9af7e6c95cf8 reg0
jmp >var_fcabc543bd92_end
:var_fcabc543bd92
:var_fcabc543bd92_end
rmem reg0 >var_234746fa0b2e
rmem reg1 >var_fb003fe4a036
add reg0 reg0 reg1
wmem >var_fcabc543bd92 reg0
rmem reg0 >var_fcabc543bd92
rmem reg1 >var_9af7e6c95cf8
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_fb003fe4a036
add reg0 reg0 1
wmem >var_fb003fe4a036 reg0
jmp >while_97ecdfec4d50_begin
:while_97ecdfec4d50_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_ad2a3babd435_end
:var_ad2a3babd435
:var_ad2a3babd435_end
wmem >var_ad2a3babd435 reg0
jmp >var_25a1dc220c60_end
:var_25a1dc220c60
:var_25a1dc220c60_end
set reg0 0
wmem >var_25a1dc220c60 reg0
:while_14c97ad1abc9_begin
rmem reg0 >var_ad2a3babd435
rmem reg0 reg0
jf reg0 >while_14c97ad1abc9_end
rmem reg0 >var_ad2a3babd435
add reg0 reg0 1
wmem >var_ad2a3babd435 reg0
rmem reg0 >var_25a1dc220c60
add reg0 reg0 1
wmem >var_25a1dc220c60 reg0
jmp >while_14c97ad1abc9_begin
:while_14c97ad1abc9_end
rmem reg0 >var_25a1dc220c60
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_3c80a5c3bd97_end
:var_3c80a5c3bd97
:var_3c80a5c3bd97_end
jmp >var_75460ccec753_end
:var_75460ccec753
:var_75460ccec753_end
wmem >var_3c80a5c3bd97 reg0
wmem >var_75460ccec753 reg1
jmp >var_73384a470733_end
:var_73384a470733
:var_73384a470733_end
rmem reg0 >var_3c80a5c3bd97
call >str_len
wmem >var_73384a470733 reg0
jmp >var_770aebce5ddf_end
:var_770aebce5ddf
:var_770aebce5ddf_end
rmem reg0 >var_75460ccec753
call >str_len
wmem >var_770aebce5ddf reg0
jmp >var_182e67d0221f_end
:var_182e67d0221f
:var_182e67d0221f_end
call >alloc
wmem >var_182e67d0221f reg0
rmem reg0 >var_3c80a5c3bd97
rmem reg1 >var_182e67d0221f
rmem reg2 >var_73384a470733
call >mem_cp
jmp >var_e201edbb446a_end
:var_e201edbb446a
:var_e201edbb446a_end
rmem reg0 >var_182e67d0221f
rmem reg1 >var_73384a470733
add reg0 reg0 reg1
wmem >var_e201edbb446a reg0
rmem reg0 >var_770aebce5ddf
add reg0 reg0 1
wmem >var_770aebce5ddf reg0
rmem reg0 >var_75460ccec753
rmem reg1 >var_e201edbb446a
rmem reg2 >var_770aebce5ddf
call >mem_cp
rmem reg0 >var_182e67d0221f
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_13fcab03b215_end
:var_13fcab03b215
:var_13fcab03b215_end
wmem >var_13fcab03b215 reg0
jmp >var_8debf708f93d_end
:var_8debf708f93d
:var_8debf708f93d_end
call >alloc
wmem >var_8debf708f93d reg0
jmp >var_780d4c55ea4d_end
:var_780d4c55ea4d
:var_780d4c55ea4d_end
rmem reg0 >var_13fcab03b215
call >str_len
wmem >var_780d4c55ea4d reg0
jmp >var_7d56087fb619_end
:var_7d56087fb619
:var_7d56087fb619_end
set reg0 0
wmem >var_7d56087fb619 reg0
:while_f2456bb320e7_begin
rmem reg0 >var_7d56087fb619
rmem reg1 >var_780d4c55ea4d
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_f2456bb320e7_end
jmp >var_a25bed341f4e_end
:var_a25bed341f4e
:var_a25bed341f4e_end
rmem reg0 >var_13fcab03b215
rmem reg1 >var_7d56087fb619
add reg0 reg0 reg1
wmem >var_a25bed341f4e reg0
rmem reg0 >var_a25bed341f4e
rmem reg0 reg0
rmem reg0 >var_a25bed341f4e
rmem reg0 reg0
push reg0
rmem reg0 >var_7d56087fb619
add reg0 reg0 1
wmem >var_7d56087fb619 reg0
jmp >while_f2456bb320e7_begin
:while_f2456bb320e7_end
jmp >var_1fa32012f17d_end
:var_1fa32012f17d
:var_1fa32012f17d_end
pop reg0
wmem >var_1fa32012f17d reg0
set reg0 0
wmem >var_7d56087fb619 reg0
:while_f5f28a24283b_begin
rmem reg0 >var_7d56087fb619
rmem reg1 >var_780d4c55ea4d
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_f5f28a24283b_end
jmp >var_f223575d9da2_end
:var_f223575d9da2
:var_f223575d9da2_end
rmem reg0 >var_8debf708f93d
rmem reg1 >var_7d56087fb619
add reg0 reg0 reg1
wmem >var_f223575d9da2 reg0
rmem reg0 >var_f223575d9da2
rmem reg1 >var_1fa32012f17d
wmem reg0 reg1
rmem reg0 >var_7d56087fb619
add reg0 reg0 1
wmem >var_7d56087fb619 reg0
pop reg0
wmem >var_1fa32012f17d reg0
jmp >while_f5f28a24283b_begin
:while_f5f28a24283b_end
rmem reg0 >var_1fa32012f17d
rmem reg0 >var_1fa32012f17d
push reg0
rmem reg0 >var_8debf708f93d
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_7dd9d16dd298_end
:var_7dd9d16dd298
:var_7dd9d16dd298_end
set reg0 16384
wmem >var_7dd9d16dd298 reg0
jmp >var_ccdb17c9bfec_end
:var_ccdb17c9bfec
:var_ccdb17c9bfec_end
in reg0
wmem >var_ccdb17c9bfec reg0
jmp >var_b254e08bc5ab_end
:var_b254e08bc5ab
:var_b254e08bc5ab_end
rmem reg0 >var_ccdb17c9bfec
set reg1 10
eq reg0 reg0 reg1
wmem >var_b254e08bc5ab reg0
:while_87b7e38da68b_begin
rmem reg0 >var_b254e08bc5ab
rmem reg1 >var_ccdb17c9bfec
call >and
call >not
jf reg0 >while_87b7e38da68b_end
rmem reg0 >var_7dd9d16dd298
rmem reg1 >var_ccdb17c9bfec
wmem reg0 reg1
rmem reg0 >var_7dd9d16dd298
add reg0 reg0 1
wmem >var_7dd9d16dd298 reg0
in reg0
wmem >var_ccdb17c9bfec reg0
rmem reg0 >var_ccdb17c9bfec
set reg1 10
eq reg0 reg0 reg1
wmem >var_b254e08bc5ab reg0
jmp >while_87b7e38da68b_begin
:while_87b7e38da68b_end
rmem reg0 >var_7dd9d16dd298
set reg1 0
wmem reg0 reg1
jmp >var_8deb5db87713_end
:var_8deb5db87713
:var_8deb5db87713_end
call >alloc
wmem >var_8deb5db87713 reg0
jmp >var_570a3617db0d_end
:var_570a3617db0d
:var_570a3617db0d_end
set reg0 16384
call >str_len
wmem >var_570a3617db0d reg0
set reg0 16384
rmem reg1 >var_8deb5db87713
rmem reg2 >var_570a3617db0d
call >mem_cp
rmem reg0 >var_8deb5db87713
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_eb76a649bcc2_end
:var_eb76a649bcc2
:var_eb76a649bcc2_end
wmem >var_eb76a649bcc2 reg0
:while_886ce35537ac_begin
rmem reg0 >var_eb76a649bcc2
rmem reg0 reg0
jf reg0 >while_886ce35537ac_end
rmem reg0 >var_eb76a649bcc2
rmem reg0 reg0
out reg0
rmem reg0 >var_eb76a649bcc2
add reg0 reg0 1
wmem >var_eb76a649bcc2 reg0
jmp >while_886ce35537ac_begin
:while_886ce35537ac_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_461bed1cd854_end
:var_461bed1cd854
:var_461bed1cd854_end
wmem >var_461bed1cd854 reg0
rmem reg0 >var_461bed1cd854
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_3e1b18d13a33_end
:var_3e1b18d13a33
:var_3e1b18d13a33_end
wmem >var_3e1b18d13a33 reg0
rmem reg0 >var_3e1b18d13a33
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_b4f62adaefb9
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_b4f62adaefb9
jmp >var_8c1057891d39_end
:var_8c1057891d39
:var_8c1057891d39_end
jmp >var_9a1b4659de58_end
:var_9a1b4659de58
:var_9a1b4659de58_end
set reg0 0
wmem >var_9a1b4659de58 reg0
:while_d6c9a223e85f_begin
rmem reg0 >var_3e1b18d13a33
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_d6c9a223e85f_end
rmem reg0 >var_3e1b18d13a33
set reg1 10
mod reg0 reg0 reg1
wmem >var_8c1057891d39 reg0
rmem reg0 >var_8c1057891d39
rmem reg0 >var_8c1057891d39
push reg0
rmem reg0 >var_9a1b4659de58
add reg0 reg0 1
wmem >var_9a1b4659de58 reg0
rmem reg0 >var_3e1b18d13a33
set reg1 10
call >divide
wmem >var_3e1b18d13a33 reg0
jmp >while_d6c9a223e85f_begin
:while_d6c9a223e85f_end
rmem reg0 >var_3e1b18d13a33
set reg1 10
mod reg0 reg0 reg1
wmem >var_8c1057891d39 reg0
rmem reg0 >var_8c1057891d39
rmem reg0 >var_8c1057891d39
push reg0
rmem reg0 >var_9a1b4659de58
add reg0 reg0 1
wmem >var_9a1b4659de58 reg0
jmp >var_2ebbbf573a61_end
:var_2ebbbf573a61
:var_2ebbbf573a61_end
set reg0 0
wmem >var_2ebbbf573a61 reg0
:while_d10b4c9e73ce_begin
rmem reg0 >var_2ebbbf573a61
rmem reg1 >var_9a1b4659de58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_d10b4c9e73ce_end
rmem reg0 >var_2ebbbf573a61
set reg1 1
add reg0 reg0 reg1
wmem >var_2ebbbf573a61 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_d10b4c9e73ce_begin
:while_d10b4c9e73ce_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_357dbbb8cc02_end
:var_357dbbb8cc02
:var_357dbbb8cc02_end
set reg0 0
wmem >var_357dbbb8cc02 reg0
:while_c18ddfaac77c_begin
rmem reg0 >var_357dbbb8cc02
rmem reg0 reg0
jf reg0 >while_c18ddfaac77c_end
rmem reg0 >var_357dbbb8cc02
add reg0 reg0 1
wmem >var_357dbbb8cc02 reg0
rmem reg0 >var_357dbbb8cc02
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_c18ddfaac77c_begin
:while_c18ddfaac77c_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_5593cd2328f6_end
:var_5593cd2328f6
:var_5593cd2328f6_end
wmem >var_5593cd2328f6 reg0
jmp >var_d7550d46e5b3_end
:var_d7550d46e5b3
:var_d7550d46e5b3_end
rmem reg0 >var_5593cd2328f6
call >flip_str
wmem >var_d7550d46e5b3 reg0
jmp >var_f614d194061a_end
:var_f614d194061a
:var_f614d194061a_end
rmem reg0 >var_d7550d46e5b3
call >str_len
wmem >var_f614d194061a reg0
rmem reg0 >var_f614d194061a
set reg1 1
call >subtract
wmem >var_f614d194061a reg0
jmp >var_ab4b7199f49c_end
:var_ab4b7199f49c
:var_ab4b7199f49c_end
set reg0 0
wmem >var_ab4b7199f49c reg0
jmp >var_5465b48829f4_end
:var_5465b48829f4
:var_5465b48829f4_end
set reg0 0
wmem >var_5465b48829f4 reg0
:while_ae044d203962_begin
rmem reg0 >var_ab4b7199f49c
rmem reg1 >var_f614d194061a
gt reg0 reg0 reg1
call >not
jf reg0 >while_ae044d203962_end
jmp >var_e9dfe6c104cf_end
:var_e9dfe6c104cf
:var_e9dfe6c104cf_end
rmem reg0 >var_d7550d46e5b3
rmem reg1 >var_ab4b7199f49c
add reg0 reg0 reg1
wmem >var_e9dfe6c104cf reg0
rmem reg0 >var_e9dfe6c104cf
rmem reg0 reg0
wmem >var_e9dfe6c104cf reg0
jmp >var_b618c5da699b_end
:var_b618c5da699b
:var_b618c5da699b_end
rmem reg0 >var_e9dfe6c104cf
set reg1 47
gt reg0 reg0 reg1
wmem >var_b618c5da699b reg0
jmp >var_0cb313920398_end
:var_0cb313920398
:var_0cb313920398_end
rmem reg0 >var_e9dfe6c104cf
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_0cb313920398 reg0
rmem reg0 >var_b618c5da699b
rmem reg1 >var_0cb313920398
call >and
jf reg0 >end_e96b5bcef825
jmp >var_3c88bca681da_end
:var_3c88bca681da
:var_3c88bca681da_end
rmem reg0 >var_e9dfe6c104cf
set reg1 48
call >subtract
wmem >var_3c88bca681da reg0
rmem reg0 >var_3c88bca681da
call >print_number
set reg0 10
out reg0
jmp >var_f66e2f320e77_end
:var_f66e2f320e77
:var_f66e2f320e77_end
set reg0 0
wmem >var_f66e2f320e77 reg0
jmp >var_e89e9d45c8ab_end
:var_e89e9d45c8ab
:var_e89e9d45c8ab_end
rmem reg0 >var_ab4b7199f49c
set reg1 1
call >subtract
wmem >var_e89e9d45c8ab reg0
:while_aec1633a09a6_begin
rmem reg0 >var_f66e2f320e77
rmem reg1 >var_e89e9d45c8ab
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_aec1633a09a6_end
rmem reg0 >var_3c88bca681da
set reg1 10
mult reg0 reg0 reg1
wmem >var_3c88bca681da reg0
rmem reg0 >var_f66e2f320e77
add reg0 reg0 1
wmem >var_f66e2f320e77 reg0
jmp >while_aec1633a09a6_begin
:while_aec1633a09a6_end
rmem reg0 >var_5465b48829f4
rmem reg1 >var_3c88bca681da
add reg0 reg0 reg1
wmem >var_5465b48829f4 reg0
:end_e96b5bcef825
rmem reg0 >var_ab4b7199f49c
add reg0 reg0 1
wmem >var_ab4b7199f49c reg0
jmp >while_ae044d203962_begin
:while_ae044d203962_end
rmem reg0 >var_5465b48829f4
call >print_number
rmem reg0 >var_5465b48829f4
ret
ret
:int_end
set reg0 >int
jmp >var_d23abd80c728_end
:var_d23abd80c728
:var_d23abd80c728_end
rmem reg0 >var_d23abd80c728
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

