jmp >str_cat_end
:str_cat
jmp >var_3c2d35ec-234c-4726-91d4-e6f35beb482d_end
:var_3c2d35ec-234c-4726-91d4-e6f35beb482d
:var_3c2d35ec-234c-4726-91d4-e6f35beb482d_end
jmp >var_5e2d4a29-9230-42a1-9133-efbe3c768e94_end
:var_5e2d4a29-9230-42a1-9133-efbe3c768e94
:var_5e2d4a29-9230-42a1-9133-efbe3c768e94_end
wmem >var_3c2d35ec-234c-4726-91d4-e6f35beb482d reg0
wmem >var_5e2d4a29-9230-42a1-9133-efbe3c768e94 reg1
jmp >var_20b57dc1-213e-412f-b3a8-1c2232528349_end
:var_20b57dc1-213e-412f-b3a8-1c2232528349
:var_20b57dc1-213e-412f-b3a8-1c2232528349_end
rmem reg0 >var_3c2d35ec-234c-4726-91d4-e6f35beb482d
call >str_len
wmem >var_20b57dc1-213e-412f-b3a8-1c2232528349 reg0
jmp >var_5878fc15-dcdd-4dee-9b9b-9fdff514e496_end
:var_5878fc15-dcdd-4dee-9b9b-9fdff514e496
:var_5878fc15-dcdd-4dee-9b9b-9fdff514e496_end
rmem reg0 >var_5e2d4a29-9230-42a1-9133-efbe3c768e94
call >str_len
wmem >var_5878fc15-dcdd-4dee-9b9b-9fdff514e496 reg0
rmem reg0 >var_20b57dc1-213e-412f-b3a8-1c2232528349
call >print_number
set reg0 10
out reg0
rmem reg0 >var_5878fc15-dcdd-4dee-9b9b-9fdff514e496
call >print_number
set reg0 10
out reg0
jmp >var_6602ee13-2d16-4cb3-b00d-114d0f3c5b3a_end
:var_6602ee13-2d16-4cb3-b00d-114d0f3c5b3a
:var_6602ee13-2d16-4cb3-b00d-114d0f3c5b3a_end
rmem reg0 >var_20b57dc1-213e-412f-b3a8-1c2232528349
rmem reg1 >var_5878fc15-dcdd-4dee-9b9b-9fdff514e496
add reg0 reg0 reg1
call >alloc
wmem >var_6602ee13-2d16-4cb3-b00d-114d0f3c5b3a reg0
breakpoint
rmem reg0 >var_3c2d35ec-234c-4726-91d4-e6f35beb482d
rmem reg1 >var_6602ee13-2d16-4cb3-b00d-114d0f3c5b3a
rmem reg2 >var_20b57dc1-213e-412f-b3a8-1c2232528349
call >mem_cp
breakpoint
rmem reg0 >var_5e2d4a29-9230-42a1-9133-efbe3c768e94
rmem reg1 >var_6602ee13-2d16-4cb3-b00d-114d0f3c5b3a
rmem reg2 >var_20b57dc1-213e-412f-b3a8-1c2232528349
add reg0 reg0 reg1
rmem reg2 >var_5878fc15-dcdd-4dee-9b9b-9fdff514e496
set reg3 1
add reg0 reg0 reg1
call >mem_cp
rmem reg0 >var_6602ee13-2d16-4cb3-b00d-114d0f3c5b3a
ret
ret
:str_cat_end
jmp >input_end
:input
jmp >var_93e7eac1-eefc-4767-ac3e-4d20e6b9feab_end
:var_93e7eac1-eefc-4767-ac3e-4d20e6b9feab
:var_93e7eac1-eefc-4767-ac3e-4d20e6b9feab_end
set reg0 16384
wmem >var_93e7eac1-eefc-4767-ac3e-4d20e6b9feab reg0
jmp >var_18f313a8-b3d7-4833-a5fa-f66b2a5feabb_end
:var_18f313a8-b3d7-4833-a5fa-f66b2a5feabb
:var_18f313a8-b3d7-4833-a5fa-f66b2a5feabb_end
in reg0
wmem >var_18f313a8-b3d7-4833-a5fa-f66b2a5feabb reg0
jmp >var_d5f55954-2b06-494b-badd-d7603b348cd2_end
:var_d5f55954-2b06-494b-badd-d7603b348cd2
:var_d5f55954-2b06-494b-badd-d7603b348cd2_end
rmem reg0 >var_18f313a8-b3d7-4833-a5fa-f66b2a5feabb
set reg1 10
eq reg0 reg0 reg1
wmem >var_d5f55954-2b06-494b-badd-d7603b348cd2 reg0
:while_c739ee83-b982-4080-8aa9-24e560606686_begin
rmem reg0 >var_d5f55954-2b06-494b-badd-d7603b348cd2
call >not
rmem reg1 >var_18f313a8-b3d7-4833-a5fa-f66b2a5feabb
call >and
jf reg0 >while_c739ee83-b982-4080-8aa9-24e560606686_end
rmem reg0 >var_93e7eac1-eefc-4767-ac3e-4d20e6b9feab
rmem reg1 >var_18f313a8-b3d7-4833-a5fa-f66b2a5feabb
wmem reg0 reg1
rmem reg0 >var_93e7eac1-eefc-4767-ac3e-4d20e6b9feab
add reg0 reg0 1
wmem >var_93e7eac1-eefc-4767-ac3e-4d20e6b9feab reg0
in reg0
wmem >var_18f313a8-b3d7-4833-a5fa-f66b2a5feabb reg0
rmem reg0 >var_18f313a8-b3d7-4833-a5fa-f66b2a5feabb
set reg1 10
eq reg0 reg0 reg1
wmem >var_d5f55954-2b06-494b-badd-d7603b348cd2 reg0
jmp >while_c739ee83-b982-4080-8aa9-24e560606686_begin
:while_c739ee83-b982-4080-8aa9-24e560606686_end
rmem reg0 >var_93e7eac1-eefc-4767-ac3e-4d20e6b9feab
set reg1 0
wmem reg0 reg1
jmp >var_6b28063d-6235-41df-8b73-674b0678e569_end
:var_6b28063d-6235-41df-8b73-674b0678e569
:var_6b28063d-6235-41df-8b73-674b0678e569_end
call >alloc
wmem >var_6b28063d-6235-41df-8b73-674b0678e569 reg0
jmp >var_f707e421-509b-4def-9ec1-a131b56db836_end
:var_f707e421-509b-4def-9ec1-a131b56db836
:var_f707e421-509b-4def-9ec1-a131b56db836_end
set reg0 16384
call >str_len
wmem >var_f707e421-509b-4def-9ec1-a131b56db836 reg0
set reg0 16384
rmem reg1 >var_6b28063d-6235-41df-8b73-674b0678e569
rmem reg2 >var_f707e421-509b-4def-9ec1-a131b56db836
call >mem_cp
rmem reg0 >var_6b28063d-6235-41df-8b73-674b0678e569
ret
ret
:input_end
jmp >alloc_end
:alloc
jmp >var_d336504d-d23f-4271-8bb4-bdf850735e28_end
:var_d336504d-d23f-4271-8bb4-bdf850735e28
:var_d336504d-d23f-4271-8bb4-bdf850735e28_end
set reg0 0
wmem >var_d336504d-d23f-4271-8bb4-bdf850735e28 reg0
jmp >var_cb77331a-f390-4757-968b-680819dede9a_end
:var_cb77331a-f390-4757-968b-680819dede9a
:var_cb77331a-f390-4757-968b-680819dede9a_end
set reg0 0
wmem >var_cb77331a-f390-4757-968b-680819dede9a reg0
:while_423d1c44-01c7-49f1-bc63-e0a71207cc66_begin
rmem reg0 >var_cb77331a-f390-4757-968b-680819dede9a
set reg1 6
gt reg0 reg0 reg1
call >not
jf reg0 >while_423d1c44-01c7-49f1-bc63-e0a71207cc66_end
jmp >var_0ab21892-bb22-4fbd-ad6f-528fc3c87ad2_end
:var_0ab21892-bb22-4fbd-ad6f-528fc3c87ad2
:var_0ab21892-bb22-4fbd-ad6f-528fc3c87ad2_end
rmem reg0 >var_d336504d-d23f-4271-8bb4-bdf850735e28
rmem reg0 reg0
wmem >var_0ab21892-bb22-4fbd-ad6f-528fc3c87ad2 reg0
rmem reg0 >var_0ab21892-bb22-4fbd-ad6f-528fc3c87ad2
call >not
jf reg0 >end_514e50bc-9d89-4b2d-b1c6-062664350e13
rmem reg0 >var_cb77331a-f390-4757-968b-680819dede9a
add reg0 reg0 1
wmem >var_cb77331a-f390-4757-968b-680819dede9a reg0
:end_514e50bc-9d89-4b2d-b1c6-062664350e13
rmem reg0 >var_0ab21892-bb22-4fbd-ad6f-528fc3c87ad2
jf reg0 >end_6ed24a0d-a5db-4f10-b4ce-883814db0885
set reg0 0
wmem >var_cb77331a-f390-4757-968b-680819dede9a reg0
:end_6ed24a0d-a5db-4f10-b4ce-883814db0885
rmem reg0 >var_d336504d-d23f-4271-8bb4-bdf850735e28
add reg0 reg0 1
wmem >var_d336504d-d23f-4271-8bb4-bdf850735e28 reg0
jmp >while_423d1c44-01c7-49f1-bc63-e0a71207cc66_begin
:while_423d1c44-01c7-49f1-bc63-e0a71207cc66_end
rmem reg0 >var_d336504d-d23f-4271-8bb4-bdf850735e28
set reg1 1
call >subtract
wmem >var_d336504d-d23f-4271-8bb4-bdf850735e28 reg0
rmem reg0 >var_d336504d-d23f-4271-8bb4-bdf850735e28
ret
ret
:alloc_end
jmp >mem_cp_end
:mem_cp
jmp >var_4cdea0b9-6f05-48af-92c7-d1f57127c702_end
:var_4cdea0b9-6f05-48af-92c7-d1f57127c702
:var_4cdea0b9-6f05-48af-92c7-d1f57127c702_end
jmp >var_d3a25b50-34f3-4de6-b6fa-5cb77d0552da_end
:var_d3a25b50-34f3-4de6-b6fa-5cb77d0552da
:var_d3a25b50-34f3-4de6-b6fa-5cb77d0552da_end
jmp >var_513fd932-6242-4222-94a8-b71f24c399c9_end
:var_513fd932-6242-4222-94a8-b71f24c399c9
:var_513fd932-6242-4222-94a8-b71f24c399c9_end
wmem >var_4cdea0b9-6f05-48af-92c7-d1f57127c702 reg0
wmem >var_d3a25b50-34f3-4de6-b6fa-5cb77d0552da reg1
wmem >var_513fd932-6242-4222-94a8-b71f24c399c9 reg2
jmp >var_dd00f42f-a144-459c-82c1-76c13bae927d_end
:var_dd00f42f-a144-459c-82c1-76c13bae927d
:var_dd00f42f-a144-459c-82c1-76c13bae927d_end
set reg0 0
wmem >var_dd00f42f-a144-459c-82c1-76c13bae927d reg0
:while_391c92e3-45d2-4b25-86fd-6138fa13cac7_begin
rmem reg0 >var_dd00f42f-a144-459c-82c1-76c13bae927d
rmem reg1 >var_513fd932-6242-4222-94a8-b71f24c399c9
gt reg0 reg0 reg1
call >not
jf reg0 >while_391c92e3-45d2-4b25-86fd-6138fa13cac7_end
jmp >var_1c716f5b-ddb4-4717-b80e-7e094694e0df_end
:var_1c716f5b-ddb4-4717-b80e-7e094694e0df
:var_1c716f5b-ddb4-4717-b80e-7e094694e0df_end
rmem reg0 >var_4cdea0b9-6f05-48af-92c7-d1f57127c702
rmem reg1 >var_dd00f42f-a144-459c-82c1-76c13bae927d
add reg0 reg0 reg1
wmem >var_1c716f5b-ddb4-4717-b80e-7e094694e0df reg0
jmp >var_de474be2-6334-4e32-b1e4-39e46656a4ee_end
:var_de474be2-6334-4e32-b1e4-39e46656a4ee
:var_de474be2-6334-4e32-b1e4-39e46656a4ee_end
rmem reg0 >var_d3a25b50-34f3-4de6-b6fa-5cb77d0552da
rmem reg1 >var_dd00f42f-a144-459c-82c1-76c13bae927d
add reg0 reg0 reg1
wmem >var_de474be2-6334-4e32-b1e4-39e46656a4ee reg0
rmem reg0 >var_de474be2-6334-4e32-b1e4-39e46656a4ee
rmem reg1 >var_1c716f5b-ddb4-4717-b80e-7e094694e0df
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_dd00f42f-a144-459c-82c1-76c13bae927d
add reg0 reg0 1
wmem >var_dd00f42f-a144-459c-82c1-76c13bae927d reg0
jmp >while_391c92e3-45d2-4b25-86fd-6138fa13cac7_begin
:while_391c92e3-45d2-4b25-86fd-6138fa13cac7_end
ret
:mem_cp_end
jmp >str_len_end
:str_len
jmp >var_3c1f7a3d-fe96-4ac1-bf6c-773e836e69f4_end
:var_3c1f7a3d-fe96-4ac1-bf6c-773e836e69f4
:var_3c1f7a3d-fe96-4ac1-bf6c-773e836e69f4_end
wmem >var_3c1f7a3d-fe96-4ac1-bf6c-773e836e69f4 reg0
jmp >var_5aabbcf3-beb9-4da0-b0b7-872cdd166317_end
:var_5aabbcf3-beb9-4da0-b0b7-872cdd166317
:var_5aabbcf3-beb9-4da0-b0b7-872cdd166317_end
set reg0 0
wmem >var_5aabbcf3-beb9-4da0-b0b7-872cdd166317 reg0
:while_f1745a3c-1e4d-4559-adb3-313e886a5d68_begin
rmem reg0 >var_3c1f7a3d-fe96-4ac1-bf6c-773e836e69f4
rmem reg0 reg0
jf reg0 >while_f1745a3c-1e4d-4559-adb3-313e886a5d68_end
rmem reg0 >var_3c1f7a3d-fe96-4ac1-bf6c-773e836e69f4
add reg0 reg0 1
wmem >var_3c1f7a3d-fe96-4ac1-bf6c-773e836e69f4 reg0
rmem reg0 >var_5aabbcf3-beb9-4da0-b0b7-872cdd166317
add reg0 reg0 1
wmem >var_5aabbcf3-beb9-4da0-b0b7-872cdd166317 reg0
jmp >while_f1745a3c-1e4d-4559-adb3-313e886a5d68_begin
:while_f1745a3c-1e4d-4559-adb3-313e886a5d68_end
rmem reg0 >var_5aabbcf3-beb9-4da0-b0b7-872cdd166317
ret
ret
:str_len_end
jmp >println_end
:println
jmp >var_0ca2aec8-1539-4c8e-81fe-31a0b2cffe13_end
:var_0ca2aec8-1539-4c8e-81fe-31a0b2cffe13
:var_0ca2aec8-1539-4c8e-81fe-31a0b2cffe13_end
wmem >var_0ca2aec8-1539-4c8e-81fe-31a0b2cffe13 reg0
rmem reg0 >var_0ca2aec8-1539-4c8e-81fe-31a0b2cffe13
call >print
set reg0 10
out reg0
ret
:println_end
jmp >print_end
:print
jmp >var_071eca42-23b7-435f-b35a-8ec7bf51fd90_end
:var_071eca42-23b7-435f-b35a-8ec7bf51fd90
:var_071eca42-23b7-435f-b35a-8ec7bf51fd90_end
wmem >var_071eca42-23b7-435f-b35a-8ec7bf51fd90 reg0
:while_c7d78846-8f3a-4add-9dc5-251698e94fb3_begin
rmem reg0 >var_071eca42-23b7-435f-b35a-8ec7bf51fd90
rmem reg0 reg0
jf reg0 >while_c7d78846-8f3a-4add-9dc5-251698e94fb3_end
rmem reg0 >var_071eca42-23b7-435f-b35a-8ec7bf51fd90
rmem reg0 reg0
out reg0
rmem reg0 >var_071eca42-23b7-435f-b35a-8ec7bf51fd90
add reg0 reg0 1
wmem >var_071eca42-23b7-435f-b35a-8ec7bf51fd90 reg0
jmp >while_c7d78846-8f3a-4add-9dc5-251698e94fb3_begin
:while_c7d78846-8f3a-4add-9dc5-251698e94fb3_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_a72d86ad-cf97-4bd8-90e9-98efa3cc1991_end
:var_a72d86ad-cf97-4bd8-90e9-98efa3cc1991
:var_a72d86ad-cf97-4bd8-90e9-98efa3cc1991_end
wmem >var_a72d86ad-cf97-4bd8-90e9-98efa3cc1991 reg0
rmem reg0 >var_a72d86ad-cf97-4bd8-90e9-98efa3cc1991
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_bc30807d-f62c-41b5-8363-3859c08613bc
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_bc30807d-f62c-41b5-8363-3859c08613bc
jmp >var_b18d634d-725a-450f-bb37-d7af3edb4b36_end
:var_b18d634d-725a-450f-bb37-d7af3edb4b36
:var_b18d634d-725a-450f-bb37-d7af3edb4b36_end
jmp >var_b7838cf5-6c21-4376-b4da-e3caece93c27_end
:var_b7838cf5-6c21-4376-b4da-e3caece93c27
:var_b7838cf5-6c21-4376-b4da-e3caece93c27_end
set reg0 0
wmem >var_b7838cf5-6c21-4376-b4da-e3caece93c27 reg0
:while_65b3c9b0-dcdc-4551-94f1-4c478a29814e_begin
rmem reg0 >var_a72d86ad-cf97-4bd8-90e9-98efa3cc1991
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_65b3c9b0-dcdc-4551-94f1-4c478a29814e_end
rmem reg0 >var_a72d86ad-cf97-4bd8-90e9-98efa3cc1991
set reg1 10
mod reg0 reg0 reg1
wmem >var_b18d634d-725a-450f-bb37-d7af3edb4b36 reg0
rmem reg0 >var_b18d634d-725a-450f-bb37-d7af3edb4b36
rmem reg0 >var_b18d634d-725a-450f-bb37-d7af3edb4b36
push reg0
rmem reg0 >var_b7838cf5-6c21-4376-b4da-e3caece93c27
add reg0 reg0 1
wmem >var_b7838cf5-6c21-4376-b4da-e3caece93c27 reg0
rmem reg0 >var_a72d86ad-cf97-4bd8-90e9-98efa3cc1991
set reg1 10
call >divide
wmem >var_a72d86ad-cf97-4bd8-90e9-98efa3cc1991 reg0
jmp >while_65b3c9b0-dcdc-4551-94f1-4c478a29814e_begin
:while_65b3c9b0-dcdc-4551-94f1-4c478a29814e_end
rmem reg0 >var_a72d86ad-cf97-4bd8-90e9-98efa3cc1991
set reg1 10
mod reg0 reg0 reg1
wmem >var_b18d634d-725a-450f-bb37-d7af3edb4b36 reg0
rmem reg0 >var_b18d634d-725a-450f-bb37-d7af3edb4b36
rmem reg0 >var_b18d634d-725a-450f-bb37-d7af3edb4b36
push reg0
rmem reg0 >var_b7838cf5-6c21-4376-b4da-e3caece93c27
add reg0 reg0 1
wmem >var_b7838cf5-6c21-4376-b4da-e3caece93c27 reg0
jmp >var_0b02b01e-7428-4015-ab82-b69b2690a097_end
:var_0b02b01e-7428-4015-ab82-b69b2690a097
:var_0b02b01e-7428-4015-ab82-b69b2690a097_end
set reg0 0
wmem >var_0b02b01e-7428-4015-ab82-b69b2690a097 reg0
:while_0978e0fc-b283-4969-b529-a137bd1c4fd8_begin
rmem reg0 >var_0b02b01e-7428-4015-ab82-b69b2690a097
rmem reg1 >var_b7838cf5-6c21-4376-b4da-e3caece93c27
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_0978e0fc-b283-4969-b529-a137bd1c4fd8_end
rmem reg0 >var_0b02b01e-7428-4015-ab82-b69b2690a097
set reg1 1
add reg0 reg0 reg1
wmem >var_0b02b01e-7428-4015-ab82-b69b2690a097 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_0978e0fc-b283-4969-b529-a137bd1c4fd8_begin
:while_0978e0fc-b283-4969-b529-a137bd1c4fd8_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_fc9809f6-733c-4a5e-b22b-d1d6f85ecdd5_end
:var_fc9809f6-733c-4a5e-b22b-d1d6f85ecdd5
:var_fc9809f6-733c-4a5e-b22b-d1d6f85ecdd5_end
set reg0 0
wmem >var_fc9809f6-733c-4a5e-b22b-d1d6f85ecdd5 reg0
:while_97b83c0e-bec4-4172-85b3-865f0e0ba2f6_begin
rmem reg0 >var_fc9809f6-733c-4a5e-b22b-d1d6f85ecdd5
rmem reg0 reg0
jf reg0 >while_97b83c0e-bec4-4172-85b3-865f0e0ba2f6_end
rmem reg0 >var_fc9809f6-733c-4a5e-b22b-d1d6f85ecdd5
add reg0 reg0 1
wmem >var_fc9809f6-733c-4a5e-b22b-d1d6f85ecdd5 reg0
rmem reg0 >var_fc9809f6-733c-4a5e-b22b-d1d6f85ecdd5
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_97b83c0e-bec4-4172-85b3-865f0e0ba2f6_begin
:while_97b83c0e-bec4-4172-85b3-865f0e0ba2f6_end
ret
:dump_mem_end
call >do_stuff
jmp >do_stuff_end
:do_stuff
jmp >var_bc777e69-ad63-41cd-862d-447dac082a3b_end
:var_bc777e69-ad63-41cd-862d-447dac082a3b
&e
&l
&l
&o
0
:var_bc777e69-ad63-41cd-862d-447dac082a3b_end
wmem >var_bc777e69-ad63-41cd-862d-447dac082a3b &H
set reg0 >var_bc777e69-ad63-41cd-862d-447dac082a3b
jmp >var_26bc9b1f-0767-4c6b-bdcb-ecbc09a22180_end
:var_26bc9b1f-0767-4c6b-bdcb-ecbc09a22180
&W
&o
&r
&l
&d
&!
0
:var_26bc9b1f-0767-4c6b-bdcb-ecbc09a22180_end
wmem >var_26bc9b1f-0767-4c6b-bdcb-ecbc09a22180 32
set reg1 >var_26bc9b1f-0767-4c6b-bdcb-ecbc09a22180
call >str_cat
call >print
breakpoint
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
