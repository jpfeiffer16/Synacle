jmp >str_cat_end
:str_cat
jmp >var_89b97b4f-4be2-47b0-9667-dc9086fac0e2_end
:var_89b97b4f-4be2-47b0-9667-dc9086fac0e2
:var_89b97b4f-4be2-47b0-9667-dc9086fac0e2_end
jmp >var_91be643d-4893-4f60-ab9f-51a0dd4cad67_end
:var_91be643d-4893-4f60-ab9f-51a0dd4cad67
:var_91be643d-4893-4f60-ab9f-51a0dd4cad67_end
wmem >var_89b97b4f-4be2-47b0-9667-dc9086fac0e2 reg0
wmem >var_91be643d-4893-4f60-ab9f-51a0dd4cad67 reg1
jmp >var_3b27a586-fef8-4e32-a2cf-052a6633c5c2_end
:var_3b27a586-fef8-4e32-a2cf-052a6633c5c2
:var_3b27a586-fef8-4e32-a2cf-052a6633c5c2_end
rmem reg0 >var_89b97b4f-4be2-47b0-9667-dc9086fac0e2
call >str_len
wmem >var_3b27a586-fef8-4e32-a2cf-052a6633c5c2 reg0
jmp >var_34a228dc-ac5b-4ea2-becd-1536ae8fd99b_end
:var_34a228dc-ac5b-4ea2-becd-1536ae8fd99b
:var_34a228dc-ac5b-4ea2-becd-1536ae8fd99b_end
rmem reg0 >var_91be643d-4893-4f60-ab9f-51a0dd4cad67
call >str_len
wmem >var_34a228dc-ac5b-4ea2-becd-1536ae8fd99b reg0
set reg0 10
out reg0
set reg0 10
out reg0
jmp >var_828ac251-9bed-4184-95e7-fef6917b9676_end
:var_828ac251-9bed-4184-95e7-fef6917b9676
:var_828ac251-9bed-4184-95e7-fef6917b9676_end
call >alloc
wmem >var_828ac251-9bed-4184-95e7-fef6917b9676 reg0
rmem reg0 >var_89b97b4f-4be2-47b0-9667-dc9086fac0e2
rmem reg1 >var_828ac251-9bed-4184-95e7-fef6917b9676
rmem reg2 >var_3b27a586-fef8-4e32-a2cf-052a6633c5c2
call >mem_cp
jmp >var_ccef3817-90c8-47cb-bf71-e55577252dbe_end
:var_ccef3817-90c8-47cb-bf71-e55577252dbe
:var_ccef3817-90c8-47cb-bf71-e55577252dbe_end
rmem reg0 >var_828ac251-9bed-4184-95e7-fef6917b9676
rmem reg1 >var_3b27a586-fef8-4e32-a2cf-052a6633c5c2
add reg0 reg0 reg1
wmem >var_ccef3817-90c8-47cb-bf71-e55577252dbe reg0
rmem reg0 >var_34a228dc-ac5b-4ea2-becd-1536ae8fd99b
add reg0 reg0 1
wmem >var_34a228dc-ac5b-4ea2-becd-1536ae8fd99b reg0
rmem reg0 >var_91be643d-4893-4f60-ab9f-51a0dd4cad67
rmem reg1 >var_ccef3817-90c8-47cb-bf71-e55577252dbe
rmem reg2 >var_34a228dc-ac5b-4ea2-becd-1536ae8fd99b
call >mem_cp
rmem reg0 >var_828ac251-9bed-4184-95e7-fef6917b9676
ret
ret
:str_cat_end
jmp >input_end
:input
jmp >var_eaa59cb1-6c5a-4cff-a50f-4625ebc73f3d_end
:var_eaa59cb1-6c5a-4cff-a50f-4625ebc73f3d
:var_eaa59cb1-6c5a-4cff-a50f-4625ebc73f3d_end
set reg0 16384
wmem >var_eaa59cb1-6c5a-4cff-a50f-4625ebc73f3d reg0
jmp >var_c890643a-eabb-4e14-bbea-cbd41f9bad88_end
:var_c890643a-eabb-4e14-bbea-cbd41f9bad88
:var_c890643a-eabb-4e14-bbea-cbd41f9bad88_end
in reg0
wmem >var_c890643a-eabb-4e14-bbea-cbd41f9bad88 reg0
jmp >var_b8d50054-b0f2-4b6e-b3a3-f8e0f09e0df6_end
:var_b8d50054-b0f2-4b6e-b3a3-f8e0f09e0df6
:var_b8d50054-b0f2-4b6e-b3a3-f8e0f09e0df6_end
rmem reg0 >var_c890643a-eabb-4e14-bbea-cbd41f9bad88
set reg1 10
eq reg0 reg0 reg1
wmem >var_b8d50054-b0f2-4b6e-b3a3-f8e0f09e0df6 reg0
:while_e218d8e1-27e4-42e0-b1e3-6de3f6e206f4_begin
rmem reg0 >var_b8d50054-b0f2-4b6e-b3a3-f8e0f09e0df6
call >not
rmem reg1 >var_c890643a-eabb-4e14-bbea-cbd41f9bad88
call >and
jf reg0 >while_e218d8e1-27e4-42e0-b1e3-6de3f6e206f4_end
rmem reg0 >var_eaa59cb1-6c5a-4cff-a50f-4625ebc73f3d
rmem reg1 >var_c890643a-eabb-4e14-bbea-cbd41f9bad88
wmem reg0 reg1
rmem reg0 >var_eaa59cb1-6c5a-4cff-a50f-4625ebc73f3d
add reg0 reg0 1
wmem >var_eaa59cb1-6c5a-4cff-a50f-4625ebc73f3d reg0
in reg0
wmem >var_c890643a-eabb-4e14-bbea-cbd41f9bad88 reg0
rmem reg0 >var_c890643a-eabb-4e14-bbea-cbd41f9bad88
set reg1 10
eq reg0 reg0 reg1
wmem >var_b8d50054-b0f2-4b6e-b3a3-f8e0f09e0df6 reg0
jmp >while_e218d8e1-27e4-42e0-b1e3-6de3f6e206f4_begin
:while_e218d8e1-27e4-42e0-b1e3-6de3f6e206f4_end
rmem reg0 >var_eaa59cb1-6c5a-4cff-a50f-4625ebc73f3d
set reg1 0
wmem reg0 reg1
jmp >var_614acb7d-c545-492e-a968-5fcf93842c08_end
:var_614acb7d-c545-492e-a968-5fcf93842c08
:var_614acb7d-c545-492e-a968-5fcf93842c08_end
call >alloc
wmem >var_614acb7d-c545-492e-a968-5fcf93842c08 reg0
jmp >var_b5cac256-a0cc-429c-91e3-bc700d1a6bc5_end
:var_b5cac256-a0cc-429c-91e3-bc700d1a6bc5
:var_b5cac256-a0cc-429c-91e3-bc700d1a6bc5_end
set reg0 16384
call >str_len
wmem >var_b5cac256-a0cc-429c-91e3-bc700d1a6bc5 reg0
set reg0 16384
rmem reg1 >var_614acb7d-c545-492e-a968-5fcf93842c08
rmem reg2 >var_b5cac256-a0cc-429c-91e3-bc700d1a6bc5
call >mem_cp
rmem reg0 >var_614acb7d-c545-492e-a968-5fcf93842c08
ret
ret
:input_end
jmp >alloc_end
:alloc
jmp >var_d02380dc-be64-40e9-825b-9cd2dd8d06d6_end
:var_d02380dc-be64-40e9-825b-9cd2dd8d06d6
:var_d02380dc-be64-40e9-825b-9cd2dd8d06d6_end
set reg0 0
wmem >var_d02380dc-be64-40e9-825b-9cd2dd8d06d6 reg0
jmp >var_79db1522-2220-4946-8b4b-7940ce40e07e_end
:var_79db1522-2220-4946-8b4b-7940ce40e07e
:var_79db1522-2220-4946-8b4b-7940ce40e07e_end
set reg0 0
wmem >var_79db1522-2220-4946-8b4b-7940ce40e07e reg0
:while_c3f4737f-ef20-460b-92bb-c124c597a4f2_begin
rmem reg0 >var_79db1522-2220-4946-8b4b-7940ce40e07e
set reg1 6
gt reg0 reg0 reg1
call >not
jf reg0 >while_c3f4737f-ef20-460b-92bb-c124c597a4f2_end
jmp >var_89a3a893-6820-40ab-a3df-9ba600f9a60f_end
:var_89a3a893-6820-40ab-a3df-9ba600f9a60f
:var_89a3a893-6820-40ab-a3df-9ba600f9a60f_end
rmem reg0 >var_d02380dc-be64-40e9-825b-9cd2dd8d06d6
rmem reg0 reg0
wmem >var_89a3a893-6820-40ab-a3df-9ba600f9a60f reg0
rmem reg0 >var_89a3a893-6820-40ab-a3df-9ba600f9a60f
call >not
jf reg0 >end_a25538ad-778c-45e2-87b3-321e7f133303
rmem reg0 >var_79db1522-2220-4946-8b4b-7940ce40e07e
add reg0 reg0 1
wmem >var_79db1522-2220-4946-8b4b-7940ce40e07e reg0
:end_a25538ad-778c-45e2-87b3-321e7f133303
rmem reg0 >var_89a3a893-6820-40ab-a3df-9ba600f9a60f
jf reg0 >end_bc59c969-a3ad-4afd-b3e3-e84727e28fc3
set reg0 0
wmem >var_79db1522-2220-4946-8b4b-7940ce40e07e reg0
:end_bc59c969-a3ad-4afd-b3e3-e84727e28fc3
rmem reg0 >var_d02380dc-be64-40e9-825b-9cd2dd8d06d6
add reg0 reg0 1
wmem >var_d02380dc-be64-40e9-825b-9cd2dd8d06d6 reg0
jmp >while_c3f4737f-ef20-460b-92bb-c124c597a4f2_begin
:while_c3f4737f-ef20-460b-92bb-c124c597a4f2_end
rmem reg0 >var_d02380dc-be64-40e9-825b-9cd2dd8d06d6
set reg1 1
call >subtract
wmem >var_d02380dc-be64-40e9-825b-9cd2dd8d06d6 reg0
rmem reg0 >var_d02380dc-be64-40e9-825b-9cd2dd8d06d6
ret
ret
:alloc_end
jmp >mem_cp_end
:mem_cp
jmp >var_92d8243e-23f6-4276-9c85-da93114f7c2f_end
:var_92d8243e-23f6-4276-9c85-da93114f7c2f
:var_92d8243e-23f6-4276-9c85-da93114f7c2f_end
jmp >var_d370a1bd-c19c-4ed1-885b-9dffc625662a_end
:var_d370a1bd-c19c-4ed1-885b-9dffc625662a
:var_d370a1bd-c19c-4ed1-885b-9dffc625662a_end
jmp >var_ccd9e105-6fd2-4fac-9306-b8e9d8cd9417_end
:var_ccd9e105-6fd2-4fac-9306-b8e9d8cd9417
:var_ccd9e105-6fd2-4fac-9306-b8e9d8cd9417_end
wmem >var_92d8243e-23f6-4276-9c85-da93114f7c2f reg0
wmem >var_d370a1bd-c19c-4ed1-885b-9dffc625662a reg1
wmem >var_ccd9e105-6fd2-4fac-9306-b8e9d8cd9417 reg2
jmp >var_301fa6ae-17c3-4362-b48f-30fc2054ec5b_end
:var_301fa6ae-17c3-4362-b48f-30fc2054ec5b
:var_301fa6ae-17c3-4362-b48f-30fc2054ec5b_end
set reg0 0
wmem >var_301fa6ae-17c3-4362-b48f-30fc2054ec5b reg0
:while_f5a89d23-0f93-48d4-9e40-6fd935e5b4d7_begin
rmem reg0 >var_301fa6ae-17c3-4362-b48f-30fc2054ec5b
rmem reg1 >var_ccd9e105-6fd2-4fac-9306-b8e9d8cd9417
gt reg0 reg0 reg1
call >not
jf reg0 >while_f5a89d23-0f93-48d4-9e40-6fd935e5b4d7_end
jmp >var_a2d5f270-ab7d-4845-a863-e6818b3c3080_end
:var_a2d5f270-ab7d-4845-a863-e6818b3c3080
:var_a2d5f270-ab7d-4845-a863-e6818b3c3080_end
rmem reg0 >var_92d8243e-23f6-4276-9c85-da93114f7c2f
rmem reg1 >var_301fa6ae-17c3-4362-b48f-30fc2054ec5b
add reg0 reg0 reg1
wmem >var_a2d5f270-ab7d-4845-a863-e6818b3c3080 reg0
jmp >var_efbd9354-42b1-4514-8160-b0f4a39e2b25_end
:var_efbd9354-42b1-4514-8160-b0f4a39e2b25
:var_efbd9354-42b1-4514-8160-b0f4a39e2b25_end
rmem reg0 >var_d370a1bd-c19c-4ed1-885b-9dffc625662a
rmem reg1 >var_301fa6ae-17c3-4362-b48f-30fc2054ec5b
add reg0 reg0 reg1
wmem >var_efbd9354-42b1-4514-8160-b0f4a39e2b25 reg0
rmem reg0 >var_efbd9354-42b1-4514-8160-b0f4a39e2b25
rmem reg1 >var_a2d5f270-ab7d-4845-a863-e6818b3c3080
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_301fa6ae-17c3-4362-b48f-30fc2054ec5b
add reg0 reg0 1
wmem >var_301fa6ae-17c3-4362-b48f-30fc2054ec5b reg0
jmp >while_f5a89d23-0f93-48d4-9e40-6fd935e5b4d7_begin
:while_f5a89d23-0f93-48d4-9e40-6fd935e5b4d7_end
ret
:mem_cp_end
jmp >str_len_end
:str_len
jmp >var_95717f15-524e-4094-a3fa-465ee67a9b99_end
:var_95717f15-524e-4094-a3fa-465ee67a9b99
:var_95717f15-524e-4094-a3fa-465ee67a9b99_end
wmem >var_95717f15-524e-4094-a3fa-465ee67a9b99 reg0
jmp >var_9f5cdc30-8d17-4eb4-880d-a26305e556de_end
:var_9f5cdc30-8d17-4eb4-880d-a26305e556de
:var_9f5cdc30-8d17-4eb4-880d-a26305e556de_end
set reg0 0
wmem >var_9f5cdc30-8d17-4eb4-880d-a26305e556de reg0
:while_59e2e843-1779-4015-a1ae-588349b5c274_begin
rmem reg0 >var_95717f15-524e-4094-a3fa-465ee67a9b99
rmem reg0 reg0
jf reg0 >while_59e2e843-1779-4015-a1ae-588349b5c274_end
rmem reg0 >var_95717f15-524e-4094-a3fa-465ee67a9b99
add reg0 reg0 1
wmem >var_95717f15-524e-4094-a3fa-465ee67a9b99 reg0
rmem reg0 >var_9f5cdc30-8d17-4eb4-880d-a26305e556de
add reg0 reg0 1
wmem >var_9f5cdc30-8d17-4eb4-880d-a26305e556de reg0
jmp >while_59e2e843-1779-4015-a1ae-588349b5c274_begin
:while_59e2e843-1779-4015-a1ae-588349b5c274_end
rmem reg0 >var_9f5cdc30-8d17-4eb4-880d-a26305e556de
ret
ret
:str_len_end
jmp >println_end
:println
jmp >var_0c46e8b8-88b6-4676-b6ba-3f121d33cea6_end
:var_0c46e8b8-88b6-4676-b6ba-3f121d33cea6
:var_0c46e8b8-88b6-4676-b6ba-3f121d33cea6_end
wmem >var_0c46e8b8-88b6-4676-b6ba-3f121d33cea6 reg0
rmem reg0 >var_0c46e8b8-88b6-4676-b6ba-3f121d33cea6
call >print
set reg0 10
out reg0
ret
:println_end
jmp >print_end
:print
jmp >var_05eb51d0-801b-47af-bbb6-c721cebd896d_end
:var_05eb51d0-801b-47af-bbb6-c721cebd896d
:var_05eb51d0-801b-47af-bbb6-c721cebd896d_end
wmem >var_05eb51d0-801b-47af-bbb6-c721cebd896d reg0
:while_0f7f1076-c9ee-4133-8373-092013fd3f38_begin
rmem reg0 >var_05eb51d0-801b-47af-bbb6-c721cebd896d
rmem reg0 reg0
jf reg0 >while_0f7f1076-c9ee-4133-8373-092013fd3f38_end
rmem reg0 >var_05eb51d0-801b-47af-bbb6-c721cebd896d
rmem reg0 reg0
out reg0
rmem reg0 >var_05eb51d0-801b-47af-bbb6-c721cebd896d
add reg0 reg0 1
wmem >var_05eb51d0-801b-47af-bbb6-c721cebd896d reg0
jmp >while_0f7f1076-c9ee-4133-8373-092013fd3f38_begin
:while_0f7f1076-c9ee-4133-8373-092013fd3f38_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_4773d254-6280-4fae-991c-530989028dc9_end
:var_4773d254-6280-4fae-991c-530989028dc9
:var_4773d254-6280-4fae-991c-530989028dc9_end
wmem >var_4773d254-6280-4fae-991c-530989028dc9 reg0
rmem reg0 >var_4773d254-6280-4fae-991c-530989028dc9
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_50df4962-ade4-4fac-be9e-8058e5780825
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_50df4962-ade4-4fac-be9e-8058e5780825
jmp >var_470c1ad3-8c51-4fe1-9485-bf4e69536e80_end
:var_470c1ad3-8c51-4fe1-9485-bf4e69536e80
:var_470c1ad3-8c51-4fe1-9485-bf4e69536e80_end
jmp >var_79d1eeb6-a5dd-4c01-acac-c9322d996d7b_end
:var_79d1eeb6-a5dd-4c01-acac-c9322d996d7b
:var_79d1eeb6-a5dd-4c01-acac-c9322d996d7b_end
set reg0 0
wmem >var_79d1eeb6-a5dd-4c01-acac-c9322d996d7b reg0
:while_a0d58568-b40c-4338-a477-928c7a2e0fad_begin
rmem reg0 >var_4773d254-6280-4fae-991c-530989028dc9
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_a0d58568-b40c-4338-a477-928c7a2e0fad_end
rmem reg0 >var_4773d254-6280-4fae-991c-530989028dc9
set reg1 10
mod reg0 reg0 reg1
wmem >var_470c1ad3-8c51-4fe1-9485-bf4e69536e80 reg0
rmem reg0 >var_470c1ad3-8c51-4fe1-9485-bf4e69536e80
rmem reg0 >var_470c1ad3-8c51-4fe1-9485-bf4e69536e80
push reg0
rmem reg0 >var_79d1eeb6-a5dd-4c01-acac-c9322d996d7b
add reg0 reg0 1
wmem >var_79d1eeb6-a5dd-4c01-acac-c9322d996d7b reg0
rmem reg0 >var_4773d254-6280-4fae-991c-530989028dc9
set reg1 10
call >divide
wmem >var_4773d254-6280-4fae-991c-530989028dc9 reg0
jmp >while_a0d58568-b40c-4338-a477-928c7a2e0fad_begin
:while_a0d58568-b40c-4338-a477-928c7a2e0fad_end
rmem reg0 >var_4773d254-6280-4fae-991c-530989028dc9
set reg1 10
mod reg0 reg0 reg1
wmem >var_470c1ad3-8c51-4fe1-9485-bf4e69536e80 reg0
rmem reg0 >var_470c1ad3-8c51-4fe1-9485-bf4e69536e80
rmem reg0 >var_470c1ad3-8c51-4fe1-9485-bf4e69536e80
push reg0
rmem reg0 >var_79d1eeb6-a5dd-4c01-acac-c9322d996d7b
add reg0 reg0 1
wmem >var_79d1eeb6-a5dd-4c01-acac-c9322d996d7b reg0
jmp >var_16fef293-0ea7-46c7-af32-edd57790a806_end
:var_16fef293-0ea7-46c7-af32-edd57790a806
:var_16fef293-0ea7-46c7-af32-edd57790a806_end
set reg0 0
wmem >var_16fef293-0ea7-46c7-af32-edd57790a806 reg0
:while_82dd9bf9-e69f-411a-934f-a265371ac125_begin
rmem reg0 >var_16fef293-0ea7-46c7-af32-edd57790a806
rmem reg1 >var_79d1eeb6-a5dd-4c01-acac-c9322d996d7b
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_82dd9bf9-e69f-411a-934f-a265371ac125_end
rmem reg0 >var_16fef293-0ea7-46c7-af32-edd57790a806
set reg1 1
add reg0 reg0 reg1
wmem >var_16fef293-0ea7-46c7-af32-edd57790a806 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_82dd9bf9-e69f-411a-934f-a265371ac125_begin
:while_82dd9bf9-e69f-411a-934f-a265371ac125_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_d509d906-d31e-4d69-a328-8fb0ba459408_end
:var_d509d906-d31e-4d69-a328-8fb0ba459408
:var_d509d906-d31e-4d69-a328-8fb0ba459408_end
set reg0 0
wmem >var_d509d906-d31e-4d69-a328-8fb0ba459408 reg0
:while_e93fd35f-05e3-4430-98df-d106fff4a98e_begin
rmem reg0 >var_d509d906-d31e-4d69-a328-8fb0ba459408
rmem reg0 reg0
jf reg0 >while_e93fd35f-05e3-4430-98df-d106fff4a98e_end
rmem reg0 >var_d509d906-d31e-4d69-a328-8fb0ba459408
add reg0 reg0 1
wmem >var_d509d906-d31e-4d69-a328-8fb0ba459408 reg0
rmem reg0 >var_d509d906-d31e-4d69-a328-8fb0ba459408
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_e93fd35f-05e3-4430-98df-d106fff4a98e_begin
:while_e93fd35f-05e3-4430-98df-d106fff4a98e_end
ret
:dump_mem_end
call >do_stuff
jmp >do_stuff_end
:do_stuff
jmp >var_cc36efd4-4e75-4f17-8ee7-a229b98373e5_end
:var_cc36efd4-4e75-4f17-8ee7-a229b98373e5
:var_cc36efd4-4e75-4f17-8ee7-a229b98373e5_end
call >input
wmem >var_cc36efd4-4e75-4f17-8ee7-a229b98373e5 reg0
jmp >var_c29465e7-1e31-4ef4-aab4-111fc69615cb_end
:var_c29465e7-1e31-4ef4-aab4-111fc69615cb
&i
&,
32
0
:var_c29465e7-1e31-4ef4-aab4-111fc69615cb_end
wmem >var_c29465e7-1e31-4ef4-aab4-111fc69615cb &H
set reg0 >var_c29465e7-1e31-4ef4-aab4-111fc69615cb
rmem reg1 >var_cc36efd4-4e75-4f17-8ee7-a229b98373e5
call >str_cat
call >println
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
