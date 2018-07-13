jmp >str_len_end
:str_len
jmp >var_c0210f78-fc36-4328-a1fc-15489caad663_end
:var_c0210f78-fc36-4328-a1fc-15489caad663
:var_c0210f78-fc36-4328-a1fc-15489caad663_end
wmem >var_c0210f78-fc36-4328-a1fc-15489caad663 reg0
jmp >var_d5cfba17-b23d-464c-9b04-e111877f1328_end
:var_d5cfba17-b23d-464c-9b04-e111877f1328
:var_d5cfba17-b23d-464c-9b04-e111877f1328_end
set reg0 0
wmem >var_d5cfba17-b23d-464c-9b04-e111877f1328 reg0
:while_03a8fc71-a362-4654-8a0b-d4113945a390_begin
rmem reg0 >var_c0210f78-fc36-4328-a1fc-15489caad663
rmem reg0 reg0
jf reg0 >while_03a8fc71-a362-4654-8a0b-d4113945a390_end
rmem reg0 >var_c0210f78-fc36-4328-a1fc-15489caad663
add reg0 reg0 1
wmem >var_c0210f78-fc36-4328-a1fc-15489caad663 reg0
rmem reg0 >var_d5cfba17-b23d-464c-9b04-e111877f1328
add reg0 reg0 1
wmem >var_d5cfba17-b23d-464c-9b04-e111877f1328 reg0
jmp >while_03a8fc71-a362-4654-8a0b-d4113945a390_begin
:while_03a8fc71-a362-4654-8a0b-d4113945a390_end
rmem reg0 >var_d5cfba17-b23d-464c-9b04-e111877f1328
ret
ret
:str_len_end
jmp >println_end
:println
jmp >var_e6a5ce2f-cdc8-4a4c-a897-574b50ade1a5_end
:var_e6a5ce2f-cdc8-4a4c-a897-574b50ade1a5
:var_e6a5ce2f-cdc8-4a4c-a897-574b50ade1a5_end
wmem >var_e6a5ce2f-cdc8-4a4c-a897-574b50ade1a5 reg0
rmem reg0 >var_e6a5ce2f-cdc8-4a4c-a897-574b50ade1a5
rmem reg0 >var_e6a5ce2f-cdc8-4a4c-a897-574b50ade1a5
call >print
set reg0 10
out reg0
ret
:println_end
jmp >print_end
:print
jmp >var_83a8e6b0-9fa0-4051-8bbb-f669371f4162_end
:var_83a8e6b0-9fa0-4051-8bbb-f669371f4162
:var_83a8e6b0-9fa0-4051-8bbb-f669371f4162_end
wmem >var_83a8e6b0-9fa0-4051-8bbb-f669371f4162 reg0
:while_c2b15f89-62a5-450e-b76f-ff0179ddcc8c_begin
rmem reg0 >var_83a8e6b0-9fa0-4051-8bbb-f669371f4162
rmem reg0 reg0
jf reg0 >while_c2b15f89-62a5-450e-b76f-ff0179ddcc8c_end
rmem reg0 >var_83a8e6b0-9fa0-4051-8bbb-f669371f4162
rmem reg0 reg0
out reg0
rmem reg0 >var_83a8e6b0-9fa0-4051-8bbb-f669371f4162
add reg0 reg0 1
wmem >var_83a8e6b0-9fa0-4051-8bbb-f669371f4162 reg0
jmp >while_c2b15f89-62a5-450e-b76f-ff0179ddcc8c_begin
:while_c2b15f89-62a5-450e-b76f-ff0179ddcc8c_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_04d6709f-a142-4a15-96a9-3861173f9695_end
:var_04d6709f-a142-4a15-96a9-3861173f9695
:var_04d6709f-a142-4a15-96a9-3861173f9695_end
wmem >var_04d6709f-a142-4a15-96a9-3861173f9695 reg0
rmem reg0 >var_04d6709f-a142-4a15-96a9-3861173f9695
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_e718955a-374c-4b1a-ae7d-0aaa406dc221
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_e718955a-374c-4b1a-ae7d-0aaa406dc221
jmp >var_b49ca573-c0a5-43b4-b1ef-08681af9cfef_end
:var_b49ca573-c0a5-43b4-b1ef-08681af9cfef
:var_b49ca573-c0a5-43b4-b1ef-08681af9cfef_end
jmp >var_4b110636-8c19-4fff-951c-9d10a362d30f_end
:var_4b110636-8c19-4fff-951c-9d10a362d30f
:var_4b110636-8c19-4fff-951c-9d10a362d30f_end
set reg0 0
wmem >var_4b110636-8c19-4fff-951c-9d10a362d30f reg0
:while_c1a0b4c5-8129-4ef9-ac12-74770c885f9a_begin
rmem reg0 >var_04d6709f-a142-4a15-96a9-3861173f9695
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_c1a0b4c5-8129-4ef9-ac12-74770c885f9a_end
rmem reg0 >var_04d6709f-a142-4a15-96a9-3861173f9695
set reg1 10
mod reg0 reg0 reg1
wmem >var_b49ca573-c0a5-43b4-b1ef-08681af9cfef reg0
rmem reg0 >var_b49ca573-c0a5-43b4-b1ef-08681af9cfef
rmem reg0 >var_b49ca573-c0a5-43b4-b1ef-08681af9cfef
push reg0
rmem reg0 >var_4b110636-8c19-4fff-951c-9d10a362d30f
add reg0 reg0 1
wmem >var_4b110636-8c19-4fff-951c-9d10a362d30f reg0
rmem reg0 >var_04d6709f-a142-4a15-96a9-3861173f9695
set reg1 10
call >divide
wmem >var_04d6709f-a142-4a15-96a9-3861173f9695 reg0
jmp >while_c1a0b4c5-8129-4ef9-ac12-74770c885f9a_begin
:while_c1a0b4c5-8129-4ef9-ac12-74770c885f9a_end
rmem reg0 >var_04d6709f-a142-4a15-96a9-3861173f9695
set reg1 10
mod reg0 reg0 reg1
wmem >var_b49ca573-c0a5-43b4-b1ef-08681af9cfef reg0
rmem reg0 >var_b49ca573-c0a5-43b4-b1ef-08681af9cfef
rmem reg0 >var_b49ca573-c0a5-43b4-b1ef-08681af9cfef
push reg0
rmem reg0 >var_4b110636-8c19-4fff-951c-9d10a362d30f
add reg0 reg0 1
wmem >var_4b110636-8c19-4fff-951c-9d10a362d30f reg0
jmp >var_35c5a509-c849-4791-82c1-9de657b0603a_end
:var_35c5a509-c849-4791-82c1-9de657b0603a
:var_35c5a509-c849-4791-82c1-9de657b0603a_end
set reg0 0
wmem >var_35c5a509-c849-4791-82c1-9de657b0603a reg0
:while_72df254f-19df-4018-b2af-396053edfe07_begin
rmem reg0 >var_35c5a509-c849-4791-82c1-9de657b0603a
rmem reg1 >var_4b110636-8c19-4fff-951c-9d10a362d30f
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_72df254f-19df-4018-b2af-396053edfe07_end
rmem reg0 >var_35c5a509-c849-4791-82c1-9de657b0603a
set reg1 1
add reg0 reg0 reg1
wmem >var_35c5a509-c849-4791-82c1-9de657b0603a reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_72df254f-19df-4018-b2af-396053edfe07_begin
:while_72df254f-19df-4018-b2af-396053edfe07_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_529388c6-9b4b-439e-a1e2-e44b801c511f_end
:var_529388c6-9b4b-439e-a1e2-e44b801c511f
:var_529388c6-9b4b-439e-a1e2-e44b801c511f_end
set reg0 0
wmem >var_529388c6-9b4b-439e-a1e2-e44b801c511f reg0
:while_5523cb79-c998-4efe-aa34-af21c9292c6f_begin
rmem reg0 >var_529388c6-9b4b-439e-a1e2-e44b801c511f
rmem reg0 reg0
jf reg0 >while_5523cb79-c998-4efe-aa34-af21c9292c6f_end
rmem reg0 >var_529388c6-9b4b-439e-a1e2-e44b801c511f
add reg0 reg0 1
wmem >var_529388c6-9b4b-439e-a1e2-e44b801c511f reg0
rmem reg0 >var_529388c6-9b4b-439e-a1e2-e44b801c511f
rmem reg0 reg0
rmem reg0 >var_529388c6-9b4b-439e-a1e2-e44b801c511f
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_5523cb79-c998-4efe-aa34-af21c9292c6f_begin
:while_5523cb79-c998-4efe-aa34-af21c9292c6f_end
ret
:dump_mem_end
jmp >var_d959140a-ee72-4e68-b102-a7abed0a797f_end
:var_d959140a-ee72-4e68-b102-a7abed0a797f
&e
&s
&t
0
:var_d959140a-ee72-4e68-b102-a7abed0a797f_end
wmem >var_d959140a-ee72-4e68-b102-a7abed0a797f &t
set reg0 >var_d959140a-ee72-4e68-b102-a7abed0a797f
jmp >var_222ad871-23f9-4590-a97e-6cd19b273404_end
:var_222ad871-23f9-4590-a97e-6cd19b273404
&e
&s
&t
0
:var_222ad871-23f9-4590-a97e-6cd19b273404_end
wmem >var_222ad871-23f9-4590-a97e-6cd19b273404 &t
set reg0 >var_222ad871-23f9-4590-a97e-6cd19b273404
call >str_len
jmp >var_1478bff3-1976-4da6-bec3-cd2c450ef85c_end
:var_1478bff3-1976-4da6-bec3-cd2c450ef85c
&e
&s
&t
0
:var_1478bff3-1976-4da6-bec3-cd2c450ef85c_end
wmem >var_1478bff3-1976-4da6-bec3-cd2c450ef85c &t
set reg0 >var_1478bff3-1976-4da6-bec3-cd2c450ef85c
jmp >var_14b741eb-25cc-4efd-979e-ed15ed5b9929_end
:var_14b741eb-25cc-4efd-979e-ed15ed5b9929
&e
&s
&t
0
:var_14b741eb-25cc-4efd-979e-ed15ed5b9929_end
wmem >var_14b741eb-25cc-4efd-979e-ed15ed5b9929 &t
set reg0 >var_14b741eb-25cc-4efd-979e-ed15ed5b9929
call >str_len
call >print_number
set reg0 10
out reg0
call >dump_mem

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

