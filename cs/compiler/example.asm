jmp >str_len_end
:str_len
jmp >var_1eb861f9-e5e2-4fd4-9415-209ebab986ab_end
:var_1eb861f9-e5e2-4fd4-9415-209ebab986ab
:var_1eb861f9-e5e2-4fd4-9415-209ebab986ab_end
wmem >var_1eb861f9-e5e2-4fd4-9415-209ebab986ab reg0
jmp >var_ae1f11cf-2907-40ca-92fb-c998e754c24e_end
:var_ae1f11cf-2907-40ca-92fb-c998e754c24e
:var_ae1f11cf-2907-40ca-92fb-c998e754c24e_end
set reg0 0
wmem >var_ae1f11cf-2907-40ca-92fb-c998e754c24e reg0
:while_c8486859-306a-4a73-bda2-c771da0f00c8_begin
rmem reg0 >var_1eb861f9-e5e2-4fd4-9415-209ebab986ab
rmem reg0 reg0
jf reg0 >while_c8486859-306a-4a73-bda2-c771da0f00c8_end
rmem reg0 >var_1eb861f9-e5e2-4fd4-9415-209ebab986ab
add reg0 reg0 1
wmem >var_1eb861f9-e5e2-4fd4-9415-209ebab986ab reg0
rmem reg0 >var_ae1f11cf-2907-40ca-92fb-c998e754c24e
add reg0 reg0 1
wmem >var_ae1f11cf-2907-40ca-92fb-c998e754c24e reg0
jmp >while_c8486859-306a-4a73-bda2-c771da0f00c8_begin
:while_c8486859-306a-4a73-bda2-c771da0f00c8_end
rmem reg0 >var_ae1f11cf-2907-40ca-92fb-c998e754c24e
ret
ret
:str_len_end
jmp >println_end
:println
jmp >var_47874741-59b7-4848-b162-37b2a6ce73cc_end
:var_47874741-59b7-4848-b162-37b2a6ce73cc
:var_47874741-59b7-4848-b162-37b2a6ce73cc_end
wmem >var_47874741-59b7-4848-b162-37b2a6ce73cc reg0
rmem reg0 >var_47874741-59b7-4848-b162-37b2a6ce73cc
call >print
set reg0 10
out reg0
ret
:println_end
jmp >print_end
:print
jmp >var_7f152077-72e4-4a7a-be42-cc070af46411_end
:var_7f152077-72e4-4a7a-be42-cc070af46411
:var_7f152077-72e4-4a7a-be42-cc070af46411_end
wmem >var_7f152077-72e4-4a7a-be42-cc070af46411 reg0
:while_71b4ecf4-fb86-47b9-a505-f69602f50423_begin
rmem reg0 >var_7f152077-72e4-4a7a-be42-cc070af46411
rmem reg0 reg0
jf reg0 >while_71b4ecf4-fb86-47b9-a505-f69602f50423_end
rmem reg0 >var_7f152077-72e4-4a7a-be42-cc070af46411
rmem reg0 reg0
out reg0
rmem reg0 >var_7f152077-72e4-4a7a-be42-cc070af46411
add reg0 reg0 1
wmem >var_7f152077-72e4-4a7a-be42-cc070af46411 reg0
jmp >while_71b4ecf4-fb86-47b9-a505-f69602f50423_begin
:while_71b4ecf4-fb86-47b9-a505-f69602f50423_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_e8c43b45-e244-450c-9595-171d5006aba2_end
:var_e8c43b45-e244-450c-9595-171d5006aba2
:var_e8c43b45-e244-450c-9595-171d5006aba2_end
wmem >var_e8c43b45-e244-450c-9595-171d5006aba2 reg0
rmem reg0 >var_e8c43b45-e244-450c-9595-171d5006aba2
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_a74cb01c-490c-40fa-8ecc-14cc1aaea971
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_a74cb01c-490c-40fa-8ecc-14cc1aaea971
jmp >var_fc6dcf41-1d7f-4552-83ea-449d6b6c769d_end
:var_fc6dcf41-1d7f-4552-83ea-449d6b6c769d
:var_fc6dcf41-1d7f-4552-83ea-449d6b6c769d_end
jmp >var_d8c41153-e12c-4f29-a8ea-31d534831f62_end
:var_d8c41153-e12c-4f29-a8ea-31d534831f62
:var_d8c41153-e12c-4f29-a8ea-31d534831f62_end
set reg0 0
wmem >var_d8c41153-e12c-4f29-a8ea-31d534831f62 reg0
:while_6c4f1068-12bb-4c87-b745-23456d146f5a_begin
rmem reg0 >var_e8c43b45-e244-450c-9595-171d5006aba2
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_6c4f1068-12bb-4c87-b745-23456d146f5a_end
rmem reg0 >var_e8c43b45-e244-450c-9595-171d5006aba2
set reg1 10
mod reg0 reg0 reg1
wmem >var_fc6dcf41-1d7f-4552-83ea-449d6b6c769d reg0
rmem reg0 >var_fc6dcf41-1d7f-4552-83ea-449d6b6c769d
rmem reg0 >var_fc6dcf41-1d7f-4552-83ea-449d6b6c769d
push reg0
rmem reg0 >var_d8c41153-e12c-4f29-a8ea-31d534831f62
add reg0 reg0 1
wmem >var_d8c41153-e12c-4f29-a8ea-31d534831f62 reg0
rmem reg0 >var_e8c43b45-e244-450c-9595-171d5006aba2
set reg1 10
call >divide
wmem >var_e8c43b45-e244-450c-9595-171d5006aba2 reg0
jmp >while_6c4f1068-12bb-4c87-b745-23456d146f5a_begin
:while_6c4f1068-12bb-4c87-b745-23456d146f5a_end
rmem reg0 >var_e8c43b45-e244-450c-9595-171d5006aba2
set reg1 10
mod reg0 reg0 reg1
wmem >var_fc6dcf41-1d7f-4552-83ea-449d6b6c769d reg0
rmem reg0 >var_fc6dcf41-1d7f-4552-83ea-449d6b6c769d
rmem reg0 >var_fc6dcf41-1d7f-4552-83ea-449d6b6c769d
push reg0
rmem reg0 >var_d8c41153-e12c-4f29-a8ea-31d534831f62
add reg0 reg0 1
wmem >var_d8c41153-e12c-4f29-a8ea-31d534831f62 reg0
jmp >var_d451c9a0-ebe9-419d-a716-e0aea9133cd2_end
:var_d451c9a0-ebe9-419d-a716-e0aea9133cd2
:var_d451c9a0-ebe9-419d-a716-e0aea9133cd2_end
set reg0 0
wmem >var_d451c9a0-ebe9-419d-a716-e0aea9133cd2 reg0
:while_8bc43ce9-250b-42ad-80fd-641ca81791e9_begin
rmem reg0 >var_d451c9a0-ebe9-419d-a716-e0aea9133cd2
rmem reg1 >var_d8c41153-e12c-4f29-a8ea-31d534831f62
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_8bc43ce9-250b-42ad-80fd-641ca81791e9_end
rmem reg0 >var_d451c9a0-ebe9-419d-a716-e0aea9133cd2
set reg1 1
add reg0 reg0 reg1
wmem >var_d451c9a0-ebe9-419d-a716-e0aea9133cd2 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_8bc43ce9-250b-42ad-80fd-641ca81791e9_begin
:while_8bc43ce9-250b-42ad-80fd-641ca81791e9_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_772bff72-4088-4017-9758-b75c58fe9804_end
:var_772bff72-4088-4017-9758-b75c58fe9804
:var_772bff72-4088-4017-9758-b75c58fe9804_end
set reg0 0
wmem >var_772bff72-4088-4017-9758-b75c58fe9804 reg0
:while_ab5acfcb-b576-44b6-83fe-abea2e0269b6_begin
rmem reg0 >var_772bff72-4088-4017-9758-b75c58fe9804
rmem reg0 reg0
jf reg0 >while_ab5acfcb-b576-44b6-83fe-abea2e0269b6_end
rmem reg0 >var_772bff72-4088-4017-9758-b75c58fe9804
add reg0 reg0 1
wmem >var_772bff72-4088-4017-9758-b75c58fe9804 reg0
rmem reg0 >var_772bff72-4088-4017-9758-b75c58fe9804
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_ab5acfcb-b576-44b6-83fe-abea2e0269b6_begin
:while_ab5acfcb-b576-44b6-83fe-abea2e0269b6_end
ret
:dump_mem_end
call >do_stuff
jmp >do_stuff_end
:do_stuff
set reg0 1000
set reg1 65
wmem reg0 reg1
jmp >var_668af70e-2a17-4c35-917e-50d4e5cf930d_end
:var_668af70e-2a17-4c35-917e-50d4e5cf930d
:var_668af70e-2a17-4c35-917e-50d4e5cf930d_end
set reg0 1000
wmem >var_668af70e-2a17-4c35-917e-50d4e5cf930d reg0
rmem reg0 >var_668af70e-2a17-4c35-917e-50d4e5cf930d
rmem reg0 reg0
out reg0
ret
:do_stuff_end

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
