jmp >print_end
:print
jmp >var_78ef9ad4-727d-498d-a51e-f5569b45cec4_end
:var_78ef9ad4-727d-498d-a51e-f5569b45cec4
:var_78ef9ad4-727d-498d-a51e-f5569b45cec4_end
wmem >var_78ef9ad4-727d-498d-a51e-f5569b45cec4 reg0
:while_25d78369-6afc-440e-aeb2-008966fba25b_begin
rmem reg0 >var_78ef9ad4-727d-498d-a51e-f5569b45cec4
rmem reg0 reg0
jf reg0 >while_25d78369-6afc-440e-aeb2-008966fba25b_end
rmem reg0 >var_78ef9ad4-727d-498d-a51e-f5569b45cec4
rmem reg0 reg0
rmem reg0 >var_78ef9ad4-727d-498d-a51e-f5569b45cec4
rmem reg0 reg0
call >print_number
rmem reg0 >var_78ef9ad4-727d-498d-a51e-f5569b45cec4
rmem reg0 reg0
out reg0
set reg0 10
out reg0
rmem reg0 >var_78ef9ad4-727d-498d-a51e-f5569b45cec4
set reg1 1
add reg0 reg0 reg1
wmem >var_78ef9ad4-727d-498d-a51e-f5569b45cec4 reg0
jmp >while_25d78369-6afc-440e-aeb2-008966fba25b_begin
:while_25d78369-6afc-440e-aeb2-008966fba25b_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_307bbeb6-0cd9-4ce3-b0cd-c26f534d9d79_end
:var_307bbeb6-0cd9-4ce3-b0cd-c26f534d9d79
:var_307bbeb6-0cd9-4ce3-b0cd-c26f534d9d79_end
wmem >var_307bbeb6-0cd9-4ce3-b0cd-c26f534d9d79 reg0
rmem reg0 >var_307bbeb6-0cd9-4ce3-b0cd-c26f534d9d79
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_3923ec9e-6e8e-4278-bdd8-2b3351c89055
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_3923ec9e-6e8e-4278-bdd8-2b3351c89055
jmp >var_cfe51f6b-d808-4299-9874-7f0554737afc_end
:var_cfe51f6b-d808-4299-9874-7f0554737afc
:var_cfe51f6b-d808-4299-9874-7f0554737afc_end
jmp >var_02d40c8d-71c3-442e-89d3-0a1133523fe9_end
:var_02d40c8d-71c3-442e-89d3-0a1133523fe9
:var_02d40c8d-71c3-442e-89d3-0a1133523fe9_end
set reg0 0
wmem >var_02d40c8d-71c3-442e-89d3-0a1133523fe9 reg0
:while_a5c9cf11-55c8-43a6-9912-e43451e0a697_begin
rmem reg0 >var_307bbeb6-0cd9-4ce3-b0cd-c26f534d9d79
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_a5c9cf11-55c8-43a6-9912-e43451e0a697_end
rmem reg0 >var_307bbeb6-0cd9-4ce3-b0cd-c26f534d9d79
set reg1 10
mod reg0 reg0 reg1
wmem >var_cfe51f6b-d808-4299-9874-7f0554737afc reg0
rmem reg0 >var_cfe51f6b-d808-4299-9874-7f0554737afc
rmem reg0 >var_cfe51f6b-d808-4299-9874-7f0554737afc
push reg0
rmem reg0 >var_02d40c8d-71c3-442e-89d3-0a1133523fe9
set reg1 1
add reg0 reg0 reg1
wmem >var_02d40c8d-71c3-442e-89d3-0a1133523fe9 reg0
rmem reg0 >var_307bbeb6-0cd9-4ce3-b0cd-c26f534d9d79
set reg1 10
call >divide
wmem >var_307bbeb6-0cd9-4ce3-b0cd-c26f534d9d79 reg0
jmp >while_a5c9cf11-55c8-43a6-9912-e43451e0a697_begin
:while_a5c9cf11-55c8-43a6-9912-e43451e0a697_end
rmem reg0 >var_307bbeb6-0cd9-4ce3-b0cd-c26f534d9d79
set reg1 10
mod reg0 reg0 reg1
wmem >var_cfe51f6b-d808-4299-9874-7f0554737afc reg0
rmem reg0 >var_cfe51f6b-d808-4299-9874-7f0554737afc
rmem reg0 >var_cfe51f6b-d808-4299-9874-7f0554737afc
push reg0
rmem reg0 >var_02d40c8d-71c3-442e-89d3-0a1133523fe9
set reg1 1
add reg0 reg0 reg1
wmem >var_02d40c8d-71c3-442e-89d3-0a1133523fe9 reg0
jmp >var_27b3e493-1b57-4988-bff9-366e73d75d19_end
:var_27b3e493-1b57-4988-bff9-366e73d75d19
:var_27b3e493-1b57-4988-bff9-366e73d75d19_end
set reg0 0
wmem >var_27b3e493-1b57-4988-bff9-366e73d75d19 reg0
:while_93d81010-15eb-4085-a9bd-2a216a35495f_begin
rmem reg0 >var_27b3e493-1b57-4988-bff9-366e73d75d19
rmem reg1 >var_02d40c8d-71c3-442e-89d3-0a1133523fe9
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_93d81010-15eb-4085-a9bd-2a216a35495f_end
rmem reg0 >var_27b3e493-1b57-4988-bff9-366e73d75d19
set reg1 1
add reg0 reg0 reg1
wmem >var_27b3e493-1b57-4988-bff9-366e73d75d19 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_93d81010-15eb-4085-a9bd-2a216a35495f_begin
:while_93d81010-15eb-4085-a9bd-2a216a35495f_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_aea1fc0d-79c2-4681-9054-039810623039_end
:var_aea1fc0d-79c2-4681-9054-039810623039
:var_aea1fc0d-79c2-4681-9054-039810623039_end
set reg0 0
wmem >var_aea1fc0d-79c2-4681-9054-039810623039 reg0
:while_9c5c1fd2-924e-41e7-8b30-461e2a96da94_begin
rmem reg0 >var_aea1fc0d-79c2-4681-9054-039810623039
rmem reg0 reg0
jf reg0 >while_9c5c1fd2-924e-41e7-8b30-461e2a96da94_end
rmem reg0 >var_aea1fc0d-79c2-4681-9054-039810623039
set reg1 1
add reg0 reg0 reg1
wmem >var_aea1fc0d-79c2-4681-9054-039810623039 reg0
rmem reg0 >var_aea1fc0d-79c2-4681-9054-039810623039
rmem reg0 reg0
rmem reg0 >var_aea1fc0d-79c2-4681-9054-039810623039
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_9c5c1fd2-924e-41e7-8b30-461e2a96da94_begin
:while_9c5c1fd2-924e-41e7-8b30-461e2a96da94_end
ret
:dump_mem_end
jmp >var_90013316-30d2-4575-b151-8d3cd6299c4b_end
:var_90013316-30d2-4575-b151-8d3cd6299c4b
:var_90013316-30d2-4575-b151-8d3cd6299c4b_end
jmp >var_ff3e5d30-56ca-42cc-ae98-7d1cbc40fc2b_end
:var_ff3e5d30-56ca-42cc-ae98-7d1cbc40fc2b
&e
&s
&t
:var_ff3e5d30-56ca-42cc-ae98-7d1cbc40fc2b_end
wmem >var_ff3e5d30-56ca-42cc-ae98-7d1cbc40fc2b &t
set reg0 >var_ff3e5d30-56ca-42cc-ae98-7d1cbc40fc2b
wmem >var_90013316-30d2-4575-b151-8d3cd6299c4b reg0
rmem reg0 >var_90013316-30d2-4575-b151-8d3cd6299c4b
rmem reg0 >var_90013316-30d2-4575-b151-8d3cd6299c4b
call >print

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

