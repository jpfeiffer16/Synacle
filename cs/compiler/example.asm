jmp >print_number_end
:print_number
jmp >var_2a88dc83-ccbf-4384-bc9a-c4c191b8a33b_end
:var_2a88dc83-ccbf-4384-bc9a-c4c191b8a33b
:var_2a88dc83-ccbf-4384-bc9a-c4c191b8a33b_end
wmem >var_2a88dc83-ccbf-4384-bc9a-c4c191b8a33b reg0
jmp >var_a1b75c58-5361-4481-bbfe-40bfc7b4fc7a_end
:var_a1b75c58-5361-4481-bbfe-40bfc7b4fc7a
:var_a1b75c58-5361-4481-bbfe-40bfc7b4fc7a_end
jmp >var_a5d79317-dbdd-4d9e-8f21-f310303ca107_end
:var_a5d79317-dbdd-4d9e-8f21-f310303ca107
:var_a5d79317-dbdd-4d9e-8f21-f310303ca107_end
set reg0 0
wmem >var_a5d79317-dbdd-4d9e-8f21-f310303ca107 reg0
:while_5ebc6777-2a13-4a89-b82c-e31d4b459a06_begin
rmem reg0 >var_2a88dc83-ccbf-4384-bc9a-c4c191b8a33b
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_5ebc6777-2a13-4a89-b82c-e31d4b459a06_end
rmem reg0 >var_2a88dc83-ccbf-4384-bc9a-c4c191b8a33b
set reg1 10
mod reg0 reg0 reg1
wmem >var_a1b75c58-5361-4481-bbfe-40bfc7b4fc7a reg0
rmem reg0 >var_a1b75c58-5361-4481-bbfe-40bfc7b4fc7a
rmem reg0 >var_a1b75c58-5361-4481-bbfe-40bfc7b4fc7a
push reg0
rmem reg0 >var_a5d79317-dbdd-4d9e-8f21-f310303ca107
set reg1 1
add reg0 reg0 reg1
wmem >var_a5d79317-dbdd-4d9e-8f21-f310303ca107 reg0
rmem reg0 >var_2a88dc83-ccbf-4384-bc9a-c4c191b8a33b
set reg1 10
call >divide
wmem >var_2a88dc83-ccbf-4384-bc9a-c4c191b8a33b reg0
jmp >while_5ebc6777-2a13-4a89-b82c-e31d4b459a06_begin
:while_5ebc6777-2a13-4a89-b82c-e31d4b459a06_end
rmem reg0 >var_2a88dc83-ccbf-4384-bc9a-c4c191b8a33b
set reg1 10
mod reg0 reg0 reg1
wmem >var_a1b75c58-5361-4481-bbfe-40bfc7b4fc7a reg0
rmem reg0 >var_a1b75c58-5361-4481-bbfe-40bfc7b4fc7a
rmem reg0 >var_a1b75c58-5361-4481-bbfe-40bfc7b4fc7a
push reg0
rmem reg0 >var_a5d79317-dbdd-4d9e-8f21-f310303ca107
set reg1 1
add reg0 reg0 reg1
wmem >var_a5d79317-dbdd-4d9e-8f21-f310303ca107 reg0
jmp >var_8b99cafb-64ae-44e2-b0d2-93dfc1f88f1b_end
:var_8b99cafb-64ae-44e2-b0d2-93dfc1f88f1b
:var_8b99cafb-64ae-44e2-b0d2-93dfc1f88f1b_end
set reg0 0
wmem >var_8b99cafb-64ae-44e2-b0d2-93dfc1f88f1b reg0
:while_1a7fc27c-c138-41a5-a530-3f275f1c4dc3_begin
rmem reg0 >var_8b99cafb-64ae-44e2-b0d2-93dfc1f88f1b
rmem reg1 >var_a5d79317-dbdd-4d9e-8f21-f310303ca107
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_1a7fc27c-c138-41a5-a530-3f275f1c4dc3_end
rmem reg0 >var_8b99cafb-64ae-44e2-b0d2-93dfc1f88f1b
set reg1 1
add reg0 reg0 reg1
wmem >var_8b99cafb-64ae-44e2-b0d2-93dfc1f88f1b reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_1a7fc27c-c138-41a5-a530-3f275f1c4dc3_begin
:while_1a7fc27c-c138-41a5-a530-3f275f1c4dc3_end
ret
:print_number_end
jmp >var_b4c438bb-7731-460c-8623-f2038f1c6a0a_end
:var_b4c438bb-7731-460c-8623-f2038f1c6a0a
:var_b4c438bb-7731-460c-8623-f2038f1c6a0a_end
set reg0 1
wmem >var_b4c438bb-7731-460c-8623-f2038f1c6a0a reg0
:while_ac4c08b4-ba8d-4e77-92c4-00e21358b8cc_begin
rmem reg0 >var_b4c438bb-7731-460c-8623-f2038f1c6a0a
set reg1 10
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_ac4c08b4-ba8d-4e77-92c4-00e21358b8cc_end
jmp >var_31aeb676-2b3c-449e-a51d-0f8bd658a0e8_end
:var_31aeb676-2b3c-449e-a51d-0f8bd658a0e8
:var_31aeb676-2b3c-449e-a51d-0f8bd658a0e8_end
jmp >var_48aa2f0a-e4d8-418c-9d81-443d97824eed_end
:var_48aa2f0a-e4d8-418c-9d81-443d97824eed
:var_48aa2f0a-e4d8-418c-9d81-443d97824eed_end
rmem reg0 >var_b4c438bb-7731-460c-8623-f2038f1c6a0a
set reg1 3
mod reg0 reg0 reg1
wmem >var_31aeb676-2b3c-449e-a51d-0f8bd658a0e8 reg0
rmem reg0 >var_b4c438bb-7731-460c-8623-f2038f1c6a0a
set reg1 5
mod reg0 reg0 reg1
wmem >var_48aa2f0a-e4d8-418c-9d81-443d97824eed reg0
rmem reg0 >var_31aeb676-2b3c-449e-a51d-0f8bd658a0e8
rmem reg1 >var_48aa2f0a-e4d8-418c-9d81-443d97824eed
call >and
jf reg0 >end_faf3a994-0d1a-47c8-a977-6b8cc3921ef6
rmem reg0 >var_b4c438bb-7731-460c-8623-f2038f1c6a0a
rmem reg0 >var_b4c438bb-7731-460c-8623-f2038f1c6a0a
call >print_number
:end_faf3a994-0d1a-47c8-a977-6b8cc3921ef6
rmem reg0 >var_31aeb676-2b3c-449e-a51d-0f8bd658a0e8
call >not
jf reg0 >end_97b8cbf0-2621-4168-8291-71c1c5ce73d5
set reg0 102
out reg0
set reg0 105
out reg0
set reg0 122
out reg0
set reg0 122
out reg0
:end_97b8cbf0-2621-4168-8291-71c1c5ce73d5
rmem reg0 >var_48aa2f0a-e4d8-418c-9d81-443d97824eed
call >not
jf reg0 >end_eb6458f1-6174-40f7-a4c8-6bd1b0bc0006
set reg0 98
out reg0
set reg0 117
out reg0
set reg0 122
out reg0
set reg0 122
out reg0
:end_eb6458f1-6174-40f7-a4c8-6bd1b0bc0006
rmem reg0 >var_b4c438bb-7731-460c-8623-f2038f1c6a0a
set reg1 1
add reg0 reg0 reg1
wmem >var_b4c438bb-7731-460c-8623-f2038f1c6a0a reg0
set reg0 10
out reg0
jmp >while_ac4c08b4-ba8d-4e77-92c4-00e21358b8cc_begin
:while_ac4c08b4-ba8d-4e77-92c4-00e21358b8cc_end

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

