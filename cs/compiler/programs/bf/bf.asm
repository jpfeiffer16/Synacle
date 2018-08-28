jmp >str_equal_end
:str_equal
jmp >var_918e0f9e7334_end
:var_918e0f9e7334
:var_918e0f9e7334_end
jmp >var_73fd346cd9cc_end
:var_73fd346cd9cc
:var_73fd346cd9cc_end
wmem >var_918e0f9e7334 reg0
wmem >var_73fd346cd9cc reg1
jmp >var_fe8a98de7455_end
:var_fe8a98de7455
:var_fe8a98de7455_end
rmem reg0 >var_918e0f9e7334
call >str_len
wmem >var_fe8a98de7455 reg0
jmp >var_382e7959613e_end
:var_382e7959613e
:var_382e7959613e_end
rmem reg0 >var_73fd346cd9cc
call >str_len
wmem >var_382e7959613e reg0
jmp >var_22c250a9c740_end
:var_22c250a9c740
:var_22c250a9c740_end
rmem reg0 >var_fe8a98de7455
rmem reg1 >var_382e7959613e
eq reg0 reg0 reg1
wmem >var_22c250a9c740 reg0
rmem reg0 >var_22c250a9c740
call >not
jf reg0 >end_e37387b5e938
set reg0 0
ret
:end_e37387b5e938
jmp >var_2974ada80378_end
:var_2974ada80378
:var_2974ada80378_end
set reg0 0
wmem >var_2974ada80378 reg0
:for_cf8739175534_begin
rmem reg0 >var_2974ada80378
rmem reg1 >var_fe8a98de7455
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_cf8739175534_end
jmp >var_437b9c5319ff_end
:var_437b9c5319ff
:var_437b9c5319ff_end
rmem reg0 >var_918e0f9e7334
rmem reg1 >var_2974ada80378
add reg0 reg0 reg1
wmem >var_437b9c5319ff reg0
jmp >var_80083725ec26_end
:var_80083725ec26
:var_80083725ec26_end
rmem reg0 >var_73fd346cd9cc
rmem reg1 >var_2974ada80378
add reg0 reg0 reg1
wmem >var_80083725ec26 reg0
jmp >var_abb5364b7ec2_end
:var_abb5364b7ec2
:var_abb5364b7ec2_end
rmem reg0 >var_437b9c5319ff
rmem reg0 reg0
wmem >var_abb5364b7ec2 reg0
jmp >var_61340cefca90_end
:var_61340cefca90
:var_61340cefca90_end
rmem reg0 >var_80083725ec26
rmem reg0 reg0
wmem >var_61340cefca90 reg0
jmp >var_ce7d17fb4002_end
:var_ce7d17fb4002
:var_ce7d17fb4002_end
rmem reg0 >var_abb5364b7ec2
rmem reg1 >var_61340cefca90
eq reg0 reg0 reg1
wmem >var_ce7d17fb4002 reg0
rmem reg0 >var_ce7d17fb4002
call >not
jf reg0 >end_f0da149cdfc4
set reg0 0
ret
:end_f0da149cdfc4
rmem reg0 >var_2974ada80378
add reg0 reg0 1
wmem >var_2974ada80378 reg0
jmp >for_cf8739175534_begin
:for_cf8739175534_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_36aac11a47c2_end
:var_36aac11a47c2
:var_36aac11a47c2_end
set reg0 0
wmem >var_36aac11a47c2 reg0
jmp >var_6d4beeeefee0_end
:var_6d4beeeefee0
:var_6d4beeeefee0_end
set reg0 0
wmem >var_6d4beeeefee0 reg0
:while_2d858619e6e6_begin
rmem reg0 >var_6d4beeeefee0
set reg1 6
gt reg0 reg0 reg1
call >not
jf reg0 >while_2d858619e6e6_end
jmp >var_073b6a211416_end
:var_073b6a211416
:var_073b6a211416_end
rmem reg0 >var_36aac11a47c2
rmem reg0 reg0
wmem >var_073b6a211416 reg0
rmem reg0 >var_073b6a211416
call >not
jf reg0 >end_133b1ec9a835
rmem reg0 >var_6d4beeeefee0
add reg0 reg0 1
wmem >var_6d4beeeefee0 reg0
:end_133b1ec9a835
rmem reg0 >var_073b6a211416
jf reg0 >end_31a35ef9ff12
set reg0 0
wmem >var_6d4beeeefee0 reg0
:end_31a35ef9ff12
rmem reg0 >var_36aac11a47c2
add reg0 reg0 1
wmem >var_36aac11a47c2 reg0
jmp >while_2d858619e6e6_begin
:while_2d858619e6e6_end
rmem reg0 >var_36aac11a47c2
set reg1 1
call >subtract
wmem >var_36aac11a47c2 reg0
rmem reg0 >var_36aac11a47c2
ret
ret
:alloc_end
set reg0 >alloc
jmp >mem_cp_end
:mem_cp
jmp >var_e1757e1d38b1_end
:var_e1757e1d38b1
:var_e1757e1d38b1_end
jmp >var_3cba23c092d1_end
:var_3cba23c092d1
:var_3cba23c092d1_end
jmp >var_4e7a537f88ab_end
:var_4e7a537f88ab
:var_4e7a537f88ab_end
wmem >var_e1757e1d38b1 reg0
wmem >var_3cba23c092d1 reg1
wmem >var_4e7a537f88ab reg2
jmp >var_af68f9c55c82_end
:var_af68f9c55c82
:var_af68f9c55c82_end
set reg0 0
wmem >var_af68f9c55c82 reg0
:while_239259b53ad2_begin
rmem reg0 >var_af68f9c55c82
rmem reg1 >var_4e7a537f88ab
gt reg0 reg0 reg1
call >not
jf reg0 >while_239259b53ad2_end
jmp >var_a29c7e252fa3_end
:var_a29c7e252fa3
:var_a29c7e252fa3_end
rmem reg0 >var_e1757e1d38b1
rmem reg1 >var_af68f9c55c82
add reg0 reg0 reg1
wmem >var_a29c7e252fa3 reg0
jmp >var_74fac45865a1_end
:var_74fac45865a1
:var_74fac45865a1_end
rmem reg0 >var_3cba23c092d1
rmem reg1 >var_af68f9c55c82
add reg0 reg0 reg1
wmem >var_74fac45865a1 reg0
rmem reg0 >var_74fac45865a1
rmem reg1 >var_a29c7e252fa3
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_af68f9c55c82
add reg0 reg0 1
wmem >var_af68f9c55c82 reg0
jmp >while_239259b53ad2_begin
:while_239259b53ad2_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_56efe0f329a1_end
:var_56efe0f329a1
:var_56efe0f329a1_end
wmem >var_56efe0f329a1 reg0
jmp >var_6bba72728608_end
:var_6bba72728608
:var_6bba72728608_end
set reg0 0
wmem >var_6bba72728608 reg0
:while_1ba7d2e87520_begin
rmem reg0 >var_56efe0f329a1
rmem reg0 reg0
jf reg0 >while_1ba7d2e87520_end
rmem reg0 >var_56efe0f329a1
add reg0 reg0 1
wmem >var_56efe0f329a1 reg0
rmem reg0 >var_6bba72728608
add reg0 reg0 1
wmem >var_6bba72728608 reg0
jmp >while_1ba7d2e87520_begin
:while_1ba7d2e87520_end
rmem reg0 >var_6bba72728608
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_ab6534de0beb_end
:var_ab6534de0beb
:var_ab6534de0beb_end
jmp >var_bf0e78c688ba_end
:var_bf0e78c688ba
:var_bf0e78c688ba_end
wmem >var_ab6534de0beb reg0
wmem >var_bf0e78c688ba reg1
jmp >var_7279d20a3446_end
:var_7279d20a3446
:var_7279d20a3446_end
rmem reg0 >var_ab6534de0beb
call >str_len
wmem >var_7279d20a3446 reg0
jmp >var_0a68ed6cb74e_end
:var_0a68ed6cb74e
:var_0a68ed6cb74e_end
rmem reg0 >var_bf0e78c688ba
call >str_len
wmem >var_0a68ed6cb74e reg0
jmp >var_61da45852387_end
:var_61da45852387
:var_61da45852387_end
call >alloc
wmem >var_61da45852387 reg0
rmem reg0 >var_ab6534de0beb
rmem reg1 >var_61da45852387
rmem reg2 >var_7279d20a3446
call >mem_cp
jmp >var_53f5c916fbc3_end
:var_53f5c916fbc3
:var_53f5c916fbc3_end
rmem reg0 >var_61da45852387
rmem reg1 >var_7279d20a3446
add reg0 reg0 reg1
wmem >var_53f5c916fbc3 reg0
rmem reg0 >var_0a68ed6cb74e
add reg0 reg0 1
wmem >var_0a68ed6cb74e reg0
rmem reg0 >var_bf0e78c688ba
rmem reg1 >var_53f5c916fbc3
rmem reg2 >var_0a68ed6cb74e
call >mem_cp
rmem reg0 >var_61da45852387
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_205212b948c2_end
:var_205212b948c2
:var_205212b948c2_end
wmem >var_205212b948c2 reg0
jmp >var_5bdb2450e2c2_end
:var_5bdb2450e2c2
:var_5bdb2450e2c2_end
call >alloc
wmem >var_5bdb2450e2c2 reg0
jmp >var_43054d213ddf_end
:var_43054d213ddf
:var_43054d213ddf_end
rmem reg0 >var_205212b948c2
call >str_len
wmem >var_43054d213ddf reg0
jmp >var_4e8c80ec5279_end
:var_4e8c80ec5279
:var_4e8c80ec5279_end
set reg0 0
wmem >var_4e8c80ec5279 reg0
:while_e0fbd9c43cd8_begin
rmem reg0 >var_4e8c80ec5279
rmem reg1 >var_43054d213ddf
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_e0fbd9c43cd8_end
jmp >var_458d26125120_end
:var_458d26125120
:var_458d26125120_end
rmem reg0 >var_205212b948c2
rmem reg1 >var_4e8c80ec5279
add reg0 reg0 reg1
wmem >var_458d26125120 reg0
rmem reg0 >var_458d26125120
rmem reg0 reg0
rmem reg0 >var_458d26125120
rmem reg0 reg0
push reg0
rmem reg0 >var_4e8c80ec5279
add reg0 reg0 1
wmem >var_4e8c80ec5279 reg0
jmp >while_e0fbd9c43cd8_begin
:while_e0fbd9c43cd8_end
jmp >var_472b07ce1e54_end
:var_472b07ce1e54
:var_472b07ce1e54_end
pop reg0
wmem >var_472b07ce1e54 reg0
set reg0 0
wmem >var_4e8c80ec5279 reg0
:while_95b258296a78_begin
rmem reg0 >var_4e8c80ec5279
rmem reg1 >var_43054d213ddf
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_95b258296a78_end
jmp >var_1ff77e5d2e2d_end
:var_1ff77e5d2e2d
:var_1ff77e5d2e2d_end
rmem reg0 >var_5bdb2450e2c2
rmem reg1 >var_4e8c80ec5279
add reg0 reg0 reg1
wmem >var_1ff77e5d2e2d reg0
rmem reg0 >var_1ff77e5d2e2d
rmem reg1 >var_472b07ce1e54
wmem reg0 reg1
rmem reg0 >var_4e8c80ec5279
add reg0 reg0 1
wmem >var_4e8c80ec5279 reg0
pop reg0
wmem >var_472b07ce1e54 reg0
jmp >while_95b258296a78_begin
:while_95b258296a78_end
rmem reg0 >var_472b07ce1e54
rmem reg0 >var_472b07ce1e54
push reg0
rmem reg0 >var_5bdb2450e2c2
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_c642fcccc9d9_end
:var_c642fcccc9d9
:var_c642fcccc9d9_end
set reg0 16384
wmem >var_c642fcccc9d9 reg0
jmp >var_f39543a61e3f_end
:var_f39543a61e3f
:var_f39543a61e3f_end
in reg0
wmem >var_f39543a61e3f reg0
jmp >var_85121310e851_end
:var_85121310e851
:var_85121310e851_end
rmem reg0 >var_f39543a61e3f
set reg1 10
eq reg0 reg0 reg1
wmem >var_85121310e851 reg0
:while_853503369522_begin
rmem reg0 >var_85121310e851
rmem reg1 >var_f39543a61e3f
call >and
call >not
jf reg0 >while_853503369522_end
rmem reg0 >var_c642fcccc9d9
rmem reg1 >var_f39543a61e3f
wmem reg0 reg1
rmem reg0 >var_c642fcccc9d9
add reg0 reg0 1
wmem >var_c642fcccc9d9 reg0
in reg0
wmem >var_f39543a61e3f reg0
rmem reg0 >var_f39543a61e3f
set reg1 10
eq reg0 reg0 reg1
wmem >var_85121310e851 reg0
jmp >while_853503369522_begin
:while_853503369522_end
rmem reg0 >var_c642fcccc9d9
set reg1 0
wmem reg0 reg1
jmp >var_c27906681097_end
:var_c27906681097
:var_c27906681097_end
call >alloc
wmem >var_c27906681097 reg0
jmp >var_36fdf8a85bee_end
:var_36fdf8a85bee
:var_36fdf8a85bee_end
set reg0 16384
call >str_len
wmem >var_36fdf8a85bee reg0
set reg0 16384
rmem reg1 >var_c27906681097
rmem reg2 >var_36fdf8a85bee
call >mem_cp
rmem reg0 >var_c27906681097
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_42a92e47c153_end
:var_42a92e47c153
:var_42a92e47c153_end
wmem >var_42a92e47c153 reg0
:while_3bf393b33bf3_begin
rmem reg0 >var_42a92e47c153
rmem reg0 reg0
jf reg0 >while_3bf393b33bf3_end
rmem reg0 >var_42a92e47c153
rmem reg0 reg0
out reg0
rmem reg0 >var_42a92e47c153
add reg0 reg0 1
wmem >var_42a92e47c153 reg0
jmp >while_3bf393b33bf3_begin
:while_3bf393b33bf3_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_b12c27b5f55d_end
:var_b12c27b5f55d
:var_b12c27b5f55d_end
wmem >var_b12c27b5f55d reg0
rmem reg0 >var_b12c27b5f55d
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_19bd2e02cdc5_end
:var_19bd2e02cdc5
:var_19bd2e02cdc5_end
wmem >var_19bd2e02cdc5 reg0
rmem reg0 >var_19bd2e02cdc5
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_f2d3eef78839
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_f2d3eef78839
jmp >var_f936f44f5bae_end
:var_f936f44f5bae
:var_f936f44f5bae_end
jmp >var_a88bb21d8c1b_end
:var_a88bb21d8c1b
:var_a88bb21d8c1b_end
set reg0 0
wmem >var_a88bb21d8c1b reg0
:while_d5e51444c24f_begin
rmem reg0 >var_19bd2e02cdc5
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_d5e51444c24f_end
rmem reg0 >var_19bd2e02cdc5
set reg1 10
mod reg0 reg0 reg1
wmem >var_f936f44f5bae reg0
rmem reg0 >var_f936f44f5bae
rmem reg0 >var_f936f44f5bae
push reg0
rmem reg0 >var_a88bb21d8c1b
add reg0 reg0 1
wmem >var_a88bb21d8c1b reg0
rmem reg0 >var_19bd2e02cdc5
set reg1 10
call >divide
wmem >var_19bd2e02cdc5 reg0
jmp >while_d5e51444c24f_begin
:while_d5e51444c24f_end
rmem reg0 >var_19bd2e02cdc5
set reg1 10
mod reg0 reg0 reg1
wmem >var_f936f44f5bae reg0
rmem reg0 >var_f936f44f5bae
rmem reg0 >var_f936f44f5bae
push reg0
rmem reg0 >var_a88bb21d8c1b
add reg0 reg0 1
wmem >var_a88bb21d8c1b reg0
jmp >var_7af6f780d749_end
:var_7af6f780d749
:var_7af6f780d749_end
set reg0 0
wmem >var_7af6f780d749 reg0
:while_7e787b8b37aa_begin
rmem reg0 >var_7af6f780d749
rmem reg1 >var_a88bb21d8c1b
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_7e787b8b37aa_end
rmem reg0 >var_7af6f780d749
set reg1 1
add reg0 reg0 reg1
wmem >var_7af6f780d749 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_7e787b8b37aa_begin
:while_7e787b8b37aa_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_d2a1f8b31aa0_end
:var_d2a1f8b31aa0
:var_d2a1f8b31aa0_end
set reg0 0
wmem >var_d2a1f8b31aa0 reg0
:while_2fa36ceb6004_begin
rmem reg0 >var_d2a1f8b31aa0
rmem reg0 reg0
jf reg0 >while_2fa36ceb6004_end
rmem reg0 >var_d2a1f8b31aa0
add reg0 reg0 1
wmem >var_d2a1f8b31aa0 reg0
rmem reg0 >var_d2a1f8b31aa0
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_2fa36ceb6004_begin
:while_2fa36ceb6004_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_8e06def06d1f_end
:var_8e06def06d1f
:var_8e06def06d1f_end
wmem >var_8e06def06d1f reg0
jmp >var_c44d1752c0d3_end
:var_c44d1752c0d3
:var_c44d1752c0d3_end
rmem reg0 >var_8e06def06d1f
call >flip_str
wmem >var_c44d1752c0d3 reg0
jmp >var_961bc24714ed_end
:var_961bc24714ed
:var_961bc24714ed_end
rmem reg0 >var_c44d1752c0d3
call >str_len
wmem >var_961bc24714ed reg0
rmem reg0 >var_961bc24714ed
set reg1 1
call >subtract
wmem >var_961bc24714ed reg0
jmp >var_be03fdf0fd90_end
:var_be03fdf0fd90
:var_be03fdf0fd90_end
set reg0 0
wmem >var_be03fdf0fd90 reg0
jmp >var_6eaff3388b87_end
:var_6eaff3388b87
:var_6eaff3388b87_end
set reg0 0
wmem >var_6eaff3388b87 reg0
:while_bc9d24d25863_begin
rmem reg0 >var_be03fdf0fd90
rmem reg1 >var_961bc24714ed
gt reg0 reg0 reg1
call >not
jf reg0 >while_bc9d24d25863_end
jmp >var_b2476125ea5a_end
:var_b2476125ea5a
:var_b2476125ea5a_end
rmem reg0 >var_c44d1752c0d3
rmem reg1 >var_be03fdf0fd90
add reg0 reg0 reg1
wmem >var_b2476125ea5a reg0
rmem reg0 >var_b2476125ea5a
rmem reg0 reg0
wmem >var_b2476125ea5a reg0
jmp >var_f92297d645f2_end
:var_f92297d645f2
:var_f92297d645f2_end
rmem reg0 >var_b2476125ea5a
set reg1 47
gt reg0 reg0 reg1
wmem >var_f92297d645f2 reg0
jmp >var_b051c4c5e7d6_end
:var_b051c4c5e7d6
:var_b051c4c5e7d6_end
rmem reg0 >var_b2476125ea5a
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_b051c4c5e7d6 reg0
rmem reg0 >var_f92297d645f2
rmem reg1 >var_b051c4c5e7d6
call >and
jf reg0 >end_cb96201c298c
jmp >var_72a546a9dfa6_end
:var_72a546a9dfa6
:var_72a546a9dfa6_end
rmem reg0 >var_b2476125ea5a
set reg1 48
call >subtract
wmem >var_72a546a9dfa6 reg0
rmem reg0 >var_72a546a9dfa6
call >print_number
set reg0 10
out reg0
jmp >var_4794363d40f1_end
:var_4794363d40f1
:var_4794363d40f1_end
set reg0 0
wmem >var_4794363d40f1 reg0
jmp >var_78661899be24_end
:var_78661899be24
:var_78661899be24_end
rmem reg0 >var_be03fdf0fd90
set reg1 1
call >subtract
wmem >var_78661899be24 reg0
:while_ff0d75b5e49e_begin
rmem reg0 >var_4794363d40f1
rmem reg1 >var_78661899be24
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_ff0d75b5e49e_end
rmem reg0 >var_72a546a9dfa6
set reg1 10
call >subtract
wmem >var_72a546a9dfa6 reg0
rmem reg0 >var_4794363d40f1
add reg0 reg0 1
wmem >var_4794363d40f1 reg0
jmp >while_ff0d75b5e49e_begin
:while_ff0d75b5e49e_end
rmem reg0 >var_6eaff3388b87
rmem reg1 >var_72a546a9dfa6
add reg0 reg0 reg1
wmem >var_6eaff3388b87 reg0
:end_cb96201c298c
rmem reg0 >var_be03fdf0fd90
add reg0 reg0 1
wmem >var_be03fdf0fd90 reg0
jmp >while_bc9d24d25863_begin
:while_bc9d24d25863_end
rmem reg0 >var_6eaff3388b87
call >print_number
rmem reg0 >var_6eaff3388b87
ret
ret
:int_end
set reg0 >int
jmp >var_5bcc413b0667_end
:var_5bcc413b0667
:var_5bcc413b0667_end
jmp >var_688f089f21e1_end
:var_688f089f21e1
0
:var_688f089f21e1_end
wmem >var_688f089f21e1 &+
set reg0 >var_688f089f21e1
rmem reg0 reg0
wmem >var_5bcc413b0667 reg0
jmp >var_d2e7896d5542_end
:var_d2e7896d5542
:var_d2e7896d5542_end
jmp >var_5deb8eee43b0_end
:var_5deb8eee43b0
0
:var_5deb8eee43b0_end
wmem >var_5deb8eee43b0 &-
set reg0 >var_5deb8eee43b0
rmem reg0 reg0
wmem >var_d2e7896d5542 reg0
jmp >var_b00ba27f9750_end
:var_b00ba27f9750
:var_b00ba27f9750_end
jmp >var_402f8c8c375a_end
:var_402f8c8c375a
0
:var_402f8c8c375a_end
wmem >var_402f8c8c375a &[
set reg0 >var_402f8c8c375a
rmem reg0 reg0
wmem >var_b00ba27f9750 reg0
jmp >var_2c589211e29b_end
:var_2c589211e29b
:var_2c589211e29b_end
jmp >var_e9e3d1aab9ec_end
:var_e9e3d1aab9ec
0
:var_e9e3d1aab9ec_end
wmem >var_e9e3d1aab9ec &]
set reg0 >var_e9e3d1aab9ec
rmem reg0 reg0
wmem >var_2c589211e29b reg0
jmp >var_306a2f614789_end
:var_306a2f614789
:var_306a2f614789_end
jmp >var_73eaac5c941f_end
:var_73eaac5c941f
0
:var_73eaac5c941f_end
wmem >var_73eaac5c941f &<
set reg0 >var_73eaac5c941f
rmem reg0 reg0
wmem >var_306a2f614789 reg0
jmp >var_a66d97bb70b2_end
:var_a66d97bb70b2
:var_a66d97bb70b2_end
jmp >var_dea33ced0b82_end
:var_dea33ced0b82
0
:var_dea33ced0b82_end
wmem >var_dea33ced0b82 &>
set reg0 >var_dea33ced0b82
rmem reg0 reg0
wmem >var_a66d97bb70b2 reg0
jmp >var_cb29be3e2309_end
:var_cb29be3e2309
:var_cb29be3e2309_end
jmp >var_a593e2c19f43_end
:var_a593e2c19f43
0
:var_a593e2c19f43_end
wmem >var_a593e2c19f43 &,
set reg0 >var_a593e2c19f43
rmem reg0 reg0
wmem >var_cb29be3e2309 reg0
jmp >var_b2d8106bac17_end
:var_b2d8106bac17
:var_b2d8106bac17_end
jmp >var_0efe0ba470c9_end
:var_0efe0ba470c9
0
:var_0efe0ba470c9_end
wmem >var_0efe0ba470c9 &.
set reg0 >var_0efe0ba470c9
rmem reg0 reg0
wmem >var_b2d8106bac17 reg0
jmp >var_bccf75b1a2f5_end
:var_bccf75b1a2f5
:var_bccf75b1a2f5_end
call >input
wmem >var_bccf75b1a2f5 reg0
jmp >var_9fe7888a4eb4_end
:var_9fe7888a4eb4
:var_9fe7888a4eb4_end
rmem reg0 >var_bccf75b1a2f5
call >str_len
wmem >var_9fe7888a4eb4 reg0
jmp >var_3262b7288226_end
:var_3262b7288226
:var_3262b7288226_end
set reg0 0
wmem >var_3262b7288226 reg0
:for_e35c7ff39e2e_begin
rmem reg0 >var_3262b7288226
rmem reg1 >var_9fe7888a4eb4
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_e35c7ff39e2e_end
jmp >var_293c439fd1ae_end
:var_293c439fd1ae
:var_293c439fd1ae_end
rmem reg0 >var_bccf75b1a2f5
rmem reg1 >var_3262b7288226
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_293c439fd1ae reg0
rmem reg0 >var_293c439fd1ae
rmem reg1 >var_5bcc413b0667
eq reg0 reg0 reg1
jf reg0 >end_4e95f08a17b9
jmp >var_d373ae50d1bb_end
:var_d373ae50d1bb
&m
&e
&m
32
&r
&e
&g
&0
32
&1
&6
&3
&8
&3
0
:var_d373ae50d1bb_end
wmem >var_d373ae50d1bb &r
set reg0 >var_d373ae50d1bb
call >println
jmp >var_88bf481d3e71_end
:var_88bf481d3e71
&m
&e
&m
32
&r
&e
&g
&1
32
&r
&e
&g
&0
0
:var_88bf481d3e71_end
wmem >var_88bf481d3e71 &r
set reg0 >var_88bf481d3e71
call >println
jmp >var_e8c5bbdda25f_end
:var_e8c5bbdda25f
&d
&d
32
&r
&e
&g
&1
32
&1
0
:var_e8c5bbdda25f_end
wmem >var_e8c5bbdda25f &a
set reg0 >var_e8c5bbdda25f
call >println
jmp >var_0224e5ac3645_end
:var_0224e5ac3645
&m
&e
&m
32
&r
&e
&g
&0
32
&r
&e
&g
&1
0
:var_0224e5ac3645_end
wmem >var_0224e5ac3645 &w
set reg0 >var_0224e5ac3645
call >println
:end_4e95f08a17b9
rmem reg0 >var_293c439fd1ae
rmem reg1 >var_d2e7896d5542
eq reg0 reg0 reg1
jf reg0 >end_9225e2eb4920
jmp >var_ef5a5eb96a42_end
:var_ef5a5eb96a42
&m
&e
&m
32
&r
&e
&g
&0
32
&1
&6
&3
&8
&3
0
:var_ef5a5eb96a42_end
wmem >var_ef5a5eb96a42 &r
set reg0 >var_ef5a5eb96a42
call >println
jmp >var_3dc140e17c7e_end
:var_3dc140e17c7e
&m
&e
&m
32
&r
&e
&g
&1
32
&r
&e
&g
&0
0
:var_3dc140e17c7e_end
wmem >var_3dc140e17c7e &r
set reg0 >var_3dc140e17c7e
call >println
jmp >var_460defba2b04_end
:var_460defba2b04
&d
&d
32
&r
&e
&g
&1
32
&3
&2
&7
&6
&7
0
:var_460defba2b04_end
wmem >var_460defba2b04 &a
set reg0 >var_460defba2b04
call >println
jmp >var_c411c0ae66e2_end
:var_c411c0ae66e2
&m
&e
&m
32
&r
&e
&g
&0
32
&r
&e
&g
&1
0
:var_c411c0ae66e2_end
wmem >var_c411c0ae66e2 &w
set reg0 >var_c411c0ae66e2
call >println
:end_9225e2eb4920
rmem reg0 >var_293c439fd1ae
rmem reg1 >var_b00ba27f9750
eq reg0 reg0 reg1
jf reg0 >end_90edd1d13490
jmp >var_b2513aaa144a_end
:var_b2513aaa144a
&e
&f
&t
32
&b
&r
&a
&c
&k
&e
&t
0
:var_b2513aaa144a_end
wmem >var_b2513aaa144a &l
set reg0 >var_b2513aaa144a
call >println
:end_90edd1d13490
rmem reg0 >var_293c439fd1ae
rmem reg1 >var_2c589211e29b
eq reg0 reg0 reg1
jf reg0 >end_c5651e0a1c00
jmp >var_fb2ccc42e259_end
:var_fb2ccc42e259
&i
&g
&h
&t
32
&b
&r
&a
&c
&k
&e
&t
0
:var_fb2ccc42e259_end
wmem >var_fb2ccc42e259 &r
set reg0 >var_fb2ccc42e259
call >println
:end_c5651e0a1c00
rmem reg0 >var_293c439fd1ae
rmem reg1 >var_306a2f614789
eq reg0 reg0 reg1
jf reg0 >end_4d9fdd6696b3
jmp >var_3b683c7c5a56_end
:var_3b683c7c5a56
&m
&e
&m
32
&r
&e
&g
&0
32
&1
&6
&3
&8
&3
0
:var_3b683c7c5a56_end
wmem >var_3b683c7c5a56 &r
set reg0 >var_3b683c7c5a56
call >println
jmp >var_9ec471e87ab3_end
:var_9ec471e87ab3
&d
&d
32
&r
&e
&g
&0
32
&3
&2
&7
&6
&7
0
:var_9ec471e87ab3_end
wmem >var_9ec471e87ab3 &a
set reg0 >var_9ec471e87ab3
call >println
jmp >var_acdf1d1abde1_end
:var_acdf1d1abde1
&m
&e
&m
32
&1
&6
&3
&8
&3
32
&r
&e
&g
&0
0
:var_acdf1d1abde1_end
wmem >var_acdf1d1abde1 &w
set reg0 >var_acdf1d1abde1
call >println
:end_4d9fdd6696b3
rmem reg0 >var_293c439fd1ae
rmem reg1 >var_a66d97bb70b2
eq reg0 reg0 reg1
jf reg0 >end_6e20d2d51b29
jmp >var_daaf5fb19fda_end
:var_daaf5fb19fda
&m
&e
&m
32
&r
&e
&g
&0
32
&1
&6
&3
&8
&3
0
:var_daaf5fb19fda_end
wmem >var_daaf5fb19fda &r
set reg0 >var_daaf5fb19fda
call >println
jmp >var_cadb66375ac3_end
:var_cadb66375ac3
&d
&d
32
&r
&e
&g
&0
32
&1
0
:var_cadb66375ac3_end
wmem >var_cadb66375ac3 &a
set reg0 >var_cadb66375ac3
call >println
jmp >var_1db4af7f5828_end
:var_1db4af7f5828
&m
&e
&m
32
&1
&6
&3
&8
&3
32
&r
&e
&g
&0
0
:var_1db4af7f5828_end
wmem >var_1db4af7f5828 &w
set reg0 >var_1db4af7f5828
call >println
:end_6e20d2d51b29
rmem reg0 >var_293c439fd1ae
rmem reg1 >var_cb29be3e2309
eq reg0 reg0 reg1
jf reg0 >end_3e437626822b
jmp >var_81ebf037bbec_end
:var_81ebf037bbec
&m
&e
&m
32
&r
&e
&g
&0
32
&1
&6
&3
&8
&3
0
:var_81ebf037bbec_end
wmem >var_81ebf037bbec &r
set reg0 >var_81ebf037bbec
call >println
jmp >var_9fd6a33c8050_end
:var_9fd6a33c8050
&n
32
&r
&e
&g
&1
0
:var_9fd6a33c8050_end
wmem >var_9fd6a33c8050 &i
set reg0 >var_9fd6a33c8050
call >println
jmp >var_e395e771b383_end
:var_e395e771b383
&m
&e
&m
32
&r
&e
&g
&0
32
&r
&e
&g
&1
0
:var_e395e771b383_end
wmem >var_e395e771b383 &w
set reg0 >var_e395e771b383
call >println
:end_3e437626822b
rmem reg0 >var_293c439fd1ae
rmem reg1 >var_b2d8106bac17
eq reg0 reg0 reg1
jf reg0 >end_f74e506e0bb1
jmp >var_8bd075043ffc_end
:var_8bd075043ffc
&m
&e
&m
32
&r
&e
&g
&0
32
&1
&6
&3
&8
&3
0
:var_8bd075043ffc_end
wmem >var_8bd075043ffc &r
set reg0 >var_8bd075043ffc
call >println
jmp >var_97136a8c844f_end
:var_97136a8c844f
&m
&e
&m
32
&r
&e
&g
&1
32
&r
&e
&g
&0
0
:var_97136a8c844f_end
wmem >var_97136a8c844f &r
set reg0 >var_97136a8c844f
call >println
jmp >var_196f3be8a284_end
:var_196f3be8a284
&u
&t
32
&r
&e
&g
&1
0
:var_196f3be8a284_end
wmem >var_196f3be8a284 &o
set reg0 >var_196f3be8a284
call >println
:end_f74e506e0bb1
rmem reg0 >var_3262b7288226
add reg0 reg0 1
wmem >var_3262b7288226 reg0
jmp >for_e35c7ff39e2e_begin
:for_e35c7ff39e2e_end
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

