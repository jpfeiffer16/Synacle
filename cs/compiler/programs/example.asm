jmp >alloc_end
:alloc
jmp >var_a93a24b3b79c_end
:var_a93a24b3b79c
:var_a93a24b3b79c_end
set reg0 0
wmem >var_a93a24b3b79c reg0
jmp >var_35644692b02c_end
:var_35644692b02c
:var_35644692b02c_end
set reg0 0
wmem >var_35644692b02c reg0
:while_5fc092ad1ca3_begin
rmem reg0 >var_35644692b02c
set reg1 6
gt reg0 reg0 reg1
call >not
jf reg0 >while_5fc092ad1ca3_end
jmp >var_2fa3307b6b31_end
:var_2fa3307b6b31
:var_2fa3307b6b31_end
rmem reg0 >var_a93a24b3b79c
rmem reg0 reg0
wmem >var_2fa3307b6b31 reg0
rmem reg0 >var_2fa3307b6b31
call >not
jf reg0 >end_c784c50a4ecc
rmem reg0 >var_35644692b02c
add reg0 reg0 1
wmem >var_35644692b02c reg0
:end_c784c50a4ecc
rmem reg0 >var_2fa3307b6b31
jf reg0 >end_d288a97398c1
set reg0 0
wmem >var_35644692b02c reg0
:end_d288a97398c1
rmem reg0 >var_a93a24b3b79c
add reg0 reg0 1
wmem >var_a93a24b3b79c reg0
jmp >while_5fc092ad1ca3_begin
:while_5fc092ad1ca3_end
rmem reg0 >var_a93a24b3b79c
set reg1 1
call >subtract
wmem >var_a93a24b3b79c reg0
rmem reg0 >var_a93a24b3b79c
ret
ret
:alloc_end
set reg0 >alloc
jmp >mem_cp_end
:mem_cp
jmp >var_9eb0e47b50e6_end
:var_9eb0e47b50e6
:var_9eb0e47b50e6_end
jmp >var_99e10532cbc5_end
:var_99e10532cbc5
:var_99e10532cbc5_end
jmp >var_9c2ea1c84d7d_end
:var_9c2ea1c84d7d
:var_9c2ea1c84d7d_end
wmem >var_9eb0e47b50e6 reg0
wmem >var_99e10532cbc5 reg1
wmem >var_9c2ea1c84d7d reg2
jmp >var_99d87899edf8_end
:var_99d87899edf8
:var_99d87899edf8_end
set reg0 0
wmem >var_99d87899edf8 reg0
:while_d45709e0b9fb_begin
rmem reg0 >var_99d87899edf8
rmem reg1 >var_9c2ea1c84d7d
gt reg0 reg0 reg1
call >not
jf reg0 >while_d45709e0b9fb_end
jmp >var_6c9b57fcf90e_end
:var_6c9b57fcf90e
:var_6c9b57fcf90e_end
rmem reg0 >var_9eb0e47b50e6
rmem reg1 >var_99d87899edf8
add reg0 reg0 reg1
wmem >var_6c9b57fcf90e reg0
jmp >var_b71ba70c6be4_end
:var_b71ba70c6be4
:var_b71ba70c6be4_end
rmem reg0 >var_99e10532cbc5
rmem reg1 >var_99d87899edf8
add reg0 reg0 reg1
wmem >var_b71ba70c6be4 reg0
rmem reg0 >var_b71ba70c6be4
rmem reg1 >var_6c9b57fcf90e
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_99d87899edf8
add reg0 reg0 1
wmem >var_99d87899edf8 reg0
jmp >while_d45709e0b9fb_begin
:while_d45709e0b9fb_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_cb9570fa6ff8_end
:var_cb9570fa6ff8
:var_cb9570fa6ff8_end
wmem >var_cb9570fa6ff8 reg0
jmp >var_1488bfb22357_end
:var_1488bfb22357
:var_1488bfb22357_end
set reg0 0
wmem >var_1488bfb22357 reg0
:while_cd09c8921809_begin
rmem reg0 >var_cb9570fa6ff8
rmem reg0 reg0
jf reg0 >while_cd09c8921809_end
rmem reg0 >var_cb9570fa6ff8
add reg0 reg0 1
wmem >var_cb9570fa6ff8 reg0
rmem reg0 >var_1488bfb22357
add reg0 reg0 1
wmem >var_1488bfb22357 reg0
jmp >while_cd09c8921809_begin
:while_cd09c8921809_end
rmem reg0 >var_1488bfb22357
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_96ab24d2b8b4_end
:var_96ab24d2b8b4
:var_96ab24d2b8b4_end
jmp >var_be959b271878_end
:var_be959b271878
:var_be959b271878_end
wmem >var_96ab24d2b8b4 reg0
wmem >var_be959b271878 reg1
jmp >var_19ae2527dbd4_end
:var_19ae2527dbd4
:var_19ae2527dbd4_end
rmem reg0 >var_96ab24d2b8b4
rmem reg7 >str_len
call reg7
wmem >var_19ae2527dbd4 reg0
jmp >var_f877706d12b0_end
:var_f877706d12b0
:var_f877706d12b0_end
rmem reg0 >var_be959b271878
rmem reg7 >str_len
call reg7
wmem >var_f877706d12b0 reg0
set reg0 10
out reg0
set reg0 10
out reg0
jmp >var_aff499b5ffb0_end
:var_aff499b5ffb0
:var_aff499b5ffb0_end
rmem reg7 >alloc
call reg7
wmem >var_aff499b5ffb0 reg0
rmem reg0 >var_96ab24d2b8b4
rmem reg1 >var_aff499b5ffb0
rmem reg2 >var_19ae2527dbd4
rmem reg7 >mem_cp
call reg7
jmp >var_0fc1a3462f5f_end
:var_0fc1a3462f5f
:var_0fc1a3462f5f_end
rmem reg0 >var_aff499b5ffb0
rmem reg1 >var_19ae2527dbd4
add reg0 reg0 reg1
wmem >var_0fc1a3462f5f reg0
rmem reg0 >var_f877706d12b0
add reg0 reg0 1
wmem >var_f877706d12b0 reg0
rmem reg0 >var_be959b271878
rmem reg1 >var_0fc1a3462f5f
rmem reg2 >var_f877706d12b0
rmem reg7 >mem_cp
call reg7
rmem reg0 >var_aff499b5ffb0
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_59bf39ca7ef9_end
:var_59bf39ca7ef9
:var_59bf39ca7ef9_end
wmem >var_59bf39ca7ef9 reg0
jmp >var_8836503afbcc_end
:var_8836503afbcc
:var_8836503afbcc_end
rmem reg7 >alloc
call reg7
wmem >var_8836503afbcc reg0
jmp >var_d6be21deb44f_end
:var_d6be21deb44f
:var_d6be21deb44f_end
rmem reg0 >var_59bf39ca7ef9
rmem reg7 >str_len
call reg7
wmem >var_d6be21deb44f reg0
jmp >var_5ba963b60bdc_end
:var_5ba963b60bdc
:var_5ba963b60bdc_end
set reg0 0
wmem >var_5ba963b60bdc reg0
:while_1be34a8108e3_begin
rmem reg0 >var_5ba963b60bdc
rmem reg1 >var_d6be21deb44f
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_1be34a8108e3_end
jmp >var_75234b8c2b7a_end
:var_75234b8c2b7a
:var_75234b8c2b7a_end
rmem reg0 >var_59bf39ca7ef9
rmem reg1 >var_5ba963b60bdc
add reg0 reg0 reg1
wmem >var_75234b8c2b7a reg0
rmem reg0 >var_75234b8c2b7a
rmem reg0 reg0
rmem reg0 >var_75234b8c2b7a
rmem reg0 reg0
push reg0
rmem reg0 >var_5ba963b60bdc
add reg0 reg0 1
wmem >var_5ba963b60bdc reg0
jmp >while_1be34a8108e3_begin
:while_1be34a8108e3_end
jmp >var_d4e65c3c619e_end
:var_d4e65c3c619e
:var_d4e65c3c619e_end
pop reg0
wmem >var_d4e65c3c619e reg0
set reg0 0
wmem >var_5ba963b60bdc reg0
:while_cbd38a7bc98a_begin
rmem reg0 >var_5ba963b60bdc
rmem reg1 >var_d6be21deb44f
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_cbd38a7bc98a_end
jmp >var_0242aac004ae_end
:var_0242aac004ae
:var_0242aac004ae_end
rmem reg0 >var_8836503afbcc
rmem reg1 >var_5ba963b60bdc
add reg0 reg0 reg1
wmem >var_0242aac004ae reg0
rmem reg0 >var_0242aac004ae
rmem reg1 >var_d4e65c3c619e
wmem reg0 reg1
rmem reg0 >var_5ba963b60bdc
add reg0 reg0 1
wmem >var_5ba963b60bdc reg0
pop reg0
wmem >var_d4e65c3c619e reg0
jmp >while_cbd38a7bc98a_begin
:while_cbd38a7bc98a_end
rmem reg0 >var_d4e65c3c619e
rmem reg0 >var_d4e65c3c619e
push reg0
rmem reg0 >var_8836503afbcc
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_0a5c007b65d7_end
:var_0a5c007b65d7
:var_0a5c007b65d7_end
set reg0 16384
wmem >var_0a5c007b65d7 reg0
jmp >var_97ef4a7d9aba_end
:var_97ef4a7d9aba
:var_97ef4a7d9aba_end
in reg0
wmem >var_97ef4a7d9aba reg0
jmp >var_ebf97ac5692d_end
:var_ebf97ac5692d
:var_ebf97ac5692d_end
rmem reg0 >var_97ef4a7d9aba
set reg1 10
eq reg0 reg0 reg1
wmem >var_ebf97ac5692d reg0
:while_49b0832b1090_begin
rmem reg0 >var_ebf97ac5692d
call >not
rmem reg1 >var_97ef4a7d9aba
call >and
jf reg0 >while_49b0832b1090_end
rmem reg0 >var_0a5c007b65d7
rmem reg1 >var_97ef4a7d9aba
wmem reg0 reg1
rmem reg0 >var_0a5c007b65d7
add reg0 reg0 1
wmem >var_0a5c007b65d7 reg0
in reg0
wmem >var_97ef4a7d9aba reg0
rmem reg0 >var_97ef4a7d9aba
set reg1 10
eq reg0 reg0 reg1
wmem >var_ebf97ac5692d reg0
jmp >while_49b0832b1090_begin
:while_49b0832b1090_end
rmem reg0 >var_0a5c007b65d7
set reg1 0
wmem reg0 reg1
jmp >var_678c2d83bc7b_end
:var_678c2d83bc7b
:var_678c2d83bc7b_end
rmem reg7 >alloc
call reg7
wmem >var_678c2d83bc7b reg0
jmp >var_71179724adda_end
:var_71179724adda
:var_71179724adda_end
set reg0 16384
rmem reg7 >str_len
call reg7
wmem >var_71179724adda reg0
set reg0 16384
rmem reg1 >var_678c2d83bc7b
rmem reg2 >var_71179724adda
rmem reg7 >mem_cp
call reg7
rmem reg0 >var_678c2d83bc7b
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_7fc1f0b5320c_end
:var_7fc1f0b5320c
:var_7fc1f0b5320c_end
wmem >var_7fc1f0b5320c reg0
:while_08a29658e55a_begin
rmem reg0 >var_7fc1f0b5320c
rmem reg0 reg0
jf reg0 >while_08a29658e55a_end
rmem reg0 >var_7fc1f0b5320c
rmem reg0 reg0
out reg0
rmem reg0 >var_7fc1f0b5320c
add reg0 reg0 1
wmem >var_7fc1f0b5320c reg0
jmp >while_08a29658e55a_begin
:while_08a29658e55a_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_3bb8a4a944b7_end
:var_3bb8a4a944b7
:var_3bb8a4a944b7_end
wmem >var_3bb8a4a944b7 reg0
rmem reg0 >var_3bb8a4a944b7
rmem reg7 >print
call reg7
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_96eb66020e15_end
:var_96eb66020e15
:var_96eb66020e15_end
wmem >var_96eb66020e15 reg0
rmem reg0 >var_96eb66020e15
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_54b5bd1ba06f
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_54b5bd1ba06f
jmp >var_7c3ef6646d8d_end
:var_7c3ef6646d8d
:var_7c3ef6646d8d_end
jmp >var_235607b25b8b_end
:var_235607b25b8b
:var_235607b25b8b_end
set reg0 0
wmem >var_235607b25b8b reg0
:while_398e1dff1818_begin
rmem reg0 >var_96eb66020e15
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_398e1dff1818_end
rmem reg0 >var_96eb66020e15
set reg1 10
mod reg0 reg0 reg1
wmem >var_7c3ef6646d8d reg0
rmem reg0 >var_7c3ef6646d8d
rmem reg0 >var_7c3ef6646d8d
push reg0
rmem reg0 >var_235607b25b8b
add reg0 reg0 1
wmem >var_235607b25b8b reg0
rmem reg0 >var_96eb66020e15
set reg1 10
call >divide
wmem >var_96eb66020e15 reg0
jmp >while_398e1dff1818_begin
:while_398e1dff1818_end
rmem reg0 >var_96eb66020e15
set reg1 10
mod reg0 reg0 reg1
wmem >var_7c3ef6646d8d reg0
rmem reg0 >var_7c3ef6646d8d
rmem reg0 >var_7c3ef6646d8d
push reg0
rmem reg0 >var_235607b25b8b
add reg0 reg0 1
wmem >var_235607b25b8b reg0
jmp >var_b7b80561a3e3_end
:var_b7b80561a3e3
:var_b7b80561a3e3_end
set reg0 0
wmem >var_b7b80561a3e3 reg0
:while_1b6d40afea4e_begin
rmem reg0 >var_b7b80561a3e3
rmem reg1 >var_235607b25b8b
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_1b6d40afea4e_end
rmem reg0 >var_b7b80561a3e3
set reg1 1
add reg0 reg0 reg1
wmem >var_b7b80561a3e3 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_1b6d40afea4e_begin
:while_1b6d40afea4e_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_44eb6d5e620e_end
:var_44eb6d5e620e
:var_44eb6d5e620e_end
set reg0 0
wmem >var_44eb6d5e620e reg0
:while_14fc8731cc9e_begin
rmem reg0 >var_44eb6d5e620e
rmem reg0 reg0
jf reg0 >while_14fc8731cc9e_end
rmem reg0 >var_44eb6d5e620e
add reg0 reg0 1
wmem >var_44eb6d5e620e reg0
rmem reg0 >var_44eb6d5e620e
rmem reg0 reg0
rmem reg7 >print_number
call reg7
set reg0 10
out reg0
jmp >while_14fc8731cc9e_begin
:while_14fc8731cc9e_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_076787ea5f05_end
:var_076787ea5f05
:var_076787ea5f05_end
wmem >var_076787ea5f05 reg0
jmp >var_fecaf40abc95_end
:var_fecaf40abc95
:var_fecaf40abc95_end
rmem reg0 >var_076787ea5f05
rmem reg7 >flip_str
call reg7
wmem >var_fecaf40abc95 reg0
jmp >var_2a68d7af1779_end
:var_2a68d7af1779
:var_2a68d7af1779_end
rmem reg0 >var_fecaf40abc95
rmem reg7 >str_len
call reg7
wmem >var_2a68d7af1779 reg0
rmem reg0 >var_2a68d7af1779
set reg1 1
call >subtract
wmem >var_2a68d7af1779 reg0
jmp >var_3d490d7d7e2e_end
:var_3d490d7d7e2e
:var_3d490d7d7e2e_end
set reg0 0
wmem >var_3d490d7d7e2e reg0
jmp >var_480e5507cb63_end
:var_480e5507cb63
:var_480e5507cb63_end
set reg0 0
wmem >var_480e5507cb63 reg0
:while_d6566ea96531_begin
rmem reg0 >var_3d490d7d7e2e
rmem reg1 >var_2a68d7af1779
gt reg0 reg0 reg1
call >not
jf reg0 >while_d6566ea96531_end
jmp >var_fb6b4770c02a_end
:var_fb6b4770c02a
:var_fb6b4770c02a_end
rmem reg0 >var_fecaf40abc95
rmem reg1 >var_3d490d7d7e2e
add reg0 reg0 reg1
wmem >var_fb6b4770c02a reg0
rmem reg0 >var_fb6b4770c02a
rmem reg0 reg0
wmem >var_fb6b4770c02a reg0
jmp >var_916a9c93cdee_end
:var_916a9c93cdee
:var_916a9c93cdee_end
rmem reg0 >var_fb6b4770c02a
set reg1 47
gt reg0 reg0 reg1
wmem >var_916a9c93cdee reg0
jmp >var_c8ffde7180f2_end
:var_c8ffde7180f2
:var_c8ffde7180f2_end
rmem reg0 >var_fb6b4770c02a
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_c8ffde7180f2 reg0
rmem reg0 >var_916a9c93cdee
rmem reg1 >var_c8ffde7180f2
call >and
jf reg0 >end_acaeca3f8e8a
jmp >var_42e44ff08607_end
:var_42e44ff08607
:var_42e44ff08607_end
rmem reg0 >var_fb6b4770c02a
set reg1 48
call >subtract
wmem >var_42e44ff08607 reg0
rmem reg0 >var_42e44ff08607
rmem reg7 >print_number
call reg7
set reg0 10
out reg0
jmp >var_d4949eabb193_end
:var_d4949eabb193
:var_d4949eabb193_end
set reg0 0
wmem >var_d4949eabb193 reg0
jmp >var_30a41113db84_end
:var_30a41113db84
:var_30a41113db84_end
rmem reg0 >var_3d490d7d7e2e
set reg1 1
call >subtract
wmem >var_30a41113db84 reg0
:while_d050b09dd11d_begin
rmem reg0 >var_d4949eabb193
rmem reg1 >var_30a41113db84
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_d050b09dd11d_end
rmem reg0 >var_42e44ff08607
set reg1 10
call >subtract
wmem >var_42e44ff08607 reg0
rmem reg0 >var_d4949eabb193
add reg0 reg0 1
wmem >var_d4949eabb193 reg0
jmp >while_d050b09dd11d_begin
:while_d050b09dd11d_end
rmem reg0 >var_480e5507cb63
rmem reg1 >var_42e44ff08607
add reg0 reg0 reg1
wmem >var_480e5507cb63 reg0
:end_acaeca3f8e8a
rmem reg0 >var_3d490d7d7e2e
add reg0 reg0 1
wmem >var_3d490d7d7e2e reg0
jmp >while_d6566ea96531_begin
:while_d6566ea96531_end
rmem reg0 >var_480e5507cb63
rmem reg7 >print_number
call reg7
rmem reg0 >var_480e5507cb63
ret
ret
:int_end
set reg0 >int
jmp >do_stuff_end
:do_stuff
jmp >var_e06e0683c83d_end
:var_e06e0683c83d
:var_e06e0683c83d_end
wmem >var_e06e0683c83d reg0
rmem reg7 >var_e06e0683c83d
call reg7
jmp >var_beb1ed6bdb8a_end
:var_beb1ed6bdb8a
&o
&_
&s
&t
&u
&f
&f
0
:var_beb1ed6bdb8a_end
wmem >var_beb1ed6bdb8a &d
set reg0 >var_beb1ed6bdb8a
rmem reg7 >print
call reg7
ret
:do_stuff_end
set reg0 >do_stuff
jmp >test_end
:test
jmp >var_a3a486cd2706_end
:var_a3a486cd2706
&e
&s
&t
0
:var_a3a486cd2706_end
wmem >var_a3a486cd2706 &t
set reg0 >var_a3a486cd2706
rmem reg7 >print
call reg7
ret
:test_end
set reg0 >test
rmem reg7 >do_stuff
call reg7

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
