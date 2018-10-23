jmp >str_equal_end
:str_equal
jmp >var_9b815381ebc8_end
:var_9b815381ebc8
:var_9b815381ebc8_end
jmp >var_cfd71eba09fa_end
:var_cfd71eba09fa
:var_cfd71eba09fa_end
wmem >var_9b815381ebc8 reg0
wmem >var_cfd71eba09fa reg1
jmp >var_125d25e5e2ae_end
:var_125d25e5e2ae
:var_125d25e5e2ae_end
rmem reg0 >var_9b815381ebc8
call >str_len
wmem >var_125d25e5e2ae reg0
jmp >var_45743eef5ac8_end
:var_45743eef5ac8
:var_45743eef5ac8_end
rmem reg0 >var_cfd71eba09fa
call >str_len
wmem >var_45743eef5ac8 reg0
rmem reg0 >var_125d25e5e2ae
rmem reg1 >var_45743eef5ac8
eq reg0 reg0 reg1
call >not
jf reg0 >end_bdebf65a4aab
set reg0 0
ret
:end_bdebf65a4aab
jmp >var_6ccba992e283_end
:var_6ccba992e283
:var_6ccba992e283_end
set reg0 0
wmem >var_6ccba992e283 reg0
:for_07c6f4e3e1e0_begin
rmem reg0 >var_6ccba992e283
rmem reg1 >var_125d25e5e2ae
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_07c6f4e3e1e0_end
jmp >var_60672ec28433_end
:var_60672ec28433
:var_60672ec28433_end
rmem reg0 >var_9b815381ebc8
rmem reg1 >var_6ccba992e283
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_60672ec28433 reg0
jmp >var_2a6cf02b5768_end
:var_2a6cf02b5768
:var_2a6cf02b5768_end
rmem reg0 >var_cfd71eba09fa
rmem reg1 >var_6ccba992e283
add reg0 reg0 reg1
rmem reg0 reg0
wmem >var_2a6cf02b5768 reg0
rmem reg0 >var_60672ec28433
rmem reg1 >var_2a6cf02b5768
eq reg0 reg0 reg1
call >not
jf reg0 >end_dbee5cd54979
set reg0 0
ret
:end_dbee5cd54979
rmem reg0 >var_6ccba992e283
add reg0 reg0 1
wmem >var_6ccba992e283 reg0
jmp >for_07c6f4e3e1e0_begin
:for_07c6f4e3e1e0_end
set reg0 1
ret
ret
:str_equal_end
set reg0 >str_equal
jmp >alloc_end
:alloc
jmp >var_02519a465f3e_end
:var_02519a465f3e
:var_02519a465f3e_end
set reg0 16382
wmem >var_02519a465f3e reg0
:while_d99ea6657a8b_begin
rmem reg0 >var_02519a465f3e
rmem reg0 reg0
call >not
jf reg0 >while_d99ea6657a8b_end
rmem reg0 >var_02519a465f3e
set reg1 1
call >subtract
wmem >var_02519a465f3e reg0
jmp >while_d99ea6657a8b_begin
:while_d99ea6657a8b_end
rmem reg0 >var_02519a465f3e
set reg1 2
add reg0 reg0 reg1
wmem >var_02519a465f3e reg0
rmem reg0 >var_02519a465f3e
ret
ret
:alloc_end
set reg0 >alloc
jmp >alloc_chunk_end
:alloc_chunk
jmp >var_19e3da695404_end
:var_19e3da695404
:var_19e3da695404_end
wmem >var_19e3da695404 reg0
jmp >var_aa69822f69a3_end
:var_aa69822f69a3
:var_aa69822f69a3_end
call >alloc
wmem >var_aa69822f69a3 reg0
jmp >var_e38216b0b1e2_end
:var_e38216b0b1e2
:var_e38216b0b1e2_end
rmem reg0 >var_aa69822f69a3
rmem reg1 >var_19e3da695404
add reg0 reg0 reg1
wmem >var_e38216b0b1e2 reg0
rmem reg0 >var_e38216b0b1e2
set reg1 32767
wmem reg0 reg1
rmem reg0 >var_aa69822f69a3
ret
ret
:alloc_chunk_end
set reg0 >alloc_chunk
jmp >mem_cp_end
:mem_cp
jmp >var_cd5788a40e1a_end
:var_cd5788a40e1a
:var_cd5788a40e1a_end
jmp >var_ba548a47b58c_end
:var_ba548a47b58c
:var_ba548a47b58c_end
jmp >var_9af95d9237c1_end
:var_9af95d9237c1
:var_9af95d9237c1_end
wmem >var_cd5788a40e1a reg0
wmem >var_ba548a47b58c reg1
wmem >var_9af95d9237c1 reg2
jmp >var_c8383aada45c_end
:var_c8383aada45c
:var_c8383aada45c_end
set reg0 0
wmem >var_c8383aada45c reg0
:while_7d7b96b04c95_begin
rmem reg0 >var_c8383aada45c
rmem reg1 >var_9af95d9237c1
gt reg0 reg0 reg1
call >not
jf reg0 >while_7d7b96b04c95_end
jmp >var_4e30d9866c92_end
:var_4e30d9866c92
:var_4e30d9866c92_end
rmem reg0 >var_cd5788a40e1a
rmem reg1 >var_c8383aada45c
add reg0 reg0 reg1
wmem >var_4e30d9866c92 reg0
jmp >var_223faca8a6c0_end
:var_223faca8a6c0
:var_223faca8a6c0_end
rmem reg0 >var_ba548a47b58c
rmem reg1 >var_c8383aada45c
add reg0 reg0 reg1
wmem >var_223faca8a6c0 reg0
rmem reg0 >var_223faca8a6c0
rmem reg1 >var_4e30d9866c92
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_c8383aada45c
add reg0 reg0 1
wmem >var_c8383aada45c reg0
jmp >while_7d7b96b04c95_begin
:while_7d7b96b04c95_end
ret
:mem_cp_end
set reg0 >mem_cp
jmp >str_len_end
:str_len
jmp >var_742858248b8c_end
:var_742858248b8c
:var_742858248b8c_end
wmem >var_742858248b8c reg0
jmp >var_b005db022a41_end
:var_b005db022a41
:var_b005db022a41_end
set reg0 0
wmem >var_b005db022a41 reg0
:while_ac486fbdce18_begin
rmem reg0 >var_742858248b8c
rmem reg0 reg0
jf reg0 >while_ac486fbdce18_end
rmem reg0 >var_742858248b8c
add reg0 reg0 1
wmem >var_742858248b8c reg0
rmem reg0 >var_b005db022a41
add reg0 reg0 1
wmem >var_b005db022a41 reg0
jmp >while_ac486fbdce18_begin
:while_ac486fbdce18_end
rmem reg0 >var_b005db022a41
ret
ret
:str_len_end
set reg0 >str_len
jmp >str_cat_end
:str_cat
jmp >var_bcf5101c406a_end
:var_bcf5101c406a
:var_bcf5101c406a_end
jmp >var_ae1e41b2b725_end
:var_ae1e41b2b725
:var_ae1e41b2b725_end
wmem >var_bcf5101c406a reg0
wmem >var_ae1e41b2b725 reg1
jmp >var_1a7dde9a230a_end
:var_1a7dde9a230a
:var_1a7dde9a230a_end
rmem reg0 >var_bcf5101c406a
call >str_len
wmem >var_1a7dde9a230a reg0
jmp >var_684c18d07791_end
:var_684c18d07791
:var_684c18d07791_end
rmem reg0 >var_ae1e41b2b725
call >str_len
wmem >var_684c18d07791 reg0
jmp >var_042a8d417fed_end
:var_042a8d417fed
:var_042a8d417fed_end
call >alloc
wmem >var_042a8d417fed reg0
rmem reg0 >var_bcf5101c406a
rmem reg1 >var_042a8d417fed
rmem reg2 >var_1a7dde9a230a
call >mem_cp
jmp >var_f226cb8507f7_end
:var_f226cb8507f7
:var_f226cb8507f7_end
rmem reg0 >var_042a8d417fed
rmem reg1 >var_1a7dde9a230a
add reg0 reg0 reg1
wmem >var_f226cb8507f7 reg0
rmem reg0 >var_684c18d07791
add reg0 reg0 1
wmem >var_684c18d07791 reg0
rmem reg0 >var_ae1e41b2b725
rmem reg1 >var_f226cb8507f7
rmem reg2 >var_684c18d07791
call >mem_cp
rmem reg0 >var_042a8d417fed
ret
ret
:str_cat_end
set reg0 >str_cat
jmp >flip_str_end
:flip_str
jmp >var_f6583f76e7a3_end
:var_f6583f76e7a3
:var_f6583f76e7a3_end
wmem >var_f6583f76e7a3 reg0
jmp >var_1e32da871f12_end
:var_1e32da871f12
:var_1e32da871f12_end
call >alloc
wmem >var_1e32da871f12 reg0
jmp >var_3da62c84c663_end
:var_3da62c84c663
:var_3da62c84c663_end
rmem reg0 >var_f6583f76e7a3
call >str_len
wmem >var_3da62c84c663 reg0
jmp >var_bd41b7e62688_end
:var_bd41b7e62688
:var_bd41b7e62688_end
set reg0 0
wmem >var_bd41b7e62688 reg0
:while_49fb126f7e24_begin
rmem reg0 >var_bd41b7e62688
rmem reg1 >var_3da62c84c663
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_49fb126f7e24_end
jmp >var_c0d4e0695b2c_end
:var_c0d4e0695b2c
:var_c0d4e0695b2c_end
rmem reg0 >var_f6583f76e7a3
rmem reg1 >var_bd41b7e62688
add reg0 reg0 reg1
wmem >var_c0d4e0695b2c reg0
rmem reg0 >var_c0d4e0695b2c
rmem reg0 reg0
rmem reg0 >var_c0d4e0695b2c
rmem reg0 reg0
push reg0
rmem reg0 >var_bd41b7e62688
add reg0 reg0 1
wmem >var_bd41b7e62688 reg0
jmp >while_49fb126f7e24_begin
:while_49fb126f7e24_end
jmp >var_9601820a112c_end
:var_9601820a112c
:var_9601820a112c_end
pop reg0
wmem >var_9601820a112c reg0
set reg0 0
wmem >var_bd41b7e62688 reg0
:while_c8ad531a47d1_begin
rmem reg0 >var_bd41b7e62688
rmem reg1 >var_3da62c84c663
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_c8ad531a47d1_end
jmp >var_569299165716_end
:var_569299165716
:var_569299165716_end
rmem reg0 >var_1e32da871f12
rmem reg1 >var_bd41b7e62688
add reg0 reg0 reg1
wmem >var_569299165716 reg0
rmem reg0 >var_569299165716
rmem reg1 >var_9601820a112c
wmem reg0 reg1
rmem reg0 >var_bd41b7e62688
add reg0 reg0 1
wmem >var_bd41b7e62688 reg0
pop reg0
wmem >var_9601820a112c reg0
jmp >while_c8ad531a47d1_begin
:while_c8ad531a47d1_end
rmem reg0 >var_9601820a112c
rmem reg0 >var_9601820a112c
push reg0
rmem reg0 >var_1e32da871f12
ret
ret
:flip_str_end
set reg0 >flip_str
jmp >input_end
:input
jmp >var_a2ad33de2e5e_end
:var_a2ad33de2e5e
:var_a2ad33de2e5e_end
set reg0 16384
wmem >var_a2ad33de2e5e reg0
jmp >var_38718347dac4_end
:var_38718347dac4
:var_38718347dac4_end
in reg0
wmem >var_38718347dac4 reg0
jmp >var_366d106a6769_end
:var_366d106a6769
:var_366d106a6769_end
rmem reg0 >var_38718347dac4
set reg1 10
eq reg0 reg0 reg1
wmem >var_366d106a6769 reg0
:while_5a0d81280e6a_begin
rmem reg0 >var_366d106a6769
rmem reg1 >var_38718347dac4
call >and
call >not
jf reg0 >while_5a0d81280e6a_end
rmem reg0 >var_a2ad33de2e5e
rmem reg1 >var_38718347dac4
wmem reg0 reg1
rmem reg0 >var_a2ad33de2e5e
add reg0 reg0 1
wmem >var_a2ad33de2e5e reg0
in reg0
wmem >var_38718347dac4 reg0
rmem reg0 >var_38718347dac4
set reg1 10
eq reg0 reg0 reg1
wmem >var_366d106a6769 reg0
jmp >while_5a0d81280e6a_begin
:while_5a0d81280e6a_end
rmem reg0 >var_a2ad33de2e5e
set reg1 0
wmem reg0 reg1
jmp >var_162de8f6c520_end
:var_162de8f6c520
:var_162de8f6c520_end
call >alloc
wmem >var_162de8f6c520 reg0
jmp >var_5361024a4d59_end
:var_5361024a4d59
:var_5361024a4d59_end
set reg0 16384
call >str_len
wmem >var_5361024a4d59 reg0
set reg0 16384
rmem reg1 >var_162de8f6c520
rmem reg2 >var_5361024a4d59
call >mem_cp
rmem reg0 >var_162de8f6c520
ret
ret
:input_end
set reg0 >input
jmp >print_end
:print
jmp >var_a4d9569c130d_end
:var_a4d9569c130d
:var_a4d9569c130d_end
wmem >var_a4d9569c130d reg0
:while_ec60d02e003b_begin
rmem reg0 >var_a4d9569c130d
rmem reg0 reg0
jf reg0 >while_ec60d02e003b_end
rmem reg0 >var_a4d9569c130d
rmem reg0 reg0
out reg0
rmem reg0 >var_a4d9569c130d
add reg0 reg0 1
wmem >var_a4d9569c130d reg0
jmp >while_ec60d02e003b_begin
:while_ec60d02e003b_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_73b08637214b_end
:var_73b08637214b
:var_73b08637214b_end
wmem >var_73b08637214b reg0
rmem reg0 >var_73b08637214b
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >print_number_end
:print_number
jmp >var_9cd390eec786_end
:var_9cd390eec786
:var_9cd390eec786_end
wmem >var_9cd390eec786 reg0
rmem reg0 >var_9cd390eec786
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_addc4b370a1d
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_addc4b370a1d
jmp >var_bc5c07aa6204_end
:var_bc5c07aa6204
:var_bc5c07aa6204_end
jmp >var_edd6da65b823_end
:var_edd6da65b823
:var_edd6da65b823_end
set reg0 0
wmem >var_edd6da65b823 reg0
:while_83e575663f12_begin
rmem reg0 >var_9cd390eec786
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_83e575663f12_end
rmem reg0 >var_9cd390eec786
set reg1 10
mod reg0 reg0 reg1
wmem >var_bc5c07aa6204 reg0
rmem reg0 >var_bc5c07aa6204
rmem reg0 >var_bc5c07aa6204
push reg0
rmem reg0 >var_edd6da65b823
add reg0 reg0 1
wmem >var_edd6da65b823 reg0
rmem reg0 >var_9cd390eec786
set reg1 10
call >divide
wmem >var_9cd390eec786 reg0
jmp >while_83e575663f12_begin
:while_83e575663f12_end
rmem reg0 >var_9cd390eec786
set reg1 10
mod reg0 reg0 reg1
wmem >var_bc5c07aa6204 reg0
rmem reg0 >var_bc5c07aa6204
rmem reg0 >var_bc5c07aa6204
push reg0
rmem reg0 >var_edd6da65b823
add reg0 reg0 1
wmem >var_edd6da65b823 reg0
jmp >var_46969a47b724_end
:var_46969a47b724
:var_46969a47b724_end
set reg0 0
wmem >var_46969a47b724 reg0
:while_5400f0d7d358_begin
rmem reg0 >var_46969a47b724
rmem reg1 >var_edd6da65b823
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_5400f0d7d358_end
rmem reg0 >var_46969a47b724
set reg1 1
add reg0 reg0 reg1
wmem >var_46969a47b724 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_5400f0d7d358_begin
:while_5400f0d7d358_end
ret
:print_number_end
set reg0 >print_number
jmp >dump_mem_end
:dump_mem
jmp >var_8586966a0b59_end
:var_8586966a0b59
:var_8586966a0b59_end
set reg0 0
wmem >var_8586966a0b59 reg0
:while_574a1e5d6913_begin
rmem reg0 >var_8586966a0b59
rmem reg0 reg0
jf reg0 >while_574a1e5d6913_end
rmem reg0 >var_8586966a0b59
add reg0 reg0 1
wmem >var_8586966a0b59 reg0
rmem reg0 >var_8586966a0b59
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_574a1e5d6913_begin
:while_574a1e5d6913_end
ret
:dump_mem_end
set reg0 >dump_mem
jmp >int_end
:int
jmp >var_a0dbc1261634_end
:var_a0dbc1261634
:var_a0dbc1261634_end
wmem >var_a0dbc1261634 reg0
jmp >var_9ff9b384658b_end
:var_9ff9b384658b
:var_9ff9b384658b_end
rmem reg0 >var_a0dbc1261634
call >flip_str
wmem >var_9ff9b384658b reg0
jmp >var_7cb1f47f0815_end
:var_7cb1f47f0815
:var_7cb1f47f0815_end
rmem reg0 >var_9ff9b384658b
call >str_len
wmem >var_7cb1f47f0815 reg0
rmem reg0 >var_7cb1f47f0815
set reg1 1
call >subtract
wmem >var_7cb1f47f0815 reg0
jmp >var_a82e564ae0ba_end
:var_a82e564ae0ba
:var_a82e564ae0ba_end
set reg0 0
wmem >var_a82e564ae0ba reg0
jmp >var_9c52e2840991_end
:var_9c52e2840991
:var_9c52e2840991_end
set reg0 0
wmem >var_9c52e2840991 reg0
:while_a86c9f62e37a_begin
rmem reg0 >var_a82e564ae0ba
rmem reg1 >var_7cb1f47f0815
gt reg0 reg0 reg1
call >not
jf reg0 >while_a86c9f62e37a_end
jmp >var_9f14a9997ea2_end
:var_9f14a9997ea2
:var_9f14a9997ea2_end
rmem reg0 >var_9ff9b384658b
rmem reg1 >var_a82e564ae0ba
add reg0 reg0 reg1
wmem >var_9f14a9997ea2 reg0
rmem reg0 >var_9f14a9997ea2
rmem reg0 reg0
wmem >var_9f14a9997ea2 reg0
jmp >var_77e09554d9fb_end
:var_77e09554d9fb
:var_77e09554d9fb_end
rmem reg0 >var_9f14a9997ea2
set reg1 47
gt reg0 reg0 reg1
wmem >var_77e09554d9fb reg0
jmp >var_ad93031b8f4c_end
:var_ad93031b8f4c
:var_ad93031b8f4c_end
rmem reg0 >var_9f14a9997ea2
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_ad93031b8f4c reg0
rmem reg0 >var_77e09554d9fb
rmem reg1 >var_ad93031b8f4c
call >and
jf reg0 >end_58aefb2921c7
jmp >var_d5132e81ac28_end
:var_d5132e81ac28
:var_d5132e81ac28_end
rmem reg0 >var_9f14a9997ea2
set reg1 48
call >subtract
wmem >var_d5132e81ac28 reg0
rmem reg0 >var_d5132e81ac28
call >print_number
set reg0 10
out reg0
jmp >var_79394b135db1_end
:var_79394b135db1
:var_79394b135db1_end
set reg0 0
wmem >var_79394b135db1 reg0
jmp >var_73904507e5c9_end
:var_73904507e5c9
:var_73904507e5c9_end
rmem reg0 >var_a82e564ae0ba
set reg1 1
call >subtract
wmem >var_73904507e5c9 reg0
:while_f58eda3ee410_begin
rmem reg0 >var_79394b135db1
rmem reg1 >var_73904507e5c9
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_f58eda3ee410_end
rmem reg0 >var_d5132e81ac28
set reg1 10
call >subtract
wmem >var_d5132e81ac28 reg0
rmem reg0 >var_79394b135db1
add reg0 reg0 1
wmem >var_79394b135db1 reg0
jmp >while_f58eda3ee410_begin
:while_f58eda3ee410_end
rmem reg0 >var_9c52e2840991
rmem reg1 >var_d5132e81ac28
add reg0 reg0 reg1
wmem >var_9c52e2840991 reg0
:end_58aefb2921c7
rmem reg0 >var_a82e564ae0ba
add reg0 reg0 1
wmem >var_a82e564ae0ba reg0
jmp >while_a86c9f62e37a_begin
:while_a86c9f62e37a_end
rmem reg0 >var_9c52e2840991
call >print_number
rmem reg0 >var_9c52e2840991
ret
ret
:int_end
set reg0 >int
jmp >main_end
:main
jmp >var_df26d9a8f01e_end
:var_df26d9a8f01e
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
:var_df26d9a8f01e_end
wmem >var_df26d9a8f01e &E
set reg0 >var_df26d9a8f01e
call >print
jmp >var_ebdd7d429804_end
:var_ebdd7d429804
:var_ebdd7d429804_end
call >input
wmem >var_ebdd7d429804 reg0
rmem reg0 >var_ebdd7d429804
jmp >var_bc2d97b17fcb_end
:var_bc2d97b17fcb
&x
&i
&t
0
:var_bc2d97b17fcb_end
wmem >var_bc2d97b17fcb &e
set reg1 >var_bc2d97b17fcb
call >str_equal
jf reg0 >end_c566bc957611
ret
:end_c566bc957611
jmp >var_bbc766517a84_end
:var_bbc766517a84
:var_bbc766517a84_end
call >alloc
wmem >var_bbc766517a84 reg0
rmem reg0 >var_bbc766517a84
rmem reg1 >var_ebdd7d429804
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_ebdd7d429804
add reg0 reg0 1
wmem >var_ebdd7d429804 reg0
rmem reg0 >var_ebdd7d429804
rmem reg1 >var_bbc766517a84
call >str_cat
jmp >var_139010d2f3d0_end
:var_139010d2f3d0
&y
0
:var_139010d2f3d0_end
wmem >var_139010d2f3d0 &a
set reg1 >var_139010d2f3d0
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

