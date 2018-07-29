jmp >int_end
:int
jmp >var_d9e3fb004a40_end
:var_d9e3fb004a40
:var_d9e3fb004a40_end
wmem >var_d9e3fb004a40 reg0
jmp >var_d3ede2c1eb0f_end
:var_d3ede2c1eb0f
:var_d3ede2c1eb0f_end
rmem reg0 >var_d9e3fb004a40
call >flip_str
wmem >var_d3ede2c1eb0f reg0
jmp >var_839e0fcbd86c_end
:var_839e0fcbd86c
:var_839e0fcbd86c_end
rmem reg0 >var_d3ede2c1eb0f
call >str_len
wmem >var_839e0fcbd86c reg0
rmem reg0 >var_839e0fcbd86c
set reg1 1
call >subtract
wmem >var_839e0fcbd86c reg0
jmp >var_ec08070492e7_end
:var_ec08070492e7
:var_ec08070492e7_end
set reg0 0
wmem >var_ec08070492e7 reg0
jmp >var_602d42bd4b4b_end
:var_602d42bd4b4b
:var_602d42bd4b4b_end
set reg0 0
wmem >var_602d42bd4b4b reg0
:while_969530ae89aa_begin
rmem reg0 >var_ec08070492e7
rmem reg1 >var_839e0fcbd86c
gt reg0 reg0 reg1
call >not
jf reg0 >while_969530ae89aa_end
jmp >var_866bb6222731_end
:var_866bb6222731
:var_866bb6222731_end
rmem reg0 >var_d3ede2c1eb0f
rmem reg1 >var_ec08070492e7
add reg0 reg0 reg1
wmem >var_866bb6222731 reg0
rmem reg0 >var_866bb6222731
rmem reg0 reg0
wmem >var_866bb6222731 reg0
jmp >var_da2f092f61ea_end
:var_da2f092f61ea
:var_da2f092f61ea_end
rmem reg0 >var_866bb6222731
set reg1 47
gt reg0 reg0 reg1
wmem >var_da2f092f61ea reg0
jmp >var_382408383d98_end
:var_382408383d98
:var_382408383d98_end
rmem reg0 >var_866bb6222731
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_382408383d98 reg0
rmem reg0 >var_da2f092f61ea
rmem reg1 >var_382408383d98
call >and
jf reg0 >end_7e0f0173853f
jmp >var_b28075087ab0_end
:var_b28075087ab0
:var_b28075087ab0_end
rmem reg0 >var_866bb6222731
set reg1 48
call >subtract
wmem >var_b28075087ab0 reg0
rmem reg0 >var_b28075087ab0
call >print_number
set reg0 10
out reg0
jmp >var_ada46885de94_end
:var_ada46885de94
:var_ada46885de94_end
set reg0 0
wmem >var_ada46885de94 reg0
jmp >var_e41411695cea_end
:var_e41411695cea
:var_e41411695cea_end
rmem reg0 >var_ec08070492e7
set reg1 1
call >subtract
wmem >var_e41411695cea reg0
:while_8511b24022bd_begin
rmem reg0 >var_ada46885de94
rmem reg1 >var_e41411695cea
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_8511b24022bd_end
rmem reg0 >var_b28075087ab0
set reg1 10
call >subtract
wmem >var_b28075087ab0 reg0
rmem reg0 >var_ada46885de94
add reg0 reg0 1
wmem >var_ada46885de94 reg0
jmp >while_8511b24022bd_begin
:while_8511b24022bd_end
rmem reg0 >var_602d42bd4b4b
rmem reg1 >var_b28075087ab0
add reg0 reg0 reg1
wmem >var_602d42bd4b4b reg0
:end_7e0f0173853f
rmem reg0 >var_ec08070492e7
add reg0 reg0 1
wmem >var_ec08070492e7 reg0
jmp >while_969530ae89aa_begin
:while_969530ae89aa_end
rmem reg0 >var_602d42bd4b4b
call >print_number
rmem reg0 >var_602d42bd4b4b
ret
ret
:int_end
jmp >flip_str_end
:flip_str
jmp >var_e04af870b006_end
:var_e04af870b006
:var_e04af870b006_end
wmem >var_e04af870b006 reg0
jmp >var_5c198092dfce_end
:var_5c198092dfce
:var_5c198092dfce_end
call >alloc
wmem >var_5c198092dfce reg0
jmp >var_d6b3b37ef310_end
:var_d6b3b37ef310
:var_d6b3b37ef310_end
rmem reg0 >var_e04af870b006
call >str_len
wmem >var_d6b3b37ef310 reg0
jmp >var_d5cd394fb9f1_end
:var_d5cd394fb9f1
:var_d5cd394fb9f1_end
set reg0 0
wmem >var_d5cd394fb9f1 reg0
:while_e04b71f6c2b8_begin
rmem reg0 >var_d5cd394fb9f1
rmem reg1 >var_d6b3b37ef310
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_e04b71f6c2b8_end
jmp >var_3bc9eb6b8ed9_end
:var_3bc9eb6b8ed9
:var_3bc9eb6b8ed9_end
rmem reg0 >var_e04af870b006
rmem reg1 >var_d5cd394fb9f1
add reg0 reg0 reg1
wmem >var_3bc9eb6b8ed9 reg0
rmem reg0 >var_3bc9eb6b8ed9
rmem reg0 reg0
rmem reg0 >var_3bc9eb6b8ed9
rmem reg0 reg0
push reg0
rmem reg0 >var_d5cd394fb9f1
add reg0 reg0 1
wmem >var_d5cd394fb9f1 reg0
jmp >while_e04b71f6c2b8_begin
:while_e04b71f6c2b8_end
jmp >var_9acbfdd97c21_end
:var_9acbfdd97c21
:var_9acbfdd97c21_end
pop reg0
wmem >var_9acbfdd97c21 reg0
set reg0 0
wmem >var_d5cd394fb9f1 reg0
:while_817246127738_begin
rmem reg0 >var_d5cd394fb9f1
rmem reg1 >var_d6b3b37ef310
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_817246127738_end
jmp >var_b93e99626cd3_end
:var_b93e99626cd3
:var_b93e99626cd3_end
rmem reg0 >var_5c198092dfce
rmem reg1 >var_d5cd394fb9f1
add reg0 reg0 reg1
wmem >var_b93e99626cd3 reg0
rmem reg0 >var_b93e99626cd3
rmem reg1 >var_9acbfdd97c21
wmem reg0 reg1
rmem reg0 >var_d5cd394fb9f1
add reg0 reg0 1
wmem >var_d5cd394fb9f1 reg0
pop reg0
wmem >var_9acbfdd97c21 reg0
jmp >while_817246127738_begin
:while_817246127738_end
rmem reg0 >var_9acbfdd97c21
rmem reg0 >var_9acbfdd97c21
push reg0
rmem reg0 >var_5c198092dfce
ret
ret
:flip_str_end
jmp >str_cat_end
:str_cat
jmp >var_792be3d8c161_end
:var_792be3d8c161
:var_792be3d8c161_end
jmp >var_4e709f74e4cb_end
:var_4e709f74e4cb
:var_4e709f74e4cb_end
wmem >var_792be3d8c161 reg0
wmem >var_4e709f74e4cb reg1
jmp >var_292d15cdd9be_end
:var_292d15cdd9be
:var_292d15cdd9be_end
rmem reg0 >var_792be3d8c161
call >str_len
wmem >var_292d15cdd9be reg0
jmp >var_0fca38095514_end
:var_0fca38095514
:var_0fca38095514_end
rmem reg0 >var_4e709f74e4cb
call >str_len
wmem >var_0fca38095514 reg0
set reg0 10
out reg0
set reg0 10
out reg0
jmp >var_d47ac993f5af_end
:var_d47ac993f5af
:var_d47ac993f5af_end
call >alloc
wmem >var_d47ac993f5af reg0
rmem reg0 >var_792be3d8c161
rmem reg1 >var_d47ac993f5af
rmem reg2 >var_292d15cdd9be
call >mem_cp
jmp >var_7c1b890b6c9c_end
:var_7c1b890b6c9c
:var_7c1b890b6c9c_end
rmem reg0 >var_d47ac993f5af
rmem reg1 >var_292d15cdd9be
add reg0 reg0 reg1
wmem >var_7c1b890b6c9c reg0
rmem reg0 >var_0fca38095514
add reg0 reg0 1
wmem >var_0fca38095514 reg0
rmem reg0 >var_4e709f74e4cb
rmem reg1 >var_7c1b890b6c9c
rmem reg2 >var_0fca38095514
call >mem_cp
rmem reg0 >var_d47ac993f5af
ret
ret
:str_cat_end
jmp >input_end
:input
jmp >var_c38ebdffb9c5_end
:var_c38ebdffb9c5
:var_c38ebdffb9c5_end
set reg0 16384
wmem >var_c38ebdffb9c5 reg0
jmp >var_9ce18e4b01d7_end
:var_9ce18e4b01d7
:var_9ce18e4b01d7_end
in reg0
wmem >var_9ce18e4b01d7 reg0
jmp >var_d02f9ac55128_end
:var_d02f9ac55128
:var_d02f9ac55128_end
rmem reg0 >var_9ce18e4b01d7
set reg1 10
eq reg0 reg0 reg1
wmem >var_d02f9ac55128 reg0
:while_2b5e80210aaf_begin
rmem reg0 >var_d02f9ac55128
call >not
rmem reg1 >var_9ce18e4b01d7
call >and
jf reg0 >while_2b5e80210aaf_end
rmem reg0 >var_c38ebdffb9c5
rmem reg1 >var_9ce18e4b01d7
wmem reg0 reg1
rmem reg0 >var_c38ebdffb9c5
add reg0 reg0 1
wmem >var_c38ebdffb9c5 reg0
in reg0
wmem >var_9ce18e4b01d7 reg0
rmem reg0 >var_9ce18e4b01d7
set reg1 10
eq reg0 reg0 reg1
wmem >var_d02f9ac55128 reg0
jmp >while_2b5e80210aaf_begin
:while_2b5e80210aaf_end
rmem reg0 >var_c38ebdffb9c5
set reg1 0
wmem reg0 reg1
jmp >var_0ba0f6f82cd7_end
:var_0ba0f6f82cd7
:var_0ba0f6f82cd7_end
call >alloc
wmem >var_0ba0f6f82cd7 reg0
jmp >var_29cefb3073dd_end
:var_29cefb3073dd
:var_29cefb3073dd_end
set reg0 16384
call >str_len
wmem >var_29cefb3073dd reg0
set reg0 16384
rmem reg1 >var_0ba0f6f82cd7
rmem reg2 >var_29cefb3073dd
call >mem_cp
rmem reg0 >var_0ba0f6f82cd7
ret
ret
:input_end
jmp >alloc_end
:alloc
jmp >var_2272205b603a_end
:var_2272205b603a
:var_2272205b603a_end
set reg0 0
wmem >var_2272205b603a reg0
jmp >var_c8c26e2f1bdf_end
:var_c8c26e2f1bdf
:var_c8c26e2f1bdf_end
set reg0 0
wmem >var_c8c26e2f1bdf reg0
:while_b19ab40e6f5c_begin
rmem reg0 >var_c8c26e2f1bdf
set reg1 6
gt reg0 reg0 reg1
call >not
jf reg0 >while_b19ab40e6f5c_end
jmp >var_9d83542ca161_end
:var_9d83542ca161
:var_9d83542ca161_end
rmem reg0 >var_2272205b603a
rmem reg0 reg0
wmem >var_9d83542ca161 reg0
rmem reg0 >var_9d83542ca161
call >not
jf reg0 >end_13fc454f1e2f
rmem reg0 >var_c8c26e2f1bdf
add reg0 reg0 1
wmem >var_c8c26e2f1bdf reg0
:end_13fc454f1e2f
rmem reg0 >var_9d83542ca161
jf reg0 >end_19050561e2dc
set reg0 0
wmem >var_c8c26e2f1bdf reg0
:end_19050561e2dc
rmem reg0 >var_2272205b603a
add reg0 reg0 1
wmem >var_2272205b603a reg0
jmp >while_b19ab40e6f5c_begin
:while_b19ab40e6f5c_end
rmem reg0 >var_2272205b603a
set reg1 1
call >subtract
wmem >var_2272205b603a reg0
rmem reg0 >var_2272205b603a
ret
ret
:alloc_end
jmp >mem_cp_end
:mem_cp
jmp >var_b2af79eab750_end
:var_b2af79eab750
:var_b2af79eab750_end
jmp >var_ec4b893ab2d4_end
:var_ec4b893ab2d4
:var_ec4b893ab2d4_end
jmp >var_899c11b119b8_end
:var_899c11b119b8
:var_899c11b119b8_end
wmem >var_b2af79eab750 reg0
wmem >var_ec4b893ab2d4 reg1
wmem >var_899c11b119b8 reg2
jmp >var_75279cf689b6_end
:var_75279cf689b6
:var_75279cf689b6_end
set reg0 0
wmem >var_75279cf689b6 reg0
:while_9fb95a39cbf6_begin
rmem reg0 >var_75279cf689b6
rmem reg1 >var_899c11b119b8
gt reg0 reg0 reg1
call >not
jf reg0 >while_9fb95a39cbf6_end
jmp >var_99cf08515fd0_end
:var_99cf08515fd0
:var_99cf08515fd0_end
rmem reg0 >var_b2af79eab750
rmem reg1 >var_75279cf689b6
add reg0 reg0 reg1
wmem >var_99cf08515fd0 reg0
jmp >var_4509ca61b2ea_end
:var_4509ca61b2ea
:var_4509ca61b2ea_end
rmem reg0 >var_ec4b893ab2d4
rmem reg1 >var_75279cf689b6
add reg0 reg0 reg1
wmem >var_4509ca61b2ea reg0
rmem reg0 >var_4509ca61b2ea
rmem reg1 >var_99cf08515fd0
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_75279cf689b6
add reg0 reg0 1
wmem >var_75279cf689b6 reg0
jmp >while_9fb95a39cbf6_begin
:while_9fb95a39cbf6_end
ret
:mem_cp_end
jmp >str_len_end
:str_len
jmp >var_e8a2294cc60a_end
:var_e8a2294cc60a
:var_e8a2294cc60a_end
wmem >var_e8a2294cc60a reg0
jmp >var_75f767e1c4e0_end
:var_75f767e1c4e0
:var_75f767e1c4e0_end
set reg0 0
wmem >var_75f767e1c4e0 reg0
:while_bb85003fdb2c_begin
rmem reg0 >var_e8a2294cc60a
rmem reg0 reg0
jf reg0 >while_bb85003fdb2c_end
rmem reg0 >var_e8a2294cc60a
add reg0 reg0 1
wmem >var_e8a2294cc60a reg0
rmem reg0 >var_75f767e1c4e0
add reg0 reg0 1
wmem >var_75f767e1c4e0 reg0
jmp >while_bb85003fdb2c_begin
:while_bb85003fdb2c_end
rmem reg0 >var_75f767e1c4e0
ret
ret
:str_len_end
jmp >println_end
:println
jmp >var_293d3270129b_end
:var_293d3270129b
:var_293d3270129b_end
wmem >var_293d3270129b reg0
rmem reg0 >var_293d3270129b
call >print
set reg0 10
out reg0
ret
:println_end
jmp >print_end
:print
jmp >var_ab02422b5a4f_end
:var_ab02422b5a4f
:var_ab02422b5a4f_end
wmem >var_ab02422b5a4f reg0
:while_1206c63c234e_begin
rmem reg0 >var_ab02422b5a4f
rmem reg0 reg0
jf reg0 >while_1206c63c234e_end
rmem reg0 >var_ab02422b5a4f
rmem reg0 reg0
out reg0
rmem reg0 >var_ab02422b5a4f
add reg0 reg0 1
wmem >var_ab02422b5a4f reg0
jmp >while_1206c63c234e_begin
:while_1206c63c234e_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_d3696fbc0bc8_end
:var_d3696fbc0bc8
:var_d3696fbc0bc8_end
wmem >var_d3696fbc0bc8 reg0
rmem reg0 >var_d3696fbc0bc8
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_776ddb6326d5
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_776ddb6326d5
jmp >var_0b584d1eeb24_end
:var_0b584d1eeb24
:var_0b584d1eeb24_end
jmp >var_cdb7bed0f8e1_end
:var_cdb7bed0f8e1
:var_cdb7bed0f8e1_end
set reg0 0
wmem >var_cdb7bed0f8e1 reg0
:while_d92beef2a780_begin
rmem reg0 >var_d3696fbc0bc8
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_d92beef2a780_end
rmem reg0 >var_d3696fbc0bc8
set reg1 10
mod reg0 reg0 reg1
wmem >var_0b584d1eeb24 reg0
rmem reg0 >var_0b584d1eeb24
rmem reg0 >var_0b584d1eeb24
push reg0
rmem reg0 >var_cdb7bed0f8e1
add reg0 reg0 1
wmem >var_cdb7bed0f8e1 reg0
rmem reg0 >var_d3696fbc0bc8
set reg1 10
call >divide
wmem >var_d3696fbc0bc8 reg0
jmp >while_d92beef2a780_begin
:while_d92beef2a780_end
rmem reg0 >var_d3696fbc0bc8
set reg1 10
mod reg0 reg0 reg1
wmem >var_0b584d1eeb24 reg0
rmem reg0 >var_0b584d1eeb24
rmem reg0 >var_0b584d1eeb24
push reg0
rmem reg0 >var_cdb7bed0f8e1
add reg0 reg0 1
wmem >var_cdb7bed0f8e1 reg0
jmp >var_5aa4618434fd_end
:var_5aa4618434fd
:var_5aa4618434fd_end
set reg0 0
wmem >var_5aa4618434fd reg0
:while_dedf83f02fad_begin
rmem reg0 >var_5aa4618434fd
rmem reg1 >var_cdb7bed0f8e1
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_dedf83f02fad_end
rmem reg0 >var_5aa4618434fd
set reg1 1
add reg0 reg0 reg1
wmem >var_5aa4618434fd reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_dedf83f02fad_begin
:while_dedf83f02fad_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_5bd5c2288508_end
:var_5bd5c2288508
:var_5bd5c2288508_end
set reg0 0
wmem >var_5bd5c2288508 reg0
:while_2a98323280cf_begin
rmem reg0 >var_5bd5c2288508
rmem reg0 reg0
jf reg0 >while_2a98323280cf_end
rmem reg0 >var_5bd5c2288508
add reg0 reg0 1
wmem >var_5bd5c2288508 reg0
rmem reg0 >var_5bd5c2288508
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_2a98323280cf_begin
:while_2a98323280cf_end
ret
:dump_mem_end
jmp >var_a562d96a37c3_end
:var_a562d96a37c3
:var_a562d96a37c3_end
set reg0 1
wmem >var_a562d96a37c3 reg0
:while_0efc09b516ae_begin
rmem reg0 >var_a562d96a37c3
set reg1 40
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_0efc09b516ae_end
jmp >var_14e65969a1b8_end
:var_14e65969a1b8
:var_14e65969a1b8_end
rmem reg0 >var_a562d96a37c3
set reg1 3
mod reg0 reg0 reg1
wmem >var_14e65969a1b8 reg0
jmp >var_e5ad3993e8eb_end
:var_e5ad3993e8eb
:var_e5ad3993e8eb_end
rmem reg0 >var_a562d96a37c3
set reg1 5
mod reg0 reg0 reg1
wmem >var_e5ad3993e8eb reg0
rmem reg0 >var_14e65969a1b8
rmem reg1 >var_e5ad3993e8eb
call >and
jf reg0 >end_b62b8b549896
rmem reg0 >var_a562d96a37c3
call >print_number
:end_b62b8b549896
rmem reg0 >var_14e65969a1b8
call >not
jf reg0 >end_5d34eebc7d31
jmp >var_cd849d1cf8c4_end
:var_cd849d1cf8c4
&i
&z
&z
0
:var_cd849d1cf8c4_end
wmem >var_cd849d1cf8c4 &f
set reg0 >var_cd849d1cf8c4
call >print
:end_5d34eebc7d31
rmem reg0 >var_e5ad3993e8eb
call >not
jf reg0 >end_8d245292c5bf
jmp >var_fea68cce12b1_end
:var_fea68cce12b1
&u
&z
&z
0
:var_fea68cce12b1_end
wmem >var_fea68cce12b1 &b
set reg0 >var_fea68cce12b1
call >print
:end_8d245292c5bf
rmem reg0 >var_a562d96a37c3
set reg1 1
add reg0 reg0 reg1
wmem >var_a562d96a37c3 reg0
set reg0 10
out reg0
jmp >while_0efc09b516ae_begin
:while_0efc09b516ae_end

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
