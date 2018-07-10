jmp >print_number_end
:print_number
jmp >var_7e284853-bf6d-4773-83b0-028498a774a5_end
:var_7e284853-bf6d-4773-83b0-028498a774a5
:var_7e284853-bf6d-4773-83b0-028498a774a5_end
wmem >var_7e284853-bf6d-4773-83b0-028498a774a5 reg0
jmp >var_bb5a6374-53db-4807-a0e6-f0e954e3a303_end
:var_bb5a6374-53db-4807-a0e6-f0e954e3a303
:var_bb5a6374-53db-4807-a0e6-f0e954e3a303_end
jmp >var_6a17f86d-2bfb-465d-88f6-43b1a0c2de0f_end
:var_6a17f86d-2bfb-465d-88f6-43b1a0c2de0f
:var_6a17f86d-2bfb-465d-88f6-43b1a0c2de0f_end
set reg0 0
wmem >var_6a17f86d-2bfb-465d-88f6-43b1a0c2de0f reg0
:while_d6af352a-4422-42fa-9108-750a74700a71_begin
rmem reg0 >var_7e284853-bf6d-4773-83b0-028498a774a5
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_d6af352a-4422-42fa-9108-750a74700a71_end
rmem reg0 >var_7e284853-bf6d-4773-83b0-028498a774a5
set reg1 10
mod reg0 reg0 reg1
wmem >var_bb5a6374-53db-4807-a0e6-f0e954e3a303 reg0
rmem reg0 >var_bb5a6374-53db-4807-a0e6-f0e954e3a303
rmem reg0 >var_bb5a6374-53db-4807-a0e6-f0e954e3a303
push reg0
rmem reg0 >var_6a17f86d-2bfb-465d-88f6-43b1a0c2de0f
set reg1 1
add reg0 reg0 reg1
wmem >var_6a17f86d-2bfb-465d-88f6-43b1a0c2de0f reg0
rmem reg0 >var_7e284853-bf6d-4773-83b0-028498a774a5
set reg1 10
call >divide
wmem >var_7e284853-bf6d-4773-83b0-028498a774a5 reg0
jmp >while_d6af352a-4422-42fa-9108-750a74700a71_begin
:while_d6af352a-4422-42fa-9108-750a74700a71_end
rmem reg0 >var_7e284853-bf6d-4773-83b0-028498a774a5
set reg1 10
mod reg0 reg0 reg1
wmem >var_bb5a6374-53db-4807-a0e6-f0e954e3a303 reg0
rmem reg0 >var_bb5a6374-53db-4807-a0e6-f0e954e3a303
rmem reg0 >var_bb5a6374-53db-4807-a0e6-f0e954e3a303
push reg0
rmem reg0 >var_6a17f86d-2bfb-465d-88f6-43b1a0c2de0f
set reg1 1
add reg0 reg0 reg1
wmem >var_6a17f86d-2bfb-465d-88f6-43b1a0c2de0f reg0
jmp >var_f6b9259c-c2bd-42e6-a061-931f0306bbad_end
:var_f6b9259c-c2bd-42e6-a061-931f0306bbad
:var_f6b9259c-c2bd-42e6-a061-931f0306bbad_end
set reg0 0
wmem >var_f6b9259c-c2bd-42e6-a061-931f0306bbad reg0
:while_5546d89b-87e0-44b0-b3d3-4ceb8b20d72a_begin
rmem reg0 >var_f6b9259c-c2bd-42e6-a061-931f0306bbad
rmem reg1 >var_6a17f86d-2bfb-465d-88f6-43b1a0c2de0f
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_5546d89b-87e0-44b0-b3d3-4ceb8b20d72a_end
rmem reg0 >var_f6b9259c-c2bd-42e6-a061-931f0306bbad
set reg1 1
add reg0 reg0 reg1
wmem >var_f6b9259c-c2bd-42e6-a061-931f0306bbad reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_5546d89b-87e0-44b0-b3d3-4ceb8b20d72a_begin
:while_5546d89b-87e0-44b0-b3d3-4ceb8b20d72a_end
ret
:print_number_end
jmp >var_342e2343-71cf-4cef-9a34-47c7de8c90b9_end
:var_342e2343-71cf-4cef-9a34-47c7de8c90b9
:var_342e2343-71cf-4cef-9a34-47c7de8c90b9_end
set reg0 904
wmem >var_342e2343-71cf-4cef-9a34-47c7de8c90b9 reg0
rmem reg0 >var_342e2343-71cf-4cef-9a34-47c7de8c90b9
rmem reg0 >var_342e2343-71cf-4cef-9a34-47c7de8c90b9
call >print_number

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

