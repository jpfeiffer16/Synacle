jmp >input_end
:input
jmp >var_1de61b09-b66e-4368-94f6-d52e53bb0cff_end
:var_1de61b09-b66e-4368-94f6-d52e53bb0cff
:var_1de61b09-b66e-4368-94f6-d52e53bb0cff_end
set reg0 16384
wmem >var_1de61b09-b66e-4368-94f6-d52e53bb0cff reg0
jmp >var_5df39e40-7541-4764-a572-9106cdb40e09_end
:var_5df39e40-7541-4764-a572-9106cdb40e09
:var_5df39e40-7541-4764-a572-9106cdb40e09_end
in reg0
wmem >var_5df39e40-7541-4764-a572-9106cdb40e09 reg0
jmp >var_462ef6ff-03c3-4a9e-ac5c-ddcd12d4835d_end
:var_462ef6ff-03c3-4a9e-ac5c-ddcd12d4835d
:var_462ef6ff-03c3-4a9e-ac5c-ddcd12d4835d_end
rmem reg0 >var_5df39e40-7541-4764-a572-9106cdb40e09
set reg1 10
eq reg0 reg0 reg1
wmem >var_462ef6ff-03c3-4a9e-ac5c-ddcd12d4835d reg0
:while_03f4493a-495f-4866-bdfb-c2f9b7c74377_begin
rmem reg0 >var_462ef6ff-03c3-4a9e-ac5c-ddcd12d4835d
call >not
rmem reg1 >var_5df39e40-7541-4764-a572-9106cdb40e09
call >and
jf reg0 >while_03f4493a-495f-4866-bdfb-c2f9b7c74377_end
rmem reg0 >var_1de61b09-b66e-4368-94f6-d52e53bb0cff
rmem reg1 >var_5df39e40-7541-4764-a572-9106cdb40e09
wmem reg0 reg1
rmem reg0 >var_1de61b09-b66e-4368-94f6-d52e53bb0cff
add reg0 reg0 1
wmem >var_1de61b09-b66e-4368-94f6-d52e53bb0cff reg0
in reg0
wmem >var_5df39e40-7541-4764-a572-9106cdb40e09 reg0
rmem reg0 >var_5df39e40-7541-4764-a572-9106cdb40e09
set reg1 10
eq reg0 reg0 reg1
wmem >var_462ef6ff-03c3-4a9e-ac5c-ddcd12d4835d reg0
jmp >while_03f4493a-495f-4866-bdfb-c2f9b7c74377_begin
:while_03f4493a-495f-4866-bdfb-c2f9b7c74377_end
rmem reg0 >var_1de61b09-b66e-4368-94f6-d52e53bb0cff
set reg1 0
wmem reg0 reg1
jmp >var_07e3f61b-1260-43c0-867a-79e00ee6a0f3_end
:var_07e3f61b-1260-43c0-867a-79e00ee6a0f3
:var_07e3f61b-1260-43c0-867a-79e00ee6a0f3_end
call >alloc
wmem >var_07e3f61b-1260-43c0-867a-79e00ee6a0f3 reg0
rmem reg0 >var_07e3f61b-1260-43c0-867a-79e00ee6a0f3
call >print_number
set reg0 16384
rmem reg1 >var_07e3f61b-1260-43c0-867a-79e00ee6a0f3
set reg2 16384
call >str_len
call >mem_cp
set reg0 10
out reg0
rmem reg0 >var_07e3f61b-1260-43c0-867a-79e00ee6a0f3
call >print
set reg0 10
out reg0
ret
:input_end
jmp >alloc_end
:alloc
jmp >var_c8e1482e-082e-400c-9316-cfe7b5b25cf5_end
:var_c8e1482e-082e-400c-9316-cfe7b5b25cf5
:var_c8e1482e-082e-400c-9316-cfe7b5b25cf5_end
set reg0 0
wmem >var_c8e1482e-082e-400c-9316-cfe7b5b25cf5 reg0
jmp >var_54b76353-0621-4480-bfd3-a28d598cf805_end
:var_54b76353-0621-4480-bfd3-a28d598cf805
:var_54b76353-0621-4480-bfd3-a28d598cf805_end
set reg0 0
wmem >var_54b76353-0621-4480-bfd3-a28d598cf805 reg0
:while_b8039d7f-1301-4a80-917b-c19237bb25a7_begin
rmem reg0 >var_54b76353-0621-4480-bfd3-a28d598cf805
set reg1 6
gt reg0 reg0 reg1
call >not
jf reg0 >while_b8039d7f-1301-4a80-917b-c19237bb25a7_end
jmp >var_58964557-dc6a-4927-b8f0-92a07121c3e6_end
:var_58964557-dc6a-4927-b8f0-92a07121c3e6
:var_58964557-dc6a-4927-b8f0-92a07121c3e6_end
rmem reg0 >var_c8e1482e-082e-400c-9316-cfe7b5b25cf5
rmem reg0 reg0
wmem >var_58964557-dc6a-4927-b8f0-92a07121c3e6 reg0
rmem reg0 >var_58964557-dc6a-4927-b8f0-92a07121c3e6
call >not
jf reg0 >end_4226e130-6fbb-4780-b4ec-054540a8b333
rmem reg0 >var_54b76353-0621-4480-bfd3-a28d598cf805
add reg0 reg0 1
wmem >var_54b76353-0621-4480-bfd3-a28d598cf805 reg0
:end_4226e130-6fbb-4780-b4ec-054540a8b333
rmem reg0 >var_58964557-dc6a-4927-b8f0-92a07121c3e6
jf reg0 >end_964bcbbd-51e8-4439-8c90-c7caa3c0cec0
set reg0 0
wmem >var_54b76353-0621-4480-bfd3-a28d598cf805 reg0
:end_964bcbbd-51e8-4439-8c90-c7caa3c0cec0
rmem reg0 >var_c8e1482e-082e-400c-9316-cfe7b5b25cf5
add reg0 reg0 1
wmem >var_c8e1482e-082e-400c-9316-cfe7b5b25cf5 reg0
jmp >while_b8039d7f-1301-4a80-917b-c19237bb25a7_begin
:while_b8039d7f-1301-4a80-917b-c19237bb25a7_end
rmem reg0 >var_c8e1482e-082e-400c-9316-cfe7b5b25cf5
set reg1 1
call >subtract
wmem >var_c8e1482e-082e-400c-9316-cfe7b5b25cf5 reg0
rmem reg0 >var_c8e1482e-082e-400c-9316-cfe7b5b25cf5
ret
ret
:alloc_end
jmp >mem_cp_end
:mem_cp
jmp >var_df8245f9-c43f-43cf-b83a-28c162827f47_end
:var_df8245f9-c43f-43cf-b83a-28c162827f47
:var_df8245f9-c43f-43cf-b83a-28c162827f47_end
jmp >var_0ec97fdd-af8f-4a2f-9920-3d9e023a811c_end
:var_0ec97fdd-af8f-4a2f-9920-3d9e023a811c
:var_0ec97fdd-af8f-4a2f-9920-3d9e023a811c_end
jmp >var_18a146b9-3ee6-4283-91f9-9829cdb8600a_end
:var_18a146b9-3ee6-4283-91f9-9829cdb8600a
:var_18a146b9-3ee6-4283-91f9-9829cdb8600a_end
wmem >var_df8245f9-c43f-43cf-b83a-28c162827f47 reg0
wmem >var_0ec97fdd-af8f-4a2f-9920-3d9e023a811c reg1
wmem >var_18a146b9-3ee6-4283-91f9-9829cdb8600a reg2
jmp >var_34e56fbf-5bad-4aca-b7b5-a2120c2d1b11_end
:var_34e56fbf-5bad-4aca-b7b5-a2120c2d1b11
:var_34e56fbf-5bad-4aca-b7b5-a2120c2d1b11_end
set reg0 0
wmem >var_34e56fbf-5bad-4aca-b7b5-a2120c2d1b11 reg0
:while_eb97329a-2f17-4dfd-b93e-ad545f8a9a45_begin
rmem reg0 >var_34e56fbf-5bad-4aca-b7b5-a2120c2d1b11
rmem reg1 >var_18a146b9-3ee6-4283-91f9-9829cdb8600a
gt reg0 reg0 reg1
call >not
jf reg0 >while_eb97329a-2f17-4dfd-b93e-ad545f8a9a45_end
jmp >var_422c440e-af50-4c5d-baba-a95135d669a5_end
:var_422c440e-af50-4c5d-baba-a95135d669a5
:var_422c440e-af50-4c5d-baba-a95135d669a5_end
rmem reg0 >var_df8245f9-c43f-43cf-b83a-28c162827f47
rmem reg1 >var_34e56fbf-5bad-4aca-b7b5-a2120c2d1b11
add reg0 reg0 reg1
wmem >var_422c440e-af50-4c5d-baba-a95135d669a5 reg0
rmem reg0 >var_0ec97fdd-af8f-4a2f-9920-3d9e023a811c
rmem reg1 >var_34e56fbf-5bad-4aca-b7b5-a2120c2d1b11
add reg0 reg0 reg1
rmem reg1 >var_422c440e-af50-4c5d-baba-a95135d669a5
rmem reg0 reg0
wmem reg0 reg1
rmem reg0 >var_34e56fbf-5bad-4aca-b7b5-a2120c2d1b11
add reg0 reg0 1
wmem >var_34e56fbf-5bad-4aca-b7b5-a2120c2d1b11 reg0
jmp >while_eb97329a-2f17-4dfd-b93e-ad545f8a9a45_begin
:while_eb97329a-2f17-4dfd-b93e-ad545f8a9a45_end
ret
:mem_cp_end
jmp >str_len_end
:str_len
jmp >var_50a08e6e-8cab-4994-aafb-d87d56594185_end
:var_50a08e6e-8cab-4994-aafb-d87d56594185
:var_50a08e6e-8cab-4994-aafb-d87d56594185_end
wmem >var_50a08e6e-8cab-4994-aafb-d87d56594185 reg0
jmp >var_7a2f27d6-2047-4b98-bd06-4e0fa9de46bc_end
:var_7a2f27d6-2047-4b98-bd06-4e0fa9de46bc
:var_7a2f27d6-2047-4b98-bd06-4e0fa9de46bc_end
set reg0 0
wmem >var_7a2f27d6-2047-4b98-bd06-4e0fa9de46bc reg0
:while_b3011dfa-5b17-4767-b5c8-addbfbbacf05_begin
rmem reg0 >var_50a08e6e-8cab-4994-aafb-d87d56594185
rmem reg0 reg0
jf reg0 >while_b3011dfa-5b17-4767-b5c8-addbfbbacf05_end
rmem reg0 >var_50a08e6e-8cab-4994-aafb-d87d56594185
add reg0 reg0 1
wmem >var_50a08e6e-8cab-4994-aafb-d87d56594185 reg0
rmem reg0 >var_7a2f27d6-2047-4b98-bd06-4e0fa9de46bc
add reg0 reg0 1
wmem >var_7a2f27d6-2047-4b98-bd06-4e0fa9de46bc reg0
jmp >while_b3011dfa-5b17-4767-b5c8-addbfbbacf05_begin
:while_b3011dfa-5b17-4767-b5c8-addbfbbacf05_end
rmem reg0 >var_7a2f27d6-2047-4b98-bd06-4e0fa9de46bc
ret
ret
:str_len_end
jmp >println_end
:println
jmp >var_560e9e66-f171-46ba-ae7d-acbf95610d04_end
:var_560e9e66-f171-46ba-ae7d-acbf95610d04
:var_560e9e66-f171-46ba-ae7d-acbf95610d04_end
wmem >var_560e9e66-f171-46ba-ae7d-acbf95610d04 reg0
rmem reg0 >var_560e9e66-f171-46ba-ae7d-acbf95610d04
call >print
set reg0 10
out reg0
ret
:println_end
jmp >print_end
:print
jmp >var_1e7f4800-a496-442e-a8ee-06b1b69cba36_end
:var_1e7f4800-a496-442e-a8ee-06b1b69cba36
:var_1e7f4800-a496-442e-a8ee-06b1b69cba36_end
wmem >var_1e7f4800-a496-442e-a8ee-06b1b69cba36 reg0
:while_7d43af8d-7a3e-4851-8f89-fcf0dbedb171_begin
rmem reg0 >var_1e7f4800-a496-442e-a8ee-06b1b69cba36
rmem reg0 reg0
jf reg0 >while_7d43af8d-7a3e-4851-8f89-fcf0dbedb171_end
rmem reg0 >var_1e7f4800-a496-442e-a8ee-06b1b69cba36
rmem reg0 reg0
out reg0
rmem reg0 >var_1e7f4800-a496-442e-a8ee-06b1b69cba36
add reg0 reg0 1
wmem >var_1e7f4800-a496-442e-a8ee-06b1b69cba36 reg0
jmp >while_7d43af8d-7a3e-4851-8f89-fcf0dbedb171_begin
:while_7d43af8d-7a3e-4851-8f89-fcf0dbedb171_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_6743e9a9-6d82-4b7e-85b8-4987bdcb9ade_end
:var_6743e9a9-6d82-4b7e-85b8-4987bdcb9ade
:var_6743e9a9-6d82-4b7e-85b8-4987bdcb9ade_end
wmem >var_6743e9a9-6d82-4b7e-85b8-4987bdcb9ade reg0
rmem reg0 >var_6743e9a9-6d82-4b7e-85b8-4987bdcb9ade
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_3e10428b-7652-41be-be68-c33de74c4986
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_3e10428b-7652-41be-be68-c33de74c4986
jmp >var_ff0b9816-438a-43cf-81ec-22f939d31332_end
:var_ff0b9816-438a-43cf-81ec-22f939d31332
:var_ff0b9816-438a-43cf-81ec-22f939d31332_end
jmp >var_eb328bd2-11ad-41b9-99f3-929b69a90b5a_end
:var_eb328bd2-11ad-41b9-99f3-929b69a90b5a
:var_eb328bd2-11ad-41b9-99f3-929b69a90b5a_end
set reg0 0
wmem >var_eb328bd2-11ad-41b9-99f3-929b69a90b5a reg0
:while_0a126d5b-f5fe-44c4-bda2-a09d324b34fb_begin
rmem reg0 >var_6743e9a9-6d82-4b7e-85b8-4987bdcb9ade
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_0a126d5b-f5fe-44c4-bda2-a09d324b34fb_end
rmem reg0 >var_6743e9a9-6d82-4b7e-85b8-4987bdcb9ade
set reg1 10
mod reg0 reg0 reg1
wmem >var_ff0b9816-438a-43cf-81ec-22f939d31332 reg0
rmem reg0 >var_ff0b9816-438a-43cf-81ec-22f939d31332
rmem reg0 >var_ff0b9816-438a-43cf-81ec-22f939d31332
push reg0
rmem reg0 >var_eb328bd2-11ad-41b9-99f3-929b69a90b5a
add reg0 reg0 1
wmem >var_eb328bd2-11ad-41b9-99f3-929b69a90b5a reg0
rmem reg0 >var_6743e9a9-6d82-4b7e-85b8-4987bdcb9ade
set reg1 10
call >divide
wmem >var_6743e9a9-6d82-4b7e-85b8-4987bdcb9ade reg0
jmp >while_0a126d5b-f5fe-44c4-bda2-a09d324b34fb_begin
:while_0a126d5b-f5fe-44c4-bda2-a09d324b34fb_end
rmem reg0 >var_6743e9a9-6d82-4b7e-85b8-4987bdcb9ade
set reg1 10
mod reg0 reg0 reg1
wmem >var_ff0b9816-438a-43cf-81ec-22f939d31332 reg0
rmem reg0 >var_ff0b9816-438a-43cf-81ec-22f939d31332
rmem reg0 >var_ff0b9816-438a-43cf-81ec-22f939d31332
push reg0
rmem reg0 >var_eb328bd2-11ad-41b9-99f3-929b69a90b5a
add reg0 reg0 1
wmem >var_eb328bd2-11ad-41b9-99f3-929b69a90b5a reg0
jmp >var_f934cb00-3d33-433a-bf0f-4ca399205dcc_end
:var_f934cb00-3d33-433a-bf0f-4ca399205dcc
:var_f934cb00-3d33-433a-bf0f-4ca399205dcc_end
set reg0 0
wmem >var_f934cb00-3d33-433a-bf0f-4ca399205dcc reg0
:while_9d07b0d9-d899-44cb-8e4a-8e8b0e7a0bf6_begin
rmem reg0 >var_f934cb00-3d33-433a-bf0f-4ca399205dcc
rmem reg1 >var_eb328bd2-11ad-41b9-99f3-929b69a90b5a
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_9d07b0d9-d899-44cb-8e4a-8e8b0e7a0bf6_end
rmem reg0 >var_f934cb00-3d33-433a-bf0f-4ca399205dcc
set reg1 1
add reg0 reg0 reg1
wmem >var_f934cb00-3d33-433a-bf0f-4ca399205dcc reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_9d07b0d9-d899-44cb-8e4a-8e8b0e7a0bf6_begin
:while_9d07b0d9-d899-44cb-8e4a-8e8b0e7a0bf6_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_064d5c54-8f1f-4ce4-9412-4c90f7e65f99_end
:var_064d5c54-8f1f-4ce4-9412-4c90f7e65f99
:var_064d5c54-8f1f-4ce4-9412-4c90f7e65f99_end
set reg0 0
wmem >var_064d5c54-8f1f-4ce4-9412-4c90f7e65f99 reg0
:while_4eb54ccf-3180-44af-bcb2-0cbc09c1016c_begin
rmem reg0 >var_064d5c54-8f1f-4ce4-9412-4c90f7e65f99
rmem reg0 reg0
jf reg0 >while_4eb54ccf-3180-44af-bcb2-0cbc09c1016c_end
rmem reg0 >var_064d5c54-8f1f-4ce4-9412-4c90f7e65f99
add reg0 reg0 1
wmem >var_064d5c54-8f1f-4ce4-9412-4c90f7e65f99 reg0
rmem reg0 >var_064d5c54-8f1f-4ce4-9412-4c90f7e65f99
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_4eb54ccf-3180-44af-bcb2-0cbc09c1016c_begin
:while_4eb54ccf-3180-44af-bcb2-0cbc09c1016c_end
ret
:dump_mem_end
call >do_stuff
jmp >do_stuff_end
:do_stuff
jmp >var_c3ce7b23-f7c3-4690-988d-d3046e6fbce5_end
:var_c3ce7b23-f7c3-4690-988d-d3046e6fbce5
:var_c3ce7b23-f7c3-4690-988d-d3046e6fbce5_end
call >input
wmem >var_c3ce7b23-f7c3-4690-988d-d3046e6fbce5 reg0
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
