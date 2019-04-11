jmp >str_equal_end
:str_equal
jmp >var_5e74f7de55e9_end
:var_5e74f7de55e9
:var_5e74f7de55e9_end
jmp >var_4937416a00a4_end
:var_4937416a00a4
:var_4937416a00a4_end
wmem >var_5e74f7de55e9 reg0
wmem >var_4937416a00a4 reg1
jmp >var_6dceb67ee3cd_end
:var_6dceb67ee3cd
:var_6dceb67ee3cd_end
rmem reg0 >var_5e74f7de55e9
call >str_len
wmem >var_6dceb67ee3cd reg0
jmp >var_a8adb3ade874_end
:var_a8adb3ade874
:var_a8adb3ade874_end
rmem reg0 >var_4937416a00a4
call >str_len
wmem >var_a8adb3ade874 reg0
rmem reg0 >var_6dceb67ee3cd
rmem reg1 >var_a8adb3ade874
eq reg0 reg0 reg1
call >not
jf reg0 >end_a118113bb170
set reg0 0
ret
:end_a118113bb170
jmp >var_fb79eac8b0cd_end
:var_fb79eac8b0cd
:var_fb79eac8b0cd_end
set reg0 0
wmem >var_fb79eac8b0cd reg0
:for_c2d0903a7d96_begin
rmem reg0 >var_fb79eac8b0cd
rmem reg1 >var_6dceb67ee3cd
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_c2d0903a7d96_end
jmp >var_052e4a3f9eec_end
:var_052e4a3f9eec
:var_052e4a3f9eec_end
rmem reg0 >var_5e74f7de55e9
rmem reg1 >var_fb79eac8b0cd
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_052e4a3f9eec reg0
jmp >var_e8302276b153_end
:var_e8302276b153
:var_e8302276b153_end
rmem reg0 >var_4937416a00a4
rmem reg1 >var_fb79eac8b0cd
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_e8302276b153 reg0
rmem reg0 >var_052e4a3f9eec
rmem reg1 >var_e8302276b153
eq reg0 reg0 reg1
call >not
jf reg0 >end_0157040e6785
set reg0 0
ret
:end_0157040e6785
rmem reg0 >var_fb79eac8b0cd
add reg0 reg0 1
wmem >var_fb79eac8b0cd reg0
jmp >for_c2d0903a7d96_begin
:for_c2d0903a7d96_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_d7331ce35b3b_end
:var_d7331ce35b3b
:var_d7331ce35b3b_end
set reg0 16382
wmem >var_d7331ce35b3b reg0
:while_e0dfd5b3fe5a_begin
rmem reg0 >var_d7331ce35b3b
rmem reg0 reg0
call >not
jf reg0 >while_e0dfd5b3fe5a_end
rmem reg0 >var_d7331ce35b3b
set reg1 1
call >subtract
wmem >var_d7331ce35b3b reg0
jmp >while_e0dfd5b3fe5a_begin
:while_e0dfd5b3fe5a_end
rmem reg0 >var_d7331ce35b3b
set reg1 2
add reg0 reg0 reg1
wmem >var_d7331ce35b3b reg0
rmem reg0 >var_d7331ce35b3b
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_590d932dd60d_end
:var_590d932dd60d
:var_590d932dd60d_end
wmem >var_590d932dd60d reg0
jmp >var_e9c3254b7731_end
:var_e9c3254b7731
:var_e9c3254b7731_end
call >alloc
wmem >var_e9c3254b7731 reg0
jmp >var_0b53624ca657_end
:var_0b53624ca657
:var_0b53624ca657_end
rmem reg0 >var_e9c3254b7731
rmem reg1 >var_590d932dd60d
add reg0 reg0 reg1
wmem >var_0b53624ca657 reg0
rmem reg0 >var_0b53624ca657
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_e9c3254b7731
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_7ec3f959edb3_end
:var_7ec3f959edb3
:var_7ec3f959edb3_end
jmp >var_f2a9f1d19527_end
:var_f2a9f1d19527
:var_f2a9f1d19527_end
jmp >var_3259d2a5bda5_end
:var_3259d2a5bda5
:var_3259d2a5bda5_end
wmem >var_7ec3f959edb3 reg0
wmem >var_f2a9f1d19527 reg1
wmem >var_3259d2a5bda5 reg2
jmp >var_37e7ad664dcb_end
:var_37e7ad664dcb
:var_37e7ad664dcb_end
set reg0 0
wmem >var_37e7ad664dcb reg0
:while_14e617e69f53_begin
rmem reg0 >var_37e7ad664dcb
rmem reg1 >var_3259d2a5bda5
gt reg0 reg0 reg1
call >not
jf reg0 >while_14e617e69f53_end
jmp >var_450d82830436_end
:var_450d82830436
:var_450d82830436_end
rmem reg0 >var_7ec3f959edb3
rmem reg1 >var_37e7ad664dcb
add reg0 reg0 reg1
wmem >var_450d82830436 reg0
jmp >var_ceeb5c383d00_end
:var_ceeb5c383d00
:var_ceeb5c383d00_end
rmem reg0 >var_f2a9f1d19527
rmem reg1 >var_37e7ad664dcb
add reg0 reg0 reg1
wmem >var_ceeb5c383d00 reg0
rmem reg0 >var_ceeb5c383d00
rmem reg1 >var_450d82830436
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_37e7ad664dcb
add reg0 reg0 1
wmem >var_37e7ad664dcb reg0
jmp >while_14e617e69f53_begin
:while_14e617e69f53_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_8bd907e44efd_end
:var_8bd907e44efd
:var_8bd907e44efd_end
wmem >var_8bd907e44efd reg0
jmp >var_4d04031242f1_end
:var_4d04031242f1
:var_4d04031242f1_end
set reg0 0
wmem >var_4d04031242f1 reg0
:while_d1909ae1f9cf_begin
rmem reg0 >var_8bd907e44efd
rmem reg0 reg0
jf reg0 >while_d1909ae1f9cf_end
rmem reg0 >var_8bd907e44efd
add reg0 reg0 1
wmem >var_8bd907e44efd reg0
rmem reg0 >var_4d04031242f1
add reg0 reg0 1
wmem >var_4d04031242f1 reg0
jmp >while_d1909ae1f9cf_begin
:while_d1909ae1f9cf_end
rmem reg0 >var_4d04031242f1
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_a2ca2c1b9ed8_end
:var_a2ca2c1b9ed8
:var_a2ca2c1b9ed8_end
jmp >var_d2048767f389_end
:var_d2048767f389
:var_d2048767f389_end
wmem >var_a2ca2c1b9ed8 reg0
wmem >var_d2048767f389 reg1
jmp >var_f248d53bac41_end
:var_f248d53bac41
:var_f248d53bac41_end
rmem reg0 >var_a2ca2c1b9ed8
call >str_len
wmem >var_f248d53bac41 reg0
jmp >var_560c847abc15_end
:var_560c847abc15
:var_560c847abc15_end
rmem reg0 >var_d2048767f389
call >str_len
wmem >var_560c847abc15 reg0
jmp >var_616e36bbfe5b_end
:var_616e36bbfe5b
:var_616e36bbfe5b_end
call >alloc
wmem >var_616e36bbfe5b reg0
rmem reg0 >var_a2ca2c1b9ed8
rmem reg1 >var_616e36bbfe5b
rmem reg2 >var_f248d53bac41
call >mem_cp
jmp >var_61a69a0ac183_end
:var_61a69a0ac183
:var_61a69a0ac183_end
rmem reg0 >var_616e36bbfe5b
rmem reg1 >var_f248d53bac41
add reg0 reg0 reg1
wmem >var_61a69a0ac183 reg0
rmem reg0 >var_560c847abc15
add reg0 reg0 1
wmem >var_560c847abc15 reg0
rmem reg0 >var_d2048767f389
rmem reg1 >var_61a69a0ac183
rmem reg2 >var_560c847abc15
call >mem_cp
rmem reg0 >var_616e36bbfe5b
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_84d741de57a4_end
:var_84d741de57a4
:var_84d741de57a4_end
wmem >var_84d741de57a4 reg0
jmp >var_7e890c1f2663_end
:var_7e890c1f2663
:var_7e890c1f2663_end
call >alloc
wmem >var_7e890c1f2663 reg0
jmp >var_2d33c27db224_end
:var_2d33c27db224
:var_2d33c27db224_end
rmem reg0 >var_84d741de57a4
call >str_len
wmem >var_2d33c27db224 reg0
jmp >var_3d5a5231f73b_end
:var_3d5a5231f73b
:var_3d5a5231f73b_end
set reg0 0
wmem >var_3d5a5231f73b reg0
:while_af649b89500f_begin
rmem reg0 >var_3d5a5231f73b
rmem reg1 >var_2d33c27db224
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_af649b89500f_end
jmp >var_520b53ea6db6_end
:var_520b53ea6db6
:var_520b53ea6db6_end
rmem reg0 >var_84d741de57a4
rmem reg1 >var_3d5a5231f73b
add reg0 reg0 reg1
wmem >var_520b53ea6db6 reg0
rmem reg0 >var_520b53ea6db6
rmem reg0 reg0
rmem reg0 >var_520b53ea6db6
rmem reg0 reg0
push reg0
rmem reg0 >var_3d5a5231f73b
add reg0 reg0 1
wmem >var_3d5a5231f73b reg0
jmp >while_af649b89500f_begin
:while_af649b89500f_end
jmp >var_2f99a6008f75_end
:var_2f99a6008f75
:var_2f99a6008f75_end
pop reg0
wmem >var_2f99a6008f75 reg0
set reg0 0
wmem >var_3d5a5231f73b reg0
:while_40242458a4e7_begin
rmem reg0 >var_3d5a5231f73b
rmem reg1 >var_2d33c27db224
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_40242458a4e7_end
jmp >var_0e1981f33ac8_end
:var_0e1981f33ac8
:var_0e1981f33ac8_end
rmem reg0 >var_7e890c1f2663
rmem reg1 >var_3d5a5231f73b
add reg0 reg0 reg1
wmem >var_0e1981f33ac8 reg0
rmem reg0 >var_0e1981f33ac8
rmem reg1 >var_2f99a6008f75
wmem reg0 reg1
rmem reg0 >var_3d5a5231f73b
add reg0 reg0 1
wmem >var_3d5a5231f73b reg0
pop reg0
wmem >var_2f99a6008f75 reg0
jmp >while_40242458a4e7_begin
:while_40242458a4e7_end
rmem reg0 >var_2f99a6008f75
rmem reg0 >var_2f99a6008f75
push reg0
rmem reg0 >var_7e890c1f2663
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_c012d0adfdc3_end
:var_c012d0adfdc3
:var_c012d0adfdc3_end
set reg0 16384
wmem >var_c012d0adfdc3 reg0
jmp >var_d3de88306fef_end
:var_d3de88306fef
:var_d3de88306fef_end
in reg0
wmem >var_d3de88306fef reg0
jmp >var_2cfdf21acb76_end
:var_2cfdf21acb76
:var_2cfdf21acb76_end
rmem reg0 >var_d3de88306fef
set reg1 10
eq reg0 reg0 reg1
wmem >var_2cfdf21acb76 reg0
:while_929345c8e349_begin
rmem reg0 >var_2cfdf21acb76
rmem reg1 >var_d3de88306fef
call >and
call >not
jf reg0 >while_929345c8e349_end
rmem reg0 >var_c012d0adfdc3
rmem reg1 >var_d3de88306fef
wmem reg0 reg1
rmem reg0 >var_c012d0adfdc3
add reg0 reg0 1
wmem >var_c012d0adfdc3 reg0
in reg0
wmem >var_d3de88306fef reg0
rmem reg0 >var_d3de88306fef
set reg1 10
eq reg0 reg0 reg1
wmem >var_2cfdf21acb76 reg0
jmp >while_929345c8e349_begin
:while_929345c8e349_end
rmem reg0 >var_c012d0adfdc3
set reg1 0
wmem reg0 reg1
jmp >var_86a6a27cce87_end
:var_86a6a27cce87
:var_86a6a27cce87_end
call >alloc
wmem >var_86a6a27cce87 reg0
jmp >var_92308465e18a_end
:var_92308465e18a
:var_92308465e18a_end
set reg0 16384
call >str_len
wmem >var_92308465e18a reg0
set reg0 16384
rmem reg1 >var_86a6a27cce87
rmem reg2 >var_92308465e18a
call >mem_cp
rmem reg0 >var_86a6a27cce87
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_9a31304616f5_end
:var_9a31304616f5
:var_9a31304616f5_end
wmem >var_9a31304616f5 reg0
:while_e82839e3c6e8_begin
rmem reg0 >var_9a31304616f5
rmem reg0 reg0
jf reg0 >while_e82839e3c6e8_end
rmem reg0 >var_9a31304616f5
rmem reg0 reg0
out reg0
rmem reg0 >var_9a31304616f5
add reg0 reg0 1
wmem >var_9a31304616f5 reg0
jmp >while_e82839e3c6e8_begin
:while_e82839e3c6e8_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_83b7492be063_end
:var_83b7492be063
:var_83b7492be063_end
wmem >var_83b7492be063 reg0
rmem reg0 >var_83b7492be063
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_5e64684fc6b0_end
:var_5e64684fc6b0
:var_5e64684fc6b0_end
wmem >var_5e64684fc6b0 reg0
rmem reg0 >var_5e64684fc6b0
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_97628fd46931
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_97628fd46931
jmp >var_c2ec12713699_end
:var_c2ec12713699
:var_c2ec12713699_end
jmp >var_7fcae499140d_end
:var_7fcae499140d
:var_7fcae499140d_end
set reg0 0
wmem >var_7fcae499140d reg0
:while_c783570a2900_begin
rmem reg0 >var_5e64684fc6b0
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_c783570a2900_end
rmem reg0 >var_5e64684fc6b0
set reg1 10
mod reg0 reg0 reg1
wmem >var_c2ec12713699 reg0
rmem reg0 >var_c2ec12713699
rmem reg0 >var_c2ec12713699
push reg0
rmem reg0 >var_7fcae499140d
add reg0 reg0 1
wmem >var_7fcae499140d reg0
rmem reg0 >var_5e64684fc6b0
set reg1 10
call >divide
wmem >var_5e64684fc6b0 reg0
jmp >while_c783570a2900_begin
:while_c783570a2900_end
rmem reg0 >var_5e64684fc6b0
set reg1 10
mod reg0 reg0 reg1
wmem >var_c2ec12713699 reg0
rmem reg0 >var_c2ec12713699
rmem reg0 >var_c2ec12713699
push reg0
rmem reg0 >var_7fcae499140d
add reg0 reg0 1
wmem >var_7fcae499140d reg0
jmp >var_024874cb0ae7_end
:var_024874cb0ae7
:var_024874cb0ae7_end
set reg0 0
wmem >var_024874cb0ae7 reg0
:while_1231fc190ff4_begin
rmem reg0 >var_024874cb0ae7
rmem reg1 >var_7fcae499140d
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_1231fc190ff4_end
rmem reg0 >var_024874cb0ae7
set reg1 1
add reg0 reg0 reg1
wmem >var_024874cb0ae7 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_1231fc190ff4_begin
:while_1231fc190ff4_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_9c0b01f9e436_end
:var_9c0b01f9e436
:var_9c0b01f9e436_end
set reg0 0
wmem >var_9c0b01f9e436 reg0
:while_5e38a7d9ac1c_begin
rmem reg0 >var_9c0b01f9e436
rmem reg0 reg0
jf reg0 >while_5e38a7d9ac1c_end
rmem reg0 >var_9c0b01f9e436
add reg0 reg0 1
wmem >var_9c0b01f9e436 reg0
rmem reg0 >var_9c0b01f9e436
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_5e38a7d9ac1c_begin
:while_5e38a7d9ac1c_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_57693271cc2b_end
:var_57693271cc2b
:var_57693271cc2b_end
wmem >var_57693271cc2b reg0
jmp >var_e0205cd0200e_end
:var_e0205cd0200e
:var_e0205cd0200e_end
rmem reg0 >var_57693271cc2b
call >flip_str
wmem >var_e0205cd0200e reg0
jmp >var_601f9074171c_end
:var_601f9074171c
:var_601f9074171c_end
rmem reg0 >var_e0205cd0200e
call >str_len
wmem >var_601f9074171c reg0
rmem reg0 >var_601f9074171c
set reg1 1
call >subtract
wmem >var_601f9074171c reg0
jmp >var_715e94b1658e_end
:var_715e94b1658e
:var_715e94b1658e_end
set reg0 0
wmem >var_715e94b1658e reg0
jmp >var_96642f05aafd_end
:var_96642f05aafd
:var_96642f05aafd_end
set reg0 0
wmem >var_96642f05aafd reg0
:while_fe5753d84052_begin
rmem reg0 >var_715e94b1658e
rmem reg1 >var_601f9074171c
gt reg0 reg0 reg1
call >not
jf reg0 >while_fe5753d84052_end
jmp >var_7608f8a19927_end
:var_7608f8a19927
:var_7608f8a19927_end
rmem reg0 >var_e0205cd0200e
rmem reg1 >var_715e94b1658e
add reg0 reg0 reg1
wmem >var_7608f8a19927 reg0
rmem reg0 >var_7608f8a19927
rmem reg0 reg0
wmem >var_7608f8a19927 reg0
jmp >var_b904216d01a4_end
:var_b904216d01a4
:var_b904216d01a4_end
rmem reg0 >var_7608f8a19927
set reg1 47
gt reg0 reg0 reg1
wmem >var_b904216d01a4 reg0
jmp >var_974a1e5b19ba_end
:var_974a1e5b19ba
:var_974a1e5b19ba_end
rmem reg0 >var_7608f8a19927
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_974a1e5b19ba reg0
rmem reg0 >var_b904216d01a4
rmem reg1 >var_974a1e5b19ba
call >and
jf reg0 >end_5afc323bf4e0
jmp >var_c921e8cf30e7_end
:var_c921e8cf30e7
:var_c921e8cf30e7_end
rmem reg0 >var_7608f8a19927
set reg1 48
call >subtract
wmem >var_c921e8cf30e7 reg0
rmem reg0 >var_c921e8cf30e7
call >print_number
set reg0 10
out reg0
jmp >var_c4df3ccdc1b9_end
:var_c4df3ccdc1b9
:var_c4df3ccdc1b9_end
set reg0 0
wmem >var_c4df3ccdc1b9 reg0
jmp >var_521fb9fe39fc_end
:var_521fb9fe39fc
:var_521fb9fe39fc_end
rmem reg0 >var_715e94b1658e
set reg1 1
call >subtract
wmem >var_521fb9fe39fc reg0
:while_33ad97db279a_begin
rmem reg0 >var_c4df3ccdc1b9
rmem reg1 >var_521fb9fe39fc
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_33ad97db279a_end
rmem reg0 >var_c921e8cf30e7
set reg1 10
mult reg0 reg0 reg1
wmem >var_c921e8cf30e7 reg0
rmem reg0 >var_c4df3ccdc1b9
add reg0 reg0 1
wmem >var_c4df3ccdc1b9 reg0
jmp >while_33ad97db279a_begin
:while_33ad97db279a_end
rmem reg0 >var_96642f05aafd
rmem reg1 >var_c921e8cf30e7
add reg0 reg0 reg1
wmem >var_96642f05aafd reg0
:end_5afc323bf4e0
rmem reg0 >var_715e94b1658e
add reg0 reg0 1
wmem >var_715e94b1658e reg0
jmp >while_fe5753d84052_begin
:while_fe5753d84052_end
rmem reg0 >var_96642f05aafd
call >print_number
rmem reg0 >var_96642f05aafd
ret
ret
:int_end
set reg0 >int
jmp >throw_end
:throw
jmp >var_02ff6a8b5c68_end
:var_02ff6a8b5c68
:var_02ff6a8b5c68_end
wmem >var_02ff6a8b5c68 reg0
rmem reg0 >var_02ff6a8b5c68
call >println
halt
ret
:throw_end
set reg0 >throw
jmp >str_is_eq_end
:str_is_eq
jmp >var_e8c6dacab0c7_end
:var_e8c6dacab0c7
:var_e8c6dacab0c7_end
wmem >var_e8c6dacab0c7 reg0
jmp >var_b63c5f7ffe69_end
:var_b63c5f7ffe69
:var_b63c5f7ffe69_end
jmp >function_4e13b42231ac_end
:function_4e13b42231ac
jmp >var_aefa81fa1182_end
:var_aefa81fa1182
:var_aefa81fa1182_end
wmem >var_aefa81fa1182 reg0
rmem reg0 >var_aefa81fa1182
rmem reg1 >var_e8c6dacab0c7
call >str_equal
call >not
jf reg0 >end_8a6a1e0dfd5f
jmp >var_3d24ad084730_end
:var_3d24ad084730
&o
&t
32
&E
&q
&u
&a
&l
0
:var_3d24ad084730_end
wmem >var_3d24ad084730 &N
set reg0 >var_3d24ad084730
call >println
:end_8a6a1e0dfd5f
jmp >var_1f2f0d0be3da_end
:var_1f2f0d0be3da
&e
&t
&t
&i
&n
&g
32
&h
&e
&r
&e
0
:var_1f2f0d0be3da_end
wmem >var_1f2f0d0be3da &G
set reg0 >var_1f2f0d0be3da
call >println
ret
:function_4e13b42231ac_end
set reg0 >function_4e13b42231ac
wmem >var_b63c5f7ffe69 reg0
ret
:str_is_eq_end
set reg0 >str_is_eq
jmp >assert_end
:assert
jmp >var_3bed35420c12_end
:var_3bed35420c12
:var_3bed35420c12_end
jmp >var_b5b9c494e923_end
:var_b5b9c494e923
:var_b5b9c494e923_end
wmem >var_3bed35420c12 reg0
wmem >var_b5b9c494e923 reg1
jmp >var_d3034d48ee5b_end
:var_d3034d48ee5b
&s
&s
&e
&r
&t
0
:var_d3034d48ee5b_end
wmem >var_d3034d48ee5b &a
set reg0 >var_d3034d48ee5b
call >println
rmem reg0 >var_b5b9c494e923
call >print_number
rmem reg0 >var_3bed35420c12
rmem reg7 >var_b5b9c494e923
call reg7
ret
:assert_end
set reg0 >assert
jmp >var_7bdcb760aee2_end
:var_7bdcb760aee2
:var_7bdcb760aee2_end
jmp >var_66ca3a6f4885_end
:var_66ca3a6f4885
&e
&s
&t
0
:var_66ca3a6f4885_end
wmem >var_66ca3a6f4885 &t
set reg0 >var_66ca3a6f4885
wmem >var_7bdcb760aee2 reg0
jmp >var_48d089fa1be4_end
:var_48d089fa1be4
:var_48d089fa1be4_end
jmp >var_c78c84c154ca_end
:var_c78c84c154ca
&e
&s
&t
&2
0
:var_c78c84c154ca_end
wmem >var_c78c84c154ca &t
set reg0 >var_c78c84c154ca
wmem >var_48d089fa1be4 reg0
jmp >var_86a4b7a43a1c_end
:var_86a4b7a43a1c
&e
&t
&t
&i
&n
&g
32
&h
&e
&r
&e
0
:var_86a4b7a43a1c_end
wmem >var_86a4b7a43a1c &G
set reg0 >var_86a4b7a43a1c
call >println
rmem reg0 >var_7bdcb760aee2
rmem reg1 >var_48d089fa1be4
call >str_is_eq
call >assert
jmp >var_d588be4301ea_end
:var_d588be4301ea
&e
&t
&t
&i
&n
&g
32
&h
&e
&r
&e
0
:var_d588be4301ea_end
wmem >var_d588be4301ea &G
set reg0 >var_d588be4301ea
call >println
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

