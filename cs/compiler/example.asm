jmp >var_68b64cbe-05d7-490c-981b-06ffa09aea2b_end
:var_68b64cbe-05d7-490c-981b-06ffa09aea2b
:var_68b64cbe-05d7-490c-981b-06ffa09aea2b_end
set reg0 12345
wmem >var_68b64cbe-05d7-490c-981b-06ffa09aea2b reg0
rmem reg0 >var_68b64cbe-05d7-490c-981b-06ffa09aea2b
rmem reg0 >var_68b64cbe-05d7-490c-981b-06ffa09aea2b
call >print_number
halt
:print_number
jmp >var_a0cd691c-0466-453f-8e83-c8715fd8132b_end
:var_a0cd691c-0466-453f-8e83-c8715fd8132b
:var_a0cd691c-0466-453f-8e83-c8715fd8132b_end
wmem >var_a0cd691c-0466-453f-8e83-c8715fd8132b reg0
jmp >var_028b8fa3-9427-401a-9f25-6f1d6295f69c_end
:var_028b8fa3-9427-401a-9f25-6f1d6295f69c
:var_028b8fa3-9427-401a-9f25-6f1d6295f69c_end
jmp >var_da746771-401a-4f0e-9ba1-b9025dc1adbe_end
:var_da746771-401a-4f0e-9ba1-b9025dc1adbe
:var_da746771-401a-4f0e-9ba1-b9025dc1adbe_end
set reg0 0
wmem >var_da746771-401a-4f0e-9ba1-b9025dc1adbe reg0
:while_032cf6cb-edd1-4a8e-b5a2-de79df046885_begin
rmem reg0 >var_a0cd691c-0466-453f-8e83-c8715fd8132b
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_032cf6cb-edd1-4a8e-b5a2-de79df046885_end
rmem reg0 >var_a0cd691c-0466-453f-8e83-c8715fd8132b
set reg1 10
mod reg0 reg0 reg1
wmem >var_028b8fa3-9427-401a-9f25-6f1d6295f69c reg0
rmem reg0 >var_028b8fa3-9427-401a-9f25-6f1d6295f69c
rmem reg0 >var_028b8fa3-9427-401a-9f25-6f1d6295f69c
push reg0
rmem reg0 >var_da746771-401a-4f0e-9ba1-b9025dc1adbe
set reg1 1
add reg0 reg0 reg1
wmem >var_da746771-401a-4f0e-9ba1-b9025dc1adbe reg0
rmem reg0 >var_a0cd691c-0466-453f-8e83-c8715fd8132b
set reg1 10
call >divide
wmem >var_a0cd691c-0466-453f-8e83-c8715fd8132b reg0
jmp >while_032cf6cb-edd1-4a8e-b5a2-de79df046885_begin
:while_032cf6cb-edd1-4a8e-b5a2-de79df046885_end
rmem reg0 >var_a0cd691c-0466-453f-8e83-c8715fd8132b
set reg1 10
mod reg0 reg0 reg1
wmem >var_028b8fa3-9427-401a-9f25-6f1d6295f69c reg0
rmem reg0 >var_028b8fa3-9427-401a-9f25-6f1d6295f69c
rmem reg0 >var_028b8fa3-9427-401a-9f25-6f1d6295f69c
push reg0
rmem reg0 >var_da746771-401a-4f0e-9ba1-b9025dc1adbe
set reg1 1
add reg0 reg0 reg1
wmem >var_da746771-401a-4f0e-9ba1-b9025dc1adbe reg0
jmp >var_1cd48acc-9280-4450-9285-7d95a40eca5d_end
:var_1cd48acc-9280-4450-9285-7d95a40eca5d
:var_1cd48acc-9280-4450-9285-7d95a40eca5d_end
set reg0 0
wmem >var_1cd48acc-9280-4450-9285-7d95a40eca5d reg0
:while_5464b799-00bc-48ca-9de9-e8254704c777_begin
rmem reg0 >var_1cd48acc-9280-4450-9285-7d95a40eca5d
rmem reg1 >var_da746771-401a-4f0e-9ba1-b9025dc1adbe
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_5464b799-00bc-48ca-9de9-e8254704c777_end
rmem reg0 >var_1cd48acc-9280-4450-9285-7d95a40eca5d
set reg1 1
add reg0 reg0 reg1
wmem >var_1cd48acc-9280-4450-9285-7d95a40eca5d reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_5464b799-00bc-48ca-9de9-e8254704c777_begin
:while_5464b799-00bc-48ca-9de9-e8254704c777_end
ret

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

