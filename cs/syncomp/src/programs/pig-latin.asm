jmp >str_equal_end
:str_equal
jmp >var_20e025d04bfa_end
:var_20e025d04bfa
:var_20e025d04bfa_end
jmp >var_dc8dabda0aaf_end
:var_dc8dabda0aaf
:var_dc8dabda0aaf_end
wmem >var_20e025d04bfa reg0
wmem >var_dc8dabda0aaf reg1
jmp >var_da8efbdd6cea_end
:var_da8efbdd6cea
:var_da8efbdd6cea_end
rmem reg0 >var_20e025d04bfa
call >str_len
wmem >var_da8efbdd6cea reg0
jmp >var_781e2289f6af_end
:var_781e2289f6af
:var_781e2289f6af_end
rmem reg0 >var_dc8dabda0aaf
call >str_len
wmem >var_781e2289f6af reg0
rmem reg0 >var_da8efbdd6cea
rmem reg1 >var_781e2289f6af
eq reg0 reg0 reg1
call >not
jf reg0 >end_18028fb93cb2
set reg0 0
ret
:end_18028fb93cb2
jmp >var_7ba6aeeb21b2_end
:var_7ba6aeeb21b2
:var_7ba6aeeb21b2_end
set reg0 0
wmem >var_7ba6aeeb21b2 reg0
:for_24f41ac0fb8e_begin
rmem reg0 >var_7ba6aeeb21b2
rmem reg1 >var_da8efbdd6cea
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_da8efbdd6cea
jf reg0 >for_24f41ac0fb8e_end
jmp >var_807f04bfbd07_end
:var_807f04bfbd07
:var_807f04bfbd07_end
rmem reg0 >var_20e025d04bfa
rmem reg1 >var_7ba6aeeb21b2
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_807f04bfbd07 reg0
jmp >var_68574cd40a57_end
:var_68574cd40a57
:var_68574cd40a57_end
rmem reg0 >var_dc8dabda0aaf
rmem reg1 >var_7ba6aeeb21b2
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_68574cd40a57 reg0
rmem reg0 >var_807f04bfbd07
rmem reg1 >var_68574cd40a57
eq reg0 reg0 reg1
call >not
jf reg0 >end_e87caccb0e54
set reg0 0
ret
:end_e87caccb0e54
rmem reg0 >var_7ba6aeeb21b2
add reg0 reg0 1
wmem >var_7ba6aeeb21b2 reg0
jmp >for_24f41ac0fb8e_begin
:for_24f41ac0fb8e_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_d4ccf8f1bb05_end
:var_d4ccf8f1bb05
:var_d4ccf8f1bb05_end
set reg0 16382
wmem >var_d4ccf8f1bb05 reg0
:while_c5bf8fc3c927_begin
rmem reg0 >var_d4ccf8f1bb05
rmem reg0 reg0
call >not
jf reg0 >while_c5bf8fc3c927_end
rmem reg0 >var_d4ccf8f1bb05
set reg1 1
call >subtract
wmem >var_d4ccf8f1bb05 reg0
jmp >while_c5bf8fc3c927_begin
:while_c5bf8fc3c927_end
rmem reg0 >var_d4ccf8f1bb05
set reg1 2
add reg0 reg0 reg1
wmem >var_d4ccf8f1bb05 reg0
rmem reg0 >var_d4ccf8f1bb05
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_c6090fe97038_end
:var_c6090fe97038
:var_c6090fe97038_end
wmem >var_c6090fe97038 reg0
jmp >var_6920800b94fb_end
:var_6920800b94fb
:var_6920800b94fb_end
call >alloc
wmem >var_6920800b94fb reg0
jmp >var_67ef70f763b1_end
:var_67ef70f763b1
:var_67ef70f763b1_end
rmem reg0 >var_6920800b94fb
rmem reg1 >var_c6090fe97038
add reg0 reg0 reg1
wmem >var_67ef70f763b1 reg0
rmem reg0 >var_67ef70f763b1
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_6920800b94fb
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_41c800cb869c_end
:var_41c800cb869c
:var_41c800cb869c_end
jmp >var_063a834fad7f_end
:var_063a834fad7f
:var_063a834fad7f_end
jmp >var_d2c61164e2b7_end
:var_d2c61164e2b7
:var_d2c61164e2b7_end
wmem >var_41c800cb869c reg0
wmem >var_063a834fad7f reg1
wmem >var_d2c61164e2b7 reg2
jmp >var_77db3770890d_end
:var_77db3770890d
:var_77db3770890d_end
set reg0 0
wmem >var_77db3770890d reg0
:while_3447b9429236_begin
rmem reg0 >var_77db3770890d
rmem reg1 >var_d2c61164e2b7
gt reg0 reg0 reg1
call >not
rmem reg0 >var_d2c61164e2b7
jf reg0 >while_3447b9429236_end
jmp >var_e9486a16bd4e_end
:var_e9486a16bd4e
:var_e9486a16bd4e_end
rmem reg0 >var_41c800cb869c
rmem reg1 >var_77db3770890d
add reg0 reg0 reg1
wmem >var_e9486a16bd4e reg0
jmp >var_ae25d0a9c8d1_end
:var_ae25d0a9c8d1
:var_ae25d0a9c8d1_end
rmem reg0 >var_063a834fad7f
rmem reg1 >var_77db3770890d
add reg0 reg0 reg1
wmem >var_ae25d0a9c8d1 reg0
rmem reg0 >var_ae25d0a9c8d1
rmem reg1 >var_e9486a16bd4e
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_77db3770890d
add reg0 reg0 1
wmem >var_77db3770890d reg0
jmp >while_3447b9429236_begin
:while_3447b9429236_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_a35516ce88b3_end
:var_a35516ce88b3
:var_a35516ce88b3_end
wmem >var_a35516ce88b3 reg0
jmp >var_aa940f027dd3_end
:var_aa940f027dd3
:var_aa940f027dd3_end
set reg0 0
wmem >var_aa940f027dd3 reg0
:while_13addd627989_begin
rmem reg0 >var_a35516ce88b3
rmem reg0 reg0
jf reg0 >while_13addd627989_end
rmem reg0 >var_a35516ce88b3
add reg0 reg0 1
wmem >var_a35516ce88b3 reg0
rmem reg0 >var_aa940f027dd3
add reg0 reg0 1
wmem >var_aa940f027dd3 reg0
jmp >while_13addd627989_begin
:while_13addd627989_end
rmem reg0 >var_aa940f027dd3
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_f6b260e2ce59_end
:var_f6b260e2ce59
:var_f6b260e2ce59_end
jmp >var_f1b8de506b33_end
:var_f1b8de506b33
:var_f1b8de506b33_end
wmem >var_f6b260e2ce59 reg0
wmem >var_f1b8de506b33 reg1
jmp >var_2d0170ac3401_end
:var_2d0170ac3401
:var_2d0170ac3401_end
rmem reg0 >var_f6b260e2ce59
call >str_len
wmem >var_2d0170ac3401 reg0
jmp >var_9d082a535ee2_end
:var_9d082a535ee2
:var_9d082a535ee2_end
rmem reg0 >var_f1b8de506b33
call >str_len
wmem >var_9d082a535ee2 reg0
jmp >var_5bfe1951350c_end
:var_5bfe1951350c
:var_5bfe1951350c_end
call >alloc
wmem >var_5bfe1951350c reg0
rmem reg0 >var_f6b260e2ce59
rmem reg1 >var_5bfe1951350c
rmem reg2 >var_2d0170ac3401
call >mem_cp
jmp >var_a23223c42c23_end
:var_a23223c42c23
:var_a23223c42c23_end
rmem reg0 >var_5bfe1951350c
rmem reg1 >var_2d0170ac3401
add reg0 reg0 reg1
wmem >var_a23223c42c23 reg0
rmem reg0 >var_9d082a535ee2
add reg0 reg0 1
wmem >var_9d082a535ee2 reg0
rmem reg0 >var_f1b8de506b33
rmem reg1 >var_a23223c42c23
rmem reg2 >var_9d082a535ee2
call >mem_cp
rmem reg0 >var_5bfe1951350c
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_d507b3c51b04_end
:var_d507b3c51b04
:var_d507b3c51b04_end
wmem >var_d507b3c51b04 reg0
jmp >var_0b7a37ef98bc_end
:var_0b7a37ef98bc
:var_0b7a37ef98bc_end
call >alloc
wmem >var_0b7a37ef98bc reg0
jmp >var_009538169059_end
:var_009538169059
:var_009538169059_end
rmem reg0 >var_d507b3c51b04
call >str_len
wmem >var_009538169059 reg0
jmp >var_418008f1d70c_end
:var_418008f1d70c
:var_418008f1d70c_end
set reg0 0
wmem >var_418008f1d70c reg0
:while_b6c334316b69_begin
rmem reg0 >var_418008f1d70c
rmem reg1 >var_009538169059
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_009538169059
jf reg0 >while_b6c334316b69_end
jmp >var_092f65d8c2f0_end
:var_092f65d8c2f0
:var_092f65d8c2f0_end
rmem reg0 >var_d507b3c51b04
rmem reg1 >var_418008f1d70c
add reg0 reg0 reg1
wmem >var_092f65d8c2f0 reg0
rmem reg0 >var_092f65d8c2f0
rmem reg0 reg0
rmem reg0 >var_092f65d8c2f0
rmem reg0 reg0
push reg0
rmem reg0 >var_418008f1d70c
add reg0 reg0 1
wmem >var_418008f1d70c reg0
jmp >while_b6c334316b69_begin
:while_b6c334316b69_end
jmp >var_8a1b62f73b20_end
:var_8a1b62f73b20
:var_8a1b62f73b20_end
pop reg0
wmem >var_8a1b62f73b20 reg0
set reg0 0
wmem >var_418008f1d70c reg0
:while_7299c528ab05_begin
rmem reg0 >var_418008f1d70c
rmem reg1 >var_009538169059
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_009538169059
jf reg0 >while_7299c528ab05_end
jmp >var_bb22502bb4fd_end
:var_bb22502bb4fd
:var_bb22502bb4fd_end
rmem reg0 >var_0b7a37ef98bc
rmem reg1 >var_418008f1d70c
add reg0 reg0 reg1
wmem >var_bb22502bb4fd reg0
rmem reg0 >var_bb22502bb4fd
rmem reg1 >var_8a1b62f73b20
wmem reg0 reg1
rmem reg0 >var_418008f1d70c
add reg0 reg0 1
wmem >var_418008f1d70c reg0
pop reg0
wmem >var_8a1b62f73b20 reg0
jmp >while_7299c528ab05_begin
:while_7299c528ab05_end
rmem reg0 >var_8a1b62f73b20
rmem reg0 >var_8a1b62f73b20
push reg0
rmem reg0 >var_0b7a37ef98bc
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_01e0d452062f_end
:var_01e0d452062f
:var_01e0d452062f_end
set reg0 16384
wmem >var_01e0d452062f reg0
jmp >var_76128e57dd56_end
:var_76128e57dd56
:var_76128e57dd56_end
in reg0
wmem >var_76128e57dd56 reg0
jmp >var_c42915f57cc9_end
:var_c42915f57cc9
:var_c42915f57cc9_end
rmem reg0 >var_76128e57dd56
set reg1 10
eq reg0 reg0 reg1
wmem >var_c42915f57cc9 reg0
:while_fd6277338296_begin
rmem reg0 >var_c42915f57cc9
rmem reg1 >var_76128e57dd56
call >and
call >not
jf reg0 >while_fd6277338296_end
rmem reg0 >var_01e0d452062f
rmem reg1 >var_76128e57dd56
wmem reg0 reg1
rmem reg0 >var_01e0d452062f
add reg0 reg0 1
wmem >var_01e0d452062f reg0
in reg0
wmem >var_76128e57dd56 reg0
rmem reg0 >var_76128e57dd56
set reg1 10
eq reg0 reg0 reg1
wmem >var_c42915f57cc9 reg0
jmp >while_fd6277338296_begin
:while_fd6277338296_end
rmem reg0 >var_01e0d452062f
set reg1 0
wmem reg0 reg1
jmp >var_991f102c3dfd_end
:var_991f102c3dfd
:var_991f102c3dfd_end
call >alloc
wmem >var_991f102c3dfd reg0
jmp >var_0cc877a64f8b_end
:var_0cc877a64f8b
:var_0cc877a64f8b_end
set reg0 16384
call >str_len
wmem >var_0cc877a64f8b reg0
set reg0 16384
rmem reg1 >var_991f102c3dfd
rmem reg2 >var_0cc877a64f8b
call >mem_cp
rmem reg0 >var_991f102c3dfd
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_5f622eb4865b_end
:var_5f622eb4865b
:var_5f622eb4865b_end
wmem >var_5f622eb4865b reg0
:while_3aff0f34020b_begin
rmem reg0 >var_5f622eb4865b
rmem reg0 reg0
jf reg0 >while_3aff0f34020b_end
rmem reg0 >var_5f622eb4865b
rmem reg0 reg0
out reg0
rmem reg0 >var_5f622eb4865b
add reg0 reg0 1
wmem >var_5f622eb4865b reg0
jmp >while_3aff0f34020b_begin
:while_3aff0f34020b_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_936947f47def_end
:var_936947f47def
:var_936947f47def_end
wmem >var_936947f47def reg0
rmem reg0 >var_936947f47def
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_742d6f1793c9_end
:var_742d6f1793c9
:var_742d6f1793c9_end
wmem >var_742d6f1793c9 reg0
rmem reg0 >var_742d6f1793c9
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_320156cd83a5
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_320156cd83a5
jmp >var_359e4707642b_end
:var_359e4707642b
:var_359e4707642b_end
jmp >var_b53e868e9f3a_end
:var_b53e868e9f3a
:var_b53e868e9f3a_end
set reg0 0
wmem >var_b53e868e9f3a reg0
:while_28781e5c5089_begin
rmem reg0 >var_742d6f1793c9
set reg1 10
gt reg0 reg0 reg1
set reg0 10
jf reg0 >while_28781e5c5089_end
rmem reg0 >var_742d6f1793c9
set reg1 10
mod reg0 reg0 reg1
wmem >var_359e4707642b reg0
rmem reg0 >var_359e4707642b
rmem reg0 >var_359e4707642b
push reg0
rmem reg0 >var_b53e868e9f3a
add reg0 reg0 1
wmem >var_b53e868e9f3a reg0
rmem reg0 >var_742d6f1793c9
set reg1 10
call >divide
wmem >var_742d6f1793c9 reg0
jmp >while_28781e5c5089_begin
:while_28781e5c5089_end
rmem reg0 >var_742d6f1793c9
set reg1 10
mod reg0 reg0 reg1
wmem >var_359e4707642b reg0
rmem reg0 >var_359e4707642b
rmem reg0 >var_359e4707642b
push reg0
rmem reg0 >var_b53e868e9f3a
add reg0 reg0 1
wmem >var_b53e868e9f3a reg0
jmp >var_fe31ad0e7f03_end
:var_fe31ad0e7f03
:var_fe31ad0e7f03_end
set reg0 0
wmem >var_fe31ad0e7f03 reg0
:while_5db4b7455403_begin
rmem reg0 >var_fe31ad0e7f03
rmem reg1 >var_b53e868e9f3a
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_b53e868e9f3a
jf reg0 >while_5db4b7455403_end
rmem reg0 >var_fe31ad0e7f03
set reg1 1
add reg0 reg0 reg1
wmem >var_fe31ad0e7f03 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_5db4b7455403_begin
:while_5db4b7455403_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_ac0f0a80a3c1_end
:var_ac0f0a80a3c1
:var_ac0f0a80a3c1_end
set reg0 0
wmem >var_ac0f0a80a3c1 reg0
:while_80cd1bdbcf80_begin
rmem reg0 >var_ac0f0a80a3c1
rmem reg0 reg0
jf reg0 >while_80cd1bdbcf80_end
rmem reg0 >var_ac0f0a80a3c1
add reg0 reg0 1
wmem >var_ac0f0a80a3c1 reg0
rmem reg0 >var_ac0f0a80a3c1
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_80cd1bdbcf80_begin
:while_80cd1bdbcf80_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_206749b9deee_end
:var_206749b9deee
:var_206749b9deee_end
wmem >var_206749b9deee reg0
jmp >var_3dacb216b35f_end
:var_3dacb216b35f
:var_3dacb216b35f_end
rmem reg0 >var_206749b9deee
call >flip_str
wmem >var_3dacb216b35f reg0
jmp >var_63b9ff7e4c11_end
:var_63b9ff7e4c11
:var_63b9ff7e4c11_end
rmem reg0 >var_3dacb216b35f
call >str_len
wmem >var_63b9ff7e4c11 reg0
rmem reg0 >var_63b9ff7e4c11
set reg1 1
call >subtract
wmem >var_63b9ff7e4c11 reg0
jmp >var_e07e7b171f2c_end
:var_e07e7b171f2c
:var_e07e7b171f2c_end
set reg0 0
wmem >var_e07e7b171f2c reg0
jmp >var_d09b0fcd5bdc_end
:var_d09b0fcd5bdc
:var_d09b0fcd5bdc_end
set reg0 0
wmem >var_d09b0fcd5bdc reg0
:while_586bde2f526d_begin
rmem reg0 >var_e07e7b171f2c
rmem reg1 >var_63b9ff7e4c11
gt reg0 reg0 reg1
call >not
rmem reg0 >var_63b9ff7e4c11
jf reg0 >while_586bde2f526d_end
jmp >var_c1fed516eda4_end
:var_c1fed516eda4
:var_c1fed516eda4_end
rmem reg0 >var_3dacb216b35f
rmem reg1 >var_e07e7b171f2c
add reg0 reg0 reg1
wmem >var_c1fed516eda4 reg0
rmem reg0 >var_c1fed516eda4
rmem reg0 reg0
wmem >var_c1fed516eda4 reg0
jmp >var_b61a2ecef540_end
:var_b61a2ecef540
:var_b61a2ecef540_end
rmem reg0 >var_c1fed516eda4
set reg1 47
gt reg0 reg0 reg1
wmem >var_b61a2ecef540 reg0
jmp >var_e7216df8916b_end
:var_e7216df8916b
:var_e7216df8916b_end
rmem reg0 >var_c1fed516eda4
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_e7216df8916b reg0
rmem reg0 >var_b61a2ecef540
rmem reg1 >var_e7216df8916b
call >and
jf reg0 >end_bde3dafe46c6
jmp >var_89127840574e_end
:var_89127840574e
:var_89127840574e_end
rmem reg0 >var_c1fed516eda4
set reg1 48
call >subtract
wmem >var_89127840574e reg0
rmem reg0 >var_89127840574e
call >print_number
set reg0 10
out reg0
jmp >var_890da1ad973a_end
:var_890da1ad973a
:var_890da1ad973a_end
set reg0 0
wmem >var_890da1ad973a reg0
jmp >var_299c1256f7f3_end
:var_299c1256f7f3
:var_299c1256f7f3_end
rmem reg0 >var_e07e7b171f2c
set reg1 1
call >subtract
wmem >var_299c1256f7f3 reg0
:while_6d3ef74861cf_begin
rmem reg0 >var_890da1ad973a
rmem reg1 >var_299c1256f7f3
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg0 >var_299c1256f7f3
jf reg0 >while_6d3ef74861cf_end
rmem reg0 >var_89127840574e
set reg1 10
call >subtract
wmem >var_89127840574e reg0
rmem reg0 >var_890da1ad973a
add reg0 reg0 1
wmem >var_890da1ad973a reg0
jmp >while_6d3ef74861cf_begin
:while_6d3ef74861cf_end
rmem reg0 >var_d09b0fcd5bdc
rmem reg1 >var_89127840574e
add reg0 reg0 reg1
wmem >var_d09b0fcd5bdc reg0
:end_bde3dafe46c6
rmem reg0 >var_e07e7b171f2c
add reg0 reg0 1
wmem >var_e07e7b171f2c reg0
jmp >while_586bde2f526d_begin
:while_586bde2f526d_end
rmem reg0 >var_d09b0fcd5bdc
call >print_number
rmem reg0 >var_d09b0fcd5bdc
ret
ret
:int_end
set reg0 >int
jmp >main_end
:main
jmp >var_8689ab287217_end
:var_8689ab287217
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
:var_8689ab287217_end
wmem >var_8689ab287217 &E
set reg0 >var_8689ab287217
call >print
jmp >var_13f0e4e9bcf6_end
:var_13f0e4e9bcf6
:var_13f0e4e9bcf6_end
call >input
wmem >var_13f0e4e9bcf6 reg0
rmem reg0 >var_13f0e4e9bcf6
jmp >var_3a304d6b8d82_end
:var_3a304d6b8d82
&x
&i
&t
0
:var_3a304d6b8d82_end
wmem >var_3a304d6b8d82 &e
set reg1 >var_3a304d6b8d82
call >str_equal
jf reg0 >end_8d610d87bbe7
ret
:end_8d610d87bbe7
jmp >var_b97237fb0c2f_end
:var_b97237fb0c2f
:var_b97237fb0c2f_end
call >alloc
wmem >var_b97237fb0c2f reg0
rmem reg0 >var_b97237fb0c2f
rmem reg1 >var_13f0e4e9bcf6
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_13f0e4e9bcf6
add reg0 reg0 1
wmem >var_13f0e4e9bcf6 reg0
rmem reg0 >var_13f0e4e9bcf6
rmem reg1 >var_b97237fb0c2f
call >str_cat
jmp >var_5dde28962911_end
:var_5dde28962911
&y
0
:var_5dde28962911_end
wmem >var_5dde28962911 &a
set reg1 >var_5dde28962911
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

