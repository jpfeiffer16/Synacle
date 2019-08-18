jmp >str_equal_end
:str_equal
jmp >var_8a38023a1413_end
:var_8a38023a1413
:var_8a38023a1413_end
jmp >var_cb406a805a34_end
:var_cb406a805a34
:var_cb406a805a34_end
wmem >var_8a38023a1413 reg0
wmem >var_cb406a805a34 reg1
jmp >var_abf3bb503a65_end
:var_abf3bb503a65
:var_abf3bb503a65_end
rmem reg0 >var_8a38023a1413
call >str_len
wmem >var_abf3bb503a65 reg0
jmp >var_c65210058a65_end
:var_c65210058a65
:var_c65210058a65_end
rmem reg0 >var_cb406a805a34
call >str_len
wmem >var_c65210058a65 reg0
rmem reg0 >var_abf3bb503a65
rmem reg1 >var_c65210058a65
eq reg0 reg0 reg1
call >not
jf reg0 >end_2334b9a32645
set reg0 0
ret
:end_2334b9a32645
jmp >var_3fc4e757cb41_end
:var_3fc4e757cb41
:var_3fc4e757cb41_end
set reg0 0
wmem >var_3fc4e757cb41 reg0
:for_1bffc43a052f_begin
rmem reg0 >var_3fc4e757cb41
rmem reg1 >var_abf3bb503a65
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_1bffc43a052f_end
jmp >var_628ad34f95de_end
:var_628ad34f95de
:var_628ad34f95de_end
rmem reg0 >var_8a38023a1413
rmem reg1 >var_3fc4e757cb41
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_628ad34f95de reg0
jmp >var_074cb18b0789_end
:var_074cb18b0789
:var_074cb18b0789_end
rmem reg0 >var_cb406a805a34
rmem reg1 >var_3fc4e757cb41
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_074cb18b0789 reg0
rmem reg0 >var_628ad34f95de
rmem reg1 >var_074cb18b0789
eq reg0 reg0 reg1
call >not
jf reg0 >end_8b38aaae68c2
set reg0 0
ret
:end_8b38aaae68c2
rmem reg0 >var_3fc4e757cb41
add reg0 reg0 1
wmem >var_3fc4e757cb41 reg0
jmp >for_1bffc43a052f_begin
:for_1bffc43a052f_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_f4dc715d0a50_end
:var_f4dc715d0a50
:var_f4dc715d0a50_end
set reg0 16382
wmem >var_f4dc715d0a50 reg0
:while_992b2696e215_begin
rmem reg0 >var_f4dc715d0a50
rmem reg0 reg0
call >not
jf reg0 >while_992b2696e215_end
rmem reg0 >var_f4dc715d0a50
set reg1 1
call >subtract
wmem >var_f4dc715d0a50 reg0
jmp >while_992b2696e215_begin
:while_992b2696e215_end
rmem reg0 >var_f4dc715d0a50
set reg1 2
add reg0 reg0 reg1
wmem >var_f4dc715d0a50 reg0
rmem reg0 >var_f4dc715d0a50
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_7bc21707a694_end
:var_7bc21707a694
:var_7bc21707a694_end
wmem >var_7bc21707a694 reg0
jmp >var_04da040fc280_end
:var_04da040fc280
:var_04da040fc280_end
call >alloc
wmem >var_04da040fc280 reg0
jmp >var_af2d969f8498_end
:var_af2d969f8498
:var_af2d969f8498_end
rmem reg0 >var_04da040fc280
rmem reg1 >var_7bc21707a694
add reg0 reg0 reg1
wmem >var_af2d969f8498 reg0
rmem reg0 >var_af2d969f8498
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_04da040fc280
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_c76d5b960577_end
:var_c76d5b960577
:var_c76d5b960577_end
jmp >var_d3fa8729845d_end
:var_d3fa8729845d
:var_d3fa8729845d_end
jmp >var_23f071f0e3fd_end
:var_23f071f0e3fd
:var_23f071f0e3fd_end
wmem >var_c76d5b960577 reg0
wmem >var_d3fa8729845d reg1
wmem >var_23f071f0e3fd reg2
jmp >var_0d747951a6f0_end
:var_0d747951a6f0
:var_0d747951a6f0_end
set reg0 0
wmem >var_0d747951a6f0 reg0
:while_5d2a7d610184_begin
rmem reg0 >var_0d747951a6f0
rmem reg1 >var_23f071f0e3fd
gt reg0 reg0 reg1
call >not
jf reg0 >while_5d2a7d610184_end
jmp >var_f9e166d70094_end
:var_f9e166d70094
:var_f9e166d70094_end
rmem reg0 >var_c76d5b960577
rmem reg1 >var_0d747951a6f0
add reg0 reg0 reg1
wmem >var_f9e166d70094 reg0
jmp >var_1a479ee1be29_end
:var_1a479ee1be29
:var_1a479ee1be29_end
rmem reg0 >var_d3fa8729845d
rmem reg1 >var_0d747951a6f0
add reg0 reg0 reg1
wmem >var_1a479ee1be29 reg0
rmem reg0 >var_1a479ee1be29
rmem reg1 >var_f9e166d70094
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_0d747951a6f0
add reg0 reg0 1
wmem >var_0d747951a6f0 reg0
jmp >while_5d2a7d610184_begin
:while_5d2a7d610184_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_eecf3aa0c89a_end
:var_eecf3aa0c89a
:var_eecf3aa0c89a_end
wmem >var_eecf3aa0c89a reg0
jmp >var_a3fa07ae7dd1_end
:var_a3fa07ae7dd1
:var_a3fa07ae7dd1_end
set reg0 0
wmem >var_a3fa07ae7dd1 reg0
:while_f6f8c8d6d13e_begin
rmem reg0 >var_eecf3aa0c89a
rmem reg0 reg0
jf reg0 >while_f6f8c8d6d13e_end
rmem reg0 >var_eecf3aa0c89a
add reg0 reg0 1
wmem >var_eecf3aa0c89a reg0
rmem reg0 >var_a3fa07ae7dd1
add reg0 reg0 1
wmem >var_a3fa07ae7dd1 reg0
jmp >while_f6f8c8d6d13e_begin
:while_f6f8c8d6d13e_end
rmem reg0 >var_a3fa07ae7dd1
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_e4e1c2b8e27a_end
:var_e4e1c2b8e27a
:var_e4e1c2b8e27a_end
jmp >var_11bdce406a6b_end
:var_11bdce406a6b
:var_11bdce406a6b_end
wmem >var_e4e1c2b8e27a reg0
wmem >var_11bdce406a6b reg1
jmp >var_e5f09e8ae2c9_end
:var_e5f09e8ae2c9
:var_e5f09e8ae2c9_end
rmem reg0 >var_e4e1c2b8e27a
call >str_len
wmem >var_e5f09e8ae2c9 reg0
jmp >var_fe68b74134b3_end
:var_fe68b74134b3
:var_fe68b74134b3_end
rmem reg0 >var_11bdce406a6b
call >str_len
wmem >var_fe68b74134b3 reg0
jmp >var_c59bb3983e3f_end
:var_c59bb3983e3f
:var_c59bb3983e3f_end
call >alloc
wmem >var_c59bb3983e3f reg0
rmem reg0 >var_e4e1c2b8e27a
rmem reg1 >var_c59bb3983e3f
rmem reg2 >var_e5f09e8ae2c9
call >mem_cp
jmp >var_fc8b7c02cc2a_end
:var_fc8b7c02cc2a
:var_fc8b7c02cc2a_end
rmem reg0 >var_c59bb3983e3f
rmem reg1 >var_e5f09e8ae2c9
add reg0 reg0 reg1
wmem >var_fc8b7c02cc2a reg0
rmem reg0 >var_fe68b74134b3
add reg0 reg0 1
wmem >var_fe68b74134b3 reg0
rmem reg0 >var_11bdce406a6b
rmem reg1 >var_fc8b7c02cc2a
rmem reg2 >var_fe68b74134b3
call >mem_cp
rmem reg0 >var_c59bb3983e3f
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_7f38e948805f_end
:var_7f38e948805f
:var_7f38e948805f_end
wmem >var_7f38e948805f reg0
jmp >var_de927f9ebb40_end
:var_de927f9ebb40
:var_de927f9ebb40_end
call >alloc
wmem >var_de927f9ebb40 reg0
jmp >var_b03a2352babb_end
:var_b03a2352babb
:var_b03a2352babb_end
rmem reg0 >var_7f38e948805f
call >str_len
wmem >var_b03a2352babb reg0
jmp >var_68e8aa1fb3c1_end
:var_68e8aa1fb3c1
:var_68e8aa1fb3c1_end
set reg0 0
wmem >var_68e8aa1fb3c1 reg0
:while_cab9902d75a3_begin
rmem reg0 >var_68e8aa1fb3c1
rmem reg1 >var_b03a2352babb
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_cab9902d75a3_end
jmp >var_059386c4c962_end
:var_059386c4c962
:var_059386c4c962_end
rmem reg0 >var_7f38e948805f
rmem reg1 >var_68e8aa1fb3c1
add reg0 reg0 reg1
wmem >var_059386c4c962 reg0
rmem reg0 >var_059386c4c962
rmem reg0 reg0
rmem reg0 >var_059386c4c962
rmem reg0 reg0
push reg0
rmem reg0 >var_68e8aa1fb3c1
add reg0 reg0 1
wmem >var_68e8aa1fb3c1 reg0
jmp >while_cab9902d75a3_begin
:while_cab9902d75a3_end
jmp >var_3388256098b4_end
:var_3388256098b4
:var_3388256098b4_end
pop reg0
wmem >var_3388256098b4 reg0
set reg0 0
wmem >var_68e8aa1fb3c1 reg0
:while_c1ab04a63e97_begin
rmem reg0 >var_68e8aa1fb3c1
rmem reg1 >var_b03a2352babb
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_c1ab04a63e97_end
jmp >var_36697ad63bf3_end
:var_36697ad63bf3
:var_36697ad63bf3_end
rmem reg0 >var_de927f9ebb40
rmem reg1 >var_68e8aa1fb3c1
add reg0 reg0 reg1
wmem >var_36697ad63bf3 reg0
rmem reg0 >var_36697ad63bf3
rmem reg1 >var_3388256098b4
wmem reg0 reg1
rmem reg0 >var_68e8aa1fb3c1
add reg0 reg0 1
wmem >var_68e8aa1fb3c1 reg0
pop reg0
wmem >var_3388256098b4 reg0
jmp >while_c1ab04a63e97_begin
:while_c1ab04a63e97_end
rmem reg0 >var_3388256098b4
rmem reg0 >var_3388256098b4
push reg0
rmem reg0 >var_de927f9ebb40
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_368b2c31e20c_end
:var_368b2c31e20c
:var_368b2c31e20c_end
set reg0 16384
wmem >var_368b2c31e20c reg0
jmp >var_470f2e09a6ae_end
:var_470f2e09a6ae
:var_470f2e09a6ae_end
in reg0
wmem >var_470f2e09a6ae reg0
jmp >var_49dab4f8e057_end
:var_49dab4f8e057
:var_49dab4f8e057_end
rmem reg0 >var_470f2e09a6ae
set reg1 10
eq reg0 reg0 reg1
wmem >var_49dab4f8e057 reg0
:while_536b2e71a089_begin
rmem reg0 >var_49dab4f8e057
rmem reg1 >var_470f2e09a6ae
call >and
call >not
jf reg0 >while_536b2e71a089_end
rmem reg0 >var_368b2c31e20c
rmem reg1 >var_470f2e09a6ae
wmem reg0 reg1
rmem reg0 >var_368b2c31e20c
add reg0 reg0 1
wmem >var_368b2c31e20c reg0
in reg0
wmem >var_470f2e09a6ae reg0
rmem reg0 >var_470f2e09a6ae
set reg1 10
eq reg0 reg0 reg1
wmem >var_49dab4f8e057 reg0
jmp >while_536b2e71a089_begin
:while_536b2e71a089_end
rmem reg0 >var_368b2c31e20c
set reg1 0
wmem reg0 reg1
jmp >var_bb6783ef1e2b_end
:var_bb6783ef1e2b
:var_bb6783ef1e2b_end
call >alloc
wmem >var_bb6783ef1e2b reg0
jmp >var_a4b6b901d319_end
:var_a4b6b901d319
:var_a4b6b901d319_end
set reg0 16384
call >str_len
wmem >var_a4b6b901d319 reg0
set reg0 16384
rmem reg1 >var_bb6783ef1e2b
rmem reg2 >var_a4b6b901d319
call >mem_cp
rmem reg0 >var_bb6783ef1e2b
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_94e925de1289_end
:var_94e925de1289
:var_94e925de1289_end
wmem >var_94e925de1289 reg0
:while_3ad448cc43cd_begin
rmem reg0 >var_94e925de1289
rmem reg0 reg0
jf reg0 >while_3ad448cc43cd_end
rmem reg0 >var_94e925de1289
rmem reg0 reg0
out reg0
rmem reg0 >var_94e925de1289
add reg0 reg0 1
wmem >var_94e925de1289 reg0
jmp >while_3ad448cc43cd_begin
:while_3ad448cc43cd_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_f8ae8a288ef5_end
:var_f8ae8a288ef5
:var_f8ae8a288ef5_end
wmem >var_f8ae8a288ef5 reg0
rmem reg0 >var_f8ae8a288ef5
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_724b15197f46_end
:var_724b15197f46
:var_724b15197f46_end
wmem >var_724b15197f46 reg0
rmem reg0 >var_724b15197f46
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_dbfafbb25e8e
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_dbfafbb25e8e
jmp >var_cb494c203190_end
:var_cb494c203190
:var_cb494c203190_end
jmp >var_b3d9ff808572_end
:var_b3d9ff808572
:var_b3d9ff808572_end
set reg0 0
wmem >var_b3d9ff808572 reg0
:while_b343257a168b_begin
rmem reg0 >var_724b15197f46
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_b343257a168b_end
rmem reg0 >var_724b15197f46
set reg1 10
mod reg0 reg0 reg1
wmem >var_cb494c203190 reg0
rmem reg0 >var_cb494c203190
rmem reg0 >var_cb494c203190
push reg0
rmem reg0 >var_b3d9ff808572
add reg0 reg0 1
wmem >var_b3d9ff808572 reg0
rmem reg0 >var_724b15197f46
set reg1 10
call >divide
wmem >var_724b15197f46 reg0
jmp >while_b343257a168b_begin
:while_b343257a168b_end
rmem reg0 >var_724b15197f46
set reg1 10
mod reg0 reg0 reg1
wmem >var_cb494c203190 reg0
rmem reg0 >var_cb494c203190
rmem reg0 >var_cb494c203190
push reg0
rmem reg0 >var_b3d9ff808572
add reg0 reg0 1
wmem >var_b3d9ff808572 reg0
jmp >var_a3fffe7d9bf6_end
:var_a3fffe7d9bf6
:var_a3fffe7d9bf6_end
set reg0 0
wmem >var_a3fffe7d9bf6 reg0
:while_d0589a3dffa8_begin
rmem reg0 >var_a3fffe7d9bf6
rmem reg1 >var_b3d9ff808572
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_d0589a3dffa8_end
rmem reg0 >var_a3fffe7d9bf6
set reg1 1
add reg0 reg0 reg1
wmem >var_a3fffe7d9bf6 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_d0589a3dffa8_begin
:while_d0589a3dffa8_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_ac586fde81a4_end
:var_ac586fde81a4
:var_ac586fde81a4_end
set reg0 0
wmem >var_ac586fde81a4 reg0
:while_58023307ab44_begin
rmem reg0 >var_ac586fde81a4
rmem reg0 reg0
jf reg0 >while_58023307ab44_end
rmem reg0 >var_ac586fde81a4
add reg0 reg0 1
wmem >var_ac586fde81a4 reg0
rmem reg0 >var_ac586fde81a4
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_58023307ab44_begin
:while_58023307ab44_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_3c3b75ef85af_end
:var_3c3b75ef85af
:var_3c3b75ef85af_end
wmem >var_3c3b75ef85af reg0
jmp >var_d58d909bae9b_end
:var_d58d909bae9b
:var_d58d909bae9b_end
rmem reg0 >var_3c3b75ef85af
call >flip_str
wmem >var_d58d909bae9b reg0
jmp >var_dc546b96af40_end
:var_dc546b96af40
:var_dc546b96af40_end
rmem reg0 >var_d58d909bae9b
call >str_len
wmem >var_dc546b96af40 reg0
rmem reg0 >var_dc546b96af40
set reg1 1
call >subtract
wmem >var_dc546b96af40 reg0
jmp >var_993dd92d53d3_end
:var_993dd92d53d3
:var_993dd92d53d3_end
set reg0 0
wmem >var_993dd92d53d3 reg0
jmp >var_646eb918f3cc_end
:var_646eb918f3cc
:var_646eb918f3cc_end
set reg0 0
wmem >var_646eb918f3cc reg0
:while_125a94678279_begin
rmem reg0 >var_993dd92d53d3
rmem reg1 >var_dc546b96af40
gt reg0 reg0 reg1
call >not
jf reg0 >while_125a94678279_end
jmp >var_6b6960dbd838_end
:var_6b6960dbd838
:var_6b6960dbd838_end
rmem reg0 >var_d58d909bae9b
rmem reg1 >var_993dd92d53d3
add reg0 reg0 reg1
wmem >var_6b6960dbd838 reg0
rmem reg0 >var_6b6960dbd838
rmem reg0 reg0
wmem >var_6b6960dbd838 reg0
jmp >var_52a8d6db83f1_end
:var_52a8d6db83f1
:var_52a8d6db83f1_end
rmem reg0 >var_6b6960dbd838
set reg1 47
gt reg0 reg0 reg1
wmem >var_52a8d6db83f1 reg0
jmp >var_0fc9b2401157_end
:var_0fc9b2401157
:var_0fc9b2401157_end
rmem reg0 >var_6b6960dbd838
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_0fc9b2401157 reg0
rmem reg0 >var_52a8d6db83f1
rmem reg1 >var_0fc9b2401157
call >and
jf reg0 >end_70878dc9fed1
jmp >var_060cddef69c1_end
:var_060cddef69c1
:var_060cddef69c1_end
rmem reg0 >var_6b6960dbd838
set reg1 48
call >subtract
wmem >var_060cddef69c1 reg0
rmem reg0 >var_060cddef69c1
call >print_number
set reg0 10
out reg0
jmp >var_a9730f7727c7_end
:var_a9730f7727c7
:var_a9730f7727c7_end
set reg0 0
wmem >var_a9730f7727c7 reg0
jmp >var_f232fb696739_end
:var_f232fb696739
:var_f232fb696739_end
rmem reg0 >var_993dd92d53d3
set reg1 1
call >subtract
wmem >var_f232fb696739 reg0
:while_a6eb8cf98930_begin
rmem reg0 >var_a9730f7727c7
rmem reg1 >var_f232fb696739
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_a6eb8cf98930_end
rmem reg0 >var_060cddef69c1
set reg1 10
call >subtract
wmem >var_060cddef69c1 reg0
rmem reg0 >var_a9730f7727c7
add reg0 reg0 1
wmem >var_a9730f7727c7 reg0
jmp >while_a6eb8cf98930_begin
:while_a6eb8cf98930_end
rmem reg0 >var_646eb918f3cc
rmem reg1 >var_060cddef69c1
add reg0 reg0 reg1
wmem >var_646eb918f3cc reg0
:end_70878dc9fed1
rmem reg0 >var_993dd92d53d3
add reg0 reg0 1
wmem >var_993dd92d53d3 reg0
jmp >while_125a94678279_begin
:while_125a94678279_end
rmem reg0 >var_646eb918f3cc
call >print_number
rmem reg0 >var_646eb918f3cc
ret
ret
:int_end
set reg0 >int
jmp >var_ef6345ed8a52_end
:var_ef6345ed8a52
:var_ef6345ed8a52_end
jmp >var_a0535e559830_end
:var_a0535e559830
&n
&d
&e
&x
32
&o
&u
&t
&s
&i
&d
&e
32
&o
&f
32
&t
&h
&e
32
&b
&o
&u
&n
&d
&s
32
&o
&f
32
&a
&r
&r
&a
&y
0
:var_a0535e559830_end
wmem >var_a0535e559830 &I
set reg0 >var_a0535e559830
wmem >var_ef6345ed8a52 reg0
jmp >array_new_end
:array_new
jmp >var_b47dd390cfa1_end
:var_b47dd390cfa1
:var_b47dd390cfa1_end
wmem >var_b47dd390cfa1 reg0
jmp >var_fd6d9b33fe13_end
:var_fd6d9b33fe13
:var_fd6d9b33fe13_end
rmem reg0 >var_b47dd390cfa1
call >alloc_chunk
wmem >var_fd6d9b33fe13 reg0
rmem reg0 >var_fd6d9b33fe13
ret
ret
:array_new_end
set reg0 >array_new
jmp >array_get_nth_end
:array_get_nth
jmp >var_8044abb5a954_end
:var_8044abb5a954
:var_8044abb5a954_end
jmp >var_5a9f5aa995ee_end
:var_5a9f5aa995ee
:var_5a9f5aa995ee_end
wmem >var_8044abb5a954 reg0
wmem >var_5a9f5aa995ee reg1
jmp >var_c4b54e6f8294_end
:var_c4b54e6f8294
:var_c4b54e6f8294_end
rmem reg0 >var_8044abb5a954
call >array_length
wmem >var_c4b54e6f8294 reg0
rmem reg0 >var_5a9f5aa995ee
rmem reg1 >var_c4b54e6f8294
gt reg2 reg0 reg1
eq reg3 reg0 reg1
or reg0 reg2 reg3
jf reg0 >end_0ca4b046a4a4
rmem reg0 >var_ef6345ed8a52
call >throw
:end_0ca4b046a4a4
jmp >var_65df2c962cb5_end
:var_65df2c962cb5
:var_65df2c962cb5_end
rmem reg0 >var_8044abb5a954
rmem reg1 >var_5a9f5aa995ee
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_65df2c962cb5 reg0
rmem reg0 >var_65df2c962cb5
ret
ret
:array_get_nth_end
set reg0 >array_get_nth
jmp >array_set_nth_end
:array_set_nth
jmp >var_8b20bca59ece_end
:var_8b20bca59ece
:var_8b20bca59ece_end
jmp >var_7f6bfbfbcc20_end
:var_7f6bfbfbcc20
:var_7f6bfbfbcc20_end
jmp >var_d511619681f8_end
:var_d511619681f8
:var_d511619681f8_end
wmem >var_8b20bca59ece reg0
wmem >var_7f6bfbfbcc20 reg1
wmem >var_d511619681f8 reg2
jmp >var_46887b9b15fb_end
:var_46887b9b15fb
:var_46887b9b15fb_end
rmem reg0 >var_8b20bca59ece
call >array_length
wmem >var_46887b9b15fb reg0
rmem reg0 >var_7f6bfbfbcc20
rmem reg1 >var_46887b9b15fb
gt reg2 reg0 reg1
eq reg3 reg0 reg1
or reg0 reg2 reg3
jf reg0 >end_f62107869e76
rmem reg0 >var_ef6345ed8a52
call >throw
:end_f62107869e76
rmem reg0 >var_8b20bca59ece
rmem reg1 >var_7f6bfbfbcc20
add reg0 reg0 reg1
rmem reg1 >var_d511619681f8
wmem reg0 reg1
ret
:array_set_nth_end
set reg0 >array_set_nth
jmp >array_length_end
:array_length
jmp >var_39cd6f2ad964_end
:var_39cd6f2ad964
:var_39cd6f2ad964_end
wmem >var_39cd6f2ad964 reg0
jmp >var_cf249c0c4078_end
:var_cf249c0c4078
:var_cf249c0c4078_end
set reg0 0
wmem >var_cf249c0c4078 reg0
jmp >var_6e42ab6d0d6f_end
:var_6e42ab6d0d6f
:var_6e42ab6d0d6f_end
rmem reg0 >var_39cd6f2ad964
rmem reg1 >var_cf249c0c4078
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_6e42ab6d0d6f reg0
:while_5854d555c3a1_begin
rmem reg0 >var_6e42ab6d0d6f
set reg1 32767
eq reg0 reg0 reg1
call >not
jf reg0 >while_5854d555c3a1_end
rmem reg0 >var_cf249c0c4078
add reg0 reg0 1
wmem >var_cf249c0c4078 reg0
rmem reg0 >var_39cd6f2ad964
rmem reg1 >var_cf249c0c4078
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_6e42ab6d0d6f reg0
jmp >while_5854d555c3a1_begin
:while_5854d555c3a1_end
rmem reg0 >var_cf249c0c4078
ret
ret
:array_length_end
set reg0 >array_length
jmp >array_foreach_end
:array_foreach
jmp >var_87ae8e8d64fe_end
:var_87ae8e8d64fe
:var_87ae8e8d64fe_end
jmp >var_94d43a603538_end
:var_94d43a603538
:var_94d43a603538_end
wmem >var_87ae8e8d64fe reg0
wmem >var_94d43a603538 reg1
jmp >var_8fc45792a0fd_end
:var_8fc45792a0fd
:var_8fc45792a0fd_end
rmem reg0 >var_87ae8e8d64fe
call >array_length
wmem >var_8fc45792a0fd reg0
jmp >var_dc852663520c_end
:var_dc852663520c
:var_dc852663520c_end
set reg0 0
wmem >var_dc852663520c reg0
:for_f2bdef66d802_begin
rmem reg0 >var_dc852663520c
rmem reg1 >var_8fc45792a0fd
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_f2bdef66d802_end
rmem reg0 >var_87ae8e8d64fe
rmem reg1 >var_dc852663520c
add reg0 reg0 reg1
rmem reg1 >var_dc852663520c
rmem reg7 >var_94d43a603538
call reg7
rmem reg0 >var_dc852663520c
add reg0 reg0 1
wmem >var_dc852663520c reg0
jmp >for_f2bdef66d802_begin
:for_f2bdef66d802_end
ret
:array_foreach_end
set reg0 >array_foreach
jmp >array_map_end
:array_map
jmp >var_5f757ddc8f39_end
:var_5f757ddc8f39
:var_5f757ddc8f39_end
jmp >var_ef1853977693_end
:var_ef1853977693
:var_ef1853977693_end
wmem >var_5f757ddc8f39 reg0
wmem >var_ef1853977693 reg1
jmp >var_e957f4cfea6d_end
:var_e957f4cfea6d
:var_e957f4cfea6d_end
rmem reg0 >var_5f757ddc8f39
call >array_length
wmem >var_e957f4cfea6d reg0
jmp >var_f4fd914572d4_end
:var_f4fd914572d4
:var_f4fd914572d4_end
rmem reg0 >var_e957f4cfea6d
call >alloc_chunk
wmem >var_f4fd914572d4 reg0
jmp >var_d282749f79bf_end
:var_d282749f79bf
:var_d282749f79bf_end
set reg0 0
wmem >var_d282749f79bf reg0
:for_47fec4ea8da5_begin
rmem reg0 >var_d282749f79bf
rmem reg1 >var_e957f4cfea6d
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_47fec4ea8da5_end
jmp >var_d5efa1cb273d_end
:var_d5efa1cb273d
:var_d5efa1cb273d_end
rmem reg0 >var_5f757ddc8f39
rmem reg1 >var_d282749f79bf
call >array_get_nth
wmem >var_d5efa1cb273d reg0
jmp >var_13d73c534f20_end
:var_13d73c534f20
:var_13d73c534f20_end
rmem reg0 >var_d5efa1cb273d
rmem reg7 >var_ef1853977693
call reg7
wmem >var_13d73c534f20 reg0
rmem reg0 >var_f4fd914572d4
rmem reg1 >var_d282749f79bf
rmem reg2 >var_13d73c534f20
call >array_set_nth
rmem reg0 >var_d282749f79bf
add reg0 reg0 1
wmem >var_d282749f79bf reg0
jmp >for_47fec4ea8da5_begin
:for_47fec4ea8da5_end
rmem reg0 >var_f4fd914572d4
ret
ret
:array_map_end
set reg0 >array_map
jmp >throw_end
:throw
jmp >var_47e834eb017b_end
:var_47e834eb017b
:var_47e834eb017b_end
wmem >var_47e834eb017b reg0
rmem reg0 >var_47e834eb017b
call >println
halt
ret
:throw_end
set reg0 >throw
jmp >var_6174158237d0_end
:var_6174158237d0
:var_6174158237d0_end
set reg0 10
call >array_new
wmem >var_6174158237d0 reg0
jmp >var_5c246c8f60b3_end
:var_5c246c8f60b3
:var_5c246c8f60b3_end
set reg0 0
wmem >var_5c246c8f60b3 reg0
:for_d4378d595c1a_begin
rmem reg0 >var_5c246c8f60b3
set reg1 10
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_d4378d595c1a_end
jmp >var_b7e68e4dba6c_end
:var_b7e68e4dba6c
:var_b7e68e4dba6c_end
rmem reg0 >var_5c246c8f60b3
set reg1 1
add reg0 reg0 reg1
wmem >var_b7e68e4dba6c reg0
rmem reg0 >var_6174158237d0
rmem reg1 >var_5c246c8f60b3
rmem reg2 >var_b7e68e4dba6c
call >array_set_nth
rmem reg0 >var_5c246c8f60b3
add reg0 reg0 1
wmem >var_5c246c8f60b3 reg0
jmp >for_d4378d595c1a_begin
:for_d4378d595c1a_end
jmp >var_a0cb6129fe8b_end
:var_a0cb6129fe8b
:var_a0cb6129fe8b_end
rmem reg0 >var_6174158237d0
jmp >function_d4a620a77bfd_end
:function_d4a620a77bfd
jmp >var_ba373cc80926_end
:var_ba373cc80926
:var_ba373cc80926_end
wmem >var_ba373cc80926 reg0
rmem reg1 >var_ba373cc80926
add reg0 reg0 1
wmem >var_ba373cc80926 reg0
rmem reg1 >var_ba373cc80926
ret
ret
:function_d4a620a77bfd_end
set reg1 >function_d4a620a77bfd
call >array_map
wmem >var_a0cb6129fe8b reg0
jmp >var_6cd7b9233e7c_end
:var_6cd7b9233e7c
:var_6cd7b9233e7c_end
jmp >function_b23186761fec_end
:function_b23186761fec
jmp >var_f5f5a1f9e505_end
:var_f5f5a1f9e505
:var_f5f5a1f9e505_end
wmem >var_f5f5a1f9e505 reg0
rmem reg0 >var_f5f5a1f9e505
rmem reg0 reg0
call >print_number
jmp >var_52c133468d62_end
:var_52c133468d62
0
:var_52c133468d62_end
wmem >var_52c133468d62 32
set reg0 >var_52c133468d62
call >println
ret
:function_b23186761fec_end
set reg0 >function_b23186761fec
wmem >var_6cd7b9233e7c reg0
rmem reg0 >var_a0cb6129fe8b
rmem reg1 >var_6cd7b9233e7c
call >array_foreach
breakpoint
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

