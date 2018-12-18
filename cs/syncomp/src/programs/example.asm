jmp >str_equal_end
:str_equal
jmp >var_a7e0e8d21832_end
:var_a7e0e8d21832
:var_a7e0e8d21832_end
jmp >var_c816e1b74a46_end
:var_c816e1b74a46
:var_c816e1b74a46_end
wmem >var_a7e0e8d21832 reg0
wmem >var_c816e1b74a46 reg1
jmp >var_ad989b9a2141_end
:var_ad989b9a2141
:var_ad989b9a2141_end
rmem reg0 >var_a7e0e8d21832
call >str_len
wmem >var_ad989b9a2141 reg0
jmp >var_b86ab68a93c8_end
:var_b86ab68a93c8
:var_b86ab68a93c8_end
rmem reg0 >var_c816e1b74a46
call >str_len
wmem >var_b86ab68a93c8 reg0
rmem reg0 >var_ad989b9a2141
rmem reg1 >var_b86ab68a93c8
eq reg0 reg0 reg1
call >not
jf reg0 >end_b8b90b40d1cf
set reg0 0
ret
:end_b8b90b40d1cf
jmp >var_c099188f26d7_end
:var_c099188f26d7
:var_c099188f26d7_end
set reg0 0
wmem >var_c099188f26d7 reg0
:for_b10c2ad23dcb_begin
rmem reg0 >var_c099188f26d7
rmem reg1 >var_ad989b9a2141
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_b10c2ad23dcb_end
jmp >var_46ed55724db3_end
:var_46ed55724db3
:var_46ed55724db3_end
rmem reg0 >var_a7e0e8d21832
rmem reg1 >var_c099188f26d7
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_46ed55724db3 reg0
jmp >var_52fe39e8b397_end
:var_52fe39e8b397
:var_52fe39e8b397_end
rmem reg0 >var_c816e1b74a46
rmem reg1 >var_c099188f26d7
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_52fe39e8b397 reg0
rmem reg0 >var_46ed55724db3
rmem reg1 >var_52fe39e8b397
eq reg0 reg0 reg1
call >not
jf reg0 >end_31d32ab6f868
set reg0 0
ret
:end_31d32ab6f868
rmem reg0 >var_c099188f26d7
add reg0 reg0 1
wmem >var_c099188f26d7 reg0
jmp >for_b10c2ad23dcb_begin
:for_b10c2ad23dcb_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_fea52173e00d_end
:var_fea52173e00d
:var_fea52173e00d_end
set reg0 16382
wmem >var_fea52173e00d reg0
:while_f445d4929d10_begin
rmem reg0 >var_fea52173e00d
rmem reg0 reg0
call >not
jf reg0 >while_f445d4929d10_end
rmem reg0 >var_fea52173e00d
set reg1 1
call >subtract
wmem >var_fea52173e00d reg0
jmp >while_f445d4929d10_begin
:while_f445d4929d10_end
rmem reg0 >var_fea52173e00d
set reg1 2
add reg0 reg0 reg1
wmem >var_fea52173e00d reg0
rmem reg0 >var_fea52173e00d
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_f478ca64958a_end
:var_f478ca64958a
:var_f478ca64958a_end
wmem >var_f478ca64958a reg0
jmp >var_0c513ffd5321_end
:var_0c513ffd5321
:var_0c513ffd5321_end
call >alloc
wmem >var_0c513ffd5321 reg0
jmp >var_b6d4ca28d4b4_end
:var_b6d4ca28d4b4
:var_b6d4ca28d4b4_end
rmem reg0 >var_0c513ffd5321
rmem reg1 >var_f478ca64958a
add reg0 reg0 reg1
wmem >var_b6d4ca28d4b4 reg0
rmem reg0 >var_b6d4ca28d4b4
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_0c513ffd5321
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_a17ab6a88810_end
:var_a17ab6a88810
:var_a17ab6a88810_end
jmp >var_e621bac95a13_end
:var_e621bac95a13
:var_e621bac95a13_end
jmp >var_1adccf7b00bc_end
:var_1adccf7b00bc
:var_1adccf7b00bc_end
wmem >var_a17ab6a88810 reg0
wmem >var_e621bac95a13 reg1
wmem >var_1adccf7b00bc reg2
jmp >var_31efb17bce90_end
:var_31efb17bce90
:var_31efb17bce90_end
set reg0 0
wmem >var_31efb17bce90 reg0
:while_37de220bbe02_begin
rmem reg0 >var_31efb17bce90
rmem reg1 >var_1adccf7b00bc
gt reg0 reg0 reg1
call >not
jf reg0 >while_37de220bbe02_end
jmp >var_c2f3f4e74f6c_end
:var_c2f3f4e74f6c
:var_c2f3f4e74f6c_end
rmem reg0 >var_a17ab6a88810
rmem reg1 >var_31efb17bce90
add reg0 reg0 reg1
wmem >var_c2f3f4e74f6c reg0
jmp >var_38c629192754_end
:var_38c629192754
:var_38c629192754_end
rmem reg0 >var_e621bac95a13
rmem reg1 >var_31efb17bce90
add reg0 reg0 reg1
wmem >var_38c629192754 reg0
rmem reg0 >var_38c629192754
rmem reg1 >var_c2f3f4e74f6c
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_31efb17bce90
add reg0 reg0 1
wmem >var_31efb17bce90 reg0
jmp >while_37de220bbe02_begin
:while_37de220bbe02_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_714002895d14_end
:var_714002895d14
:var_714002895d14_end
wmem >var_714002895d14 reg0
jmp >var_7846daf5a5bd_end
:var_7846daf5a5bd
:var_7846daf5a5bd_end
set reg0 0
wmem >var_7846daf5a5bd reg0
:while_45aebd51c01b_begin
rmem reg0 >var_714002895d14
rmem reg0 reg0
jf reg0 >while_45aebd51c01b_end
rmem reg0 >var_714002895d14
add reg0 reg0 1
wmem >var_714002895d14 reg0
rmem reg0 >var_7846daf5a5bd
add reg0 reg0 1
wmem >var_7846daf5a5bd reg0
jmp >while_45aebd51c01b_begin
:while_45aebd51c01b_end
rmem reg0 >var_7846daf5a5bd
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_ac143a190d63_end
:var_ac143a190d63
:var_ac143a190d63_end
jmp >var_894a72165b79_end
:var_894a72165b79
:var_894a72165b79_end
wmem >var_ac143a190d63 reg0
wmem >var_894a72165b79 reg1
jmp >var_3cf96308c053_end
:var_3cf96308c053
:var_3cf96308c053_end
rmem reg0 >var_ac143a190d63
call >str_len
wmem >var_3cf96308c053 reg0
jmp >var_6e26b45ee267_end
:var_6e26b45ee267
:var_6e26b45ee267_end
rmem reg0 >var_894a72165b79
call >str_len
wmem >var_6e26b45ee267 reg0
jmp >var_2f0d5112e409_end
:var_2f0d5112e409
:var_2f0d5112e409_end
call >alloc
wmem >var_2f0d5112e409 reg0
rmem reg0 >var_ac143a190d63
rmem reg1 >var_2f0d5112e409
rmem reg2 >var_3cf96308c053
call >mem_cp
jmp >var_6740f50579d7_end
:var_6740f50579d7
:var_6740f50579d7_end
rmem reg0 >var_2f0d5112e409
rmem reg1 >var_3cf96308c053
add reg0 reg0 reg1
wmem >var_6740f50579d7 reg0
rmem reg0 >var_6e26b45ee267
add reg0 reg0 1
wmem >var_6e26b45ee267 reg0
rmem reg0 >var_894a72165b79
rmem reg1 >var_6740f50579d7
rmem reg2 >var_6e26b45ee267
call >mem_cp
rmem reg0 >var_2f0d5112e409
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_ad6abd6db780_end
:var_ad6abd6db780
:var_ad6abd6db780_end
wmem >var_ad6abd6db780 reg0
jmp >var_008c9aa7650e_end
:var_008c9aa7650e
:var_008c9aa7650e_end
call >alloc
wmem >var_008c9aa7650e reg0
jmp >var_5009bb0e9028_end
:var_5009bb0e9028
:var_5009bb0e9028_end
rmem reg0 >var_ad6abd6db780
call >str_len
wmem >var_5009bb0e9028 reg0
jmp >var_c53ff98cc306_end
:var_c53ff98cc306
:var_c53ff98cc306_end
set reg0 0
wmem >var_c53ff98cc306 reg0
:while_2e7788c0350e_begin
rmem reg0 >var_c53ff98cc306
rmem reg1 >var_5009bb0e9028
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_2e7788c0350e_end
jmp >var_4b74075efe0a_end
:var_4b74075efe0a
:var_4b74075efe0a_end
rmem reg0 >var_ad6abd6db780
rmem reg1 >var_c53ff98cc306
add reg0 reg0 reg1
wmem >var_4b74075efe0a reg0
rmem reg0 >var_4b74075efe0a
rmem reg0 reg0
rmem reg0 >var_4b74075efe0a
rmem reg0 reg0
push reg0
rmem reg0 >var_c53ff98cc306
add reg0 reg0 1
wmem >var_c53ff98cc306 reg0
jmp >while_2e7788c0350e_begin
:while_2e7788c0350e_end
jmp >var_6186709b0e6f_end
:var_6186709b0e6f
:var_6186709b0e6f_end
pop reg0
wmem >var_6186709b0e6f reg0
set reg0 0
wmem >var_c53ff98cc306 reg0
:while_f9cdf4eee10f_begin
rmem reg0 >var_c53ff98cc306
rmem reg1 >var_5009bb0e9028
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_f9cdf4eee10f_end
jmp >var_c69daa5c97ab_end
:var_c69daa5c97ab
:var_c69daa5c97ab_end
rmem reg0 >var_008c9aa7650e
rmem reg1 >var_c53ff98cc306
add reg0 reg0 reg1
wmem >var_c69daa5c97ab reg0
rmem reg0 >var_c69daa5c97ab
rmem reg1 >var_6186709b0e6f
wmem reg0 reg1
rmem reg0 >var_c53ff98cc306
add reg0 reg0 1
wmem >var_c53ff98cc306 reg0
pop reg0
wmem >var_6186709b0e6f reg0
jmp >while_f9cdf4eee10f_begin
:while_f9cdf4eee10f_end
rmem reg0 >var_6186709b0e6f
rmem reg0 >var_6186709b0e6f
push reg0
rmem reg0 >var_008c9aa7650e
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_8e18b497755a_end
:var_8e18b497755a
:var_8e18b497755a_end
set reg0 16384
wmem >var_8e18b497755a reg0
jmp >var_618e22208e3f_end
:var_618e22208e3f
:var_618e22208e3f_end
in reg0
wmem >var_618e22208e3f reg0
jmp >var_dc98f0fb094a_end
:var_dc98f0fb094a
:var_dc98f0fb094a_end
rmem reg0 >var_618e22208e3f
set reg1 10
eq reg0 reg0 reg1
wmem >var_dc98f0fb094a reg0
:while_61c1e8ccbf3c_begin
rmem reg0 >var_dc98f0fb094a
rmem reg1 >var_618e22208e3f
call >and
call >not
jf reg0 >while_61c1e8ccbf3c_end
rmem reg0 >var_8e18b497755a
rmem reg1 >var_618e22208e3f
wmem reg0 reg1
rmem reg0 >var_8e18b497755a
add reg0 reg0 1
wmem >var_8e18b497755a reg0
in reg0
wmem >var_618e22208e3f reg0
rmem reg0 >var_618e22208e3f
set reg1 10
eq reg0 reg0 reg1
wmem >var_dc98f0fb094a reg0
jmp >while_61c1e8ccbf3c_begin
:while_61c1e8ccbf3c_end
rmem reg0 >var_8e18b497755a
set reg1 0
wmem reg0 reg1
jmp >var_6c1249c7ffb6_end
:var_6c1249c7ffb6
:var_6c1249c7ffb6_end
call >alloc
wmem >var_6c1249c7ffb6 reg0
jmp >var_b45424265349_end
:var_b45424265349
:var_b45424265349_end
set reg0 16384
call >str_len
wmem >var_b45424265349 reg0
set reg0 16384
rmem reg1 >var_6c1249c7ffb6
rmem reg2 >var_b45424265349
call >mem_cp
rmem reg0 >var_6c1249c7ffb6
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_c4b94c1d66b5_end
:var_c4b94c1d66b5
:var_c4b94c1d66b5_end
wmem >var_c4b94c1d66b5 reg0
:while_4d1327a4a6cf_begin
rmem reg0 >var_c4b94c1d66b5
rmem reg0 reg0
jf reg0 >while_4d1327a4a6cf_end
rmem reg0 >var_c4b94c1d66b5
rmem reg0 reg0
out reg0
rmem reg0 >var_c4b94c1d66b5
add reg0 reg0 1
wmem >var_c4b94c1d66b5 reg0
jmp >while_4d1327a4a6cf_begin
:while_4d1327a4a6cf_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_093542d7f591_end
:var_093542d7f591
:var_093542d7f591_end
wmem >var_093542d7f591 reg0
rmem reg0 >var_093542d7f591
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_7e45018a29fe_end
:var_7e45018a29fe
:var_7e45018a29fe_end
wmem >var_7e45018a29fe reg0
rmem reg0 >var_7e45018a29fe
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_3d23c793bb23
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_3d23c793bb23
jmp >var_be06d547a3b1_end
:var_be06d547a3b1
:var_be06d547a3b1_end
jmp >var_b48e5bd8e772_end
:var_b48e5bd8e772
:var_b48e5bd8e772_end
set reg0 0
wmem >var_b48e5bd8e772 reg0
:while_472f2bd74193_begin
rmem reg0 >var_7e45018a29fe
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_472f2bd74193_end
rmem reg0 >var_7e45018a29fe
set reg1 10
mod reg0 reg0 reg1
wmem >var_be06d547a3b1 reg0
rmem reg0 >var_be06d547a3b1
rmem reg0 >var_be06d547a3b1
push reg0
rmem reg0 >var_b48e5bd8e772
add reg0 reg0 1
wmem >var_b48e5bd8e772 reg0
rmem reg0 >var_7e45018a29fe
set reg1 10
call >divide
wmem >var_7e45018a29fe reg0
jmp >while_472f2bd74193_begin
:while_472f2bd74193_end
rmem reg0 >var_7e45018a29fe
set reg1 10
mod reg0 reg0 reg1
wmem >var_be06d547a3b1 reg0
rmem reg0 >var_be06d547a3b1
rmem reg0 >var_be06d547a3b1
push reg0
rmem reg0 >var_b48e5bd8e772
add reg0 reg0 1
wmem >var_b48e5bd8e772 reg0
jmp >var_17bc941fa927_end
:var_17bc941fa927
:var_17bc941fa927_end
set reg0 0
wmem >var_17bc941fa927 reg0
:while_17c2db811b55_begin
rmem reg0 >var_17bc941fa927
rmem reg1 >var_b48e5bd8e772
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_17c2db811b55_end
rmem reg0 >var_17bc941fa927
set reg1 1
add reg0 reg0 reg1
wmem >var_17bc941fa927 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_17c2db811b55_begin
:while_17c2db811b55_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_aeb8211deaba_end
:var_aeb8211deaba
:var_aeb8211deaba_end
set reg0 0
wmem >var_aeb8211deaba reg0
:while_c62acda673f6_begin
rmem reg0 >var_aeb8211deaba
rmem reg0 reg0
jf reg0 >while_c62acda673f6_end
rmem reg0 >var_aeb8211deaba
add reg0 reg0 1
wmem >var_aeb8211deaba reg0
rmem reg0 >var_aeb8211deaba
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_c62acda673f6_begin
:while_c62acda673f6_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_ccc4a47792a3_end
:var_ccc4a47792a3
:var_ccc4a47792a3_end
wmem >var_ccc4a47792a3 reg0
jmp >var_cd2c53a9107f_end
:var_cd2c53a9107f
:var_cd2c53a9107f_end
rmem reg0 >var_ccc4a47792a3
call >flip_str
wmem >var_cd2c53a9107f reg0
jmp >var_3a67b0dc046d_end
:var_3a67b0dc046d
:var_3a67b0dc046d_end
rmem reg0 >var_cd2c53a9107f
call >str_len
wmem >var_3a67b0dc046d reg0
rmem reg0 >var_3a67b0dc046d
set reg1 1
call >subtract
wmem >var_3a67b0dc046d reg0
jmp >var_c7ca2f852405_end
:var_c7ca2f852405
:var_c7ca2f852405_end
set reg0 0
wmem >var_c7ca2f852405 reg0
jmp >var_6d0c7c3143f9_end
:var_6d0c7c3143f9
:var_6d0c7c3143f9_end
set reg0 0
wmem >var_6d0c7c3143f9 reg0
:while_21b5ea73c71d_begin
rmem reg0 >var_c7ca2f852405
rmem reg1 >var_3a67b0dc046d
gt reg0 reg0 reg1
call >not
jf reg0 >while_21b5ea73c71d_end
jmp >var_4aa25ee6f621_end
:var_4aa25ee6f621
:var_4aa25ee6f621_end
rmem reg0 >var_cd2c53a9107f
rmem reg1 >var_c7ca2f852405
add reg0 reg0 reg1
wmem >var_4aa25ee6f621 reg0
rmem reg0 >var_4aa25ee6f621
rmem reg0 reg0
wmem >var_4aa25ee6f621 reg0
jmp >var_3a69dc7ecbaa_end
:var_3a69dc7ecbaa
:var_3a69dc7ecbaa_end
rmem reg0 >var_4aa25ee6f621
set reg1 47
gt reg0 reg0 reg1
wmem >var_3a69dc7ecbaa reg0
jmp >var_25c9b874fa66_end
:var_25c9b874fa66
:var_25c9b874fa66_end
rmem reg0 >var_4aa25ee6f621
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_25c9b874fa66 reg0
rmem reg0 >var_3a69dc7ecbaa
rmem reg1 >var_25c9b874fa66
call >and
jf reg0 >end_b5ba05122899
jmp >var_33c2471ad09e_end
:var_33c2471ad09e
:var_33c2471ad09e_end
rmem reg0 >var_4aa25ee6f621
set reg1 48
call >subtract
wmem >var_33c2471ad09e reg0
rmem reg0 >var_33c2471ad09e
call >print_number
set reg0 10
out reg0
jmp >var_9de04d457ab1_end
:var_9de04d457ab1
:var_9de04d457ab1_end
set reg0 0
wmem >var_9de04d457ab1 reg0
jmp >var_fa299eb0a6d4_end
:var_fa299eb0a6d4
:var_fa299eb0a6d4_end
rmem reg0 >var_c7ca2f852405
set reg1 1
call >subtract
wmem >var_fa299eb0a6d4 reg0
:while_c2708018ef1f_begin
rmem reg0 >var_9de04d457ab1
rmem reg1 >var_fa299eb0a6d4
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_c2708018ef1f_end
rmem reg0 >var_33c2471ad09e
set reg1 10
mult reg0 reg0 reg1
wmem >var_33c2471ad09e reg0
rmem reg0 >var_9de04d457ab1
add reg0 reg0 1
wmem >var_9de04d457ab1 reg0
jmp >while_c2708018ef1f_begin
:while_c2708018ef1f_end
rmem reg0 >var_6d0c7c3143f9
rmem reg1 >var_33c2471ad09e
add reg0 reg0 reg1
wmem >var_6d0c7c3143f9 reg0
:end_b5ba05122899
rmem reg0 >var_c7ca2f852405
add reg0 reg0 1
wmem >var_c7ca2f852405 reg0
jmp >while_21b5ea73c71d_begin
:while_21b5ea73c71d_end
rmem reg0 >var_6d0c7c3143f9
call >print_number
rmem reg0 >var_6d0c7c3143f9
ret
ret
:int_end
set reg0 >int
jmp >main_end
:main
jmp >var_443f8bc747e8_end
:var_443f8bc747e8
&e
&l
&l
&o
&,
32
&w
&o
&r
&l
&d
&!
0
:var_443f8bc747e8_end
wmem >var_443f8bc747e8 &H
set reg0 >var_443f8bc747e8
call >println
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

