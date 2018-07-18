jmp >input_end
:input
jmp >var_a2d49bed-cb68-414e-b4d1-f45d9ce81068_end
:var_a2d49bed-cb68-414e-b4d1-f45d9ce81068
:var_a2d49bed-cb68-414e-b4d1-f45d9ce81068_end
set reg0 16384
wmem >var_a2d49bed-cb68-414e-b4d1-f45d9ce81068 reg0
jmp >var_24c006d0-aba5-475a-8269-8c237bc2c355_end
:var_24c006d0-aba5-475a-8269-8c237bc2c355
:var_24c006d0-aba5-475a-8269-8c237bc2c355_end
in reg0
wmem >var_24c006d0-aba5-475a-8269-8c237bc2c355 reg0
jmp >var_c9b3216b-bb07-4f9f-9138-95e2010c4a6d_end
:var_c9b3216b-bb07-4f9f-9138-95e2010c4a6d
:var_c9b3216b-bb07-4f9f-9138-95e2010c4a6d_end
rmem reg0 >var_24c006d0-aba5-475a-8269-8c237bc2c355
set reg1 10
eq reg0 reg0 reg1
wmem >var_c9b3216b-bb07-4f9f-9138-95e2010c4a6d reg0
:while_4bd840dd-b63c-4dcd-aff7-6cad79315d53_begin
rmem reg0 >var_c9b3216b-bb07-4f9f-9138-95e2010c4a6d
call >not
rmem reg1 >var_24c006d0-aba5-475a-8269-8c237bc2c355
call >and
jf reg0 >while_4bd840dd-b63c-4dcd-aff7-6cad79315d53_end
rmem reg0 >var_a2d49bed-cb68-414e-b4d1-f45d9ce81068
rmem reg1 >var_24c006d0-aba5-475a-8269-8c237bc2c355
wmem reg0 reg1
rmem reg0 >var_a2d49bed-cb68-414e-b4d1-f45d9ce81068
add reg0 reg0 1
wmem >var_a2d49bed-cb68-414e-b4d1-f45d9ce81068 reg0
in reg0
wmem >var_24c006d0-aba5-475a-8269-8c237bc2c355 reg0
rmem reg0 >var_24c006d0-aba5-475a-8269-8c237bc2c355
set reg1 10
eq reg0 reg0 reg1
wmem >var_c9b3216b-bb07-4f9f-9138-95e2010c4a6d reg0
jmp >while_4bd840dd-b63c-4dcd-aff7-6cad79315d53_begin
:while_4bd840dd-b63c-4dcd-aff7-6cad79315d53_end
rmem reg0 >var_a2d49bed-cb68-414e-b4d1-f45d9ce81068
set reg1 0
wmem reg0 reg1
jmp >var_1f99c53c-6ff5-42c6-b5ec-b8c423e45b88_end
:var_1f99c53c-6ff5-42c6-b5ec-b8c423e45b88
:var_1f99c53c-6ff5-42c6-b5ec-b8c423e45b88_end
call >alloc
wmem >var_1f99c53c-6ff5-42c6-b5ec-b8c423e45b88 reg0
set reg0 16384
call >str_len
call >print_number
rmem reg0 >var_1f99c53c-6ff5-42c6-b5ec-b8c423e45b88
ret
ret
:input_end
jmp >alloc_end
:alloc
jmp >var_8c3ab1a5-b246-41fb-89d3-bd12bacc817d_end
:var_8c3ab1a5-b246-41fb-89d3-bd12bacc817d
:var_8c3ab1a5-b246-41fb-89d3-bd12bacc817d_end
set reg0 0
wmem >var_8c3ab1a5-b246-41fb-89d3-bd12bacc817d reg0
jmp >var_12f04f2e-72bd-447d-bc80-ef37f79dbab9_end
:var_12f04f2e-72bd-447d-bc80-ef37f79dbab9
:var_12f04f2e-72bd-447d-bc80-ef37f79dbab9_end
set reg0 0
wmem >var_12f04f2e-72bd-447d-bc80-ef37f79dbab9 reg0
:while_af646ddf-b5cc-4108-a948-7c4843c20b11_begin
rmem reg0 >var_12f04f2e-72bd-447d-bc80-ef37f79dbab9
set reg1 6
gt reg0 reg0 reg1
call >not
jf reg0 >while_af646ddf-b5cc-4108-a948-7c4843c20b11_end
jmp >var_b527014d-930c-48f3-8b55-73c2acbacace_end
:var_b527014d-930c-48f3-8b55-73c2acbacace
:var_b527014d-930c-48f3-8b55-73c2acbacace_end
rmem reg0 >var_8c3ab1a5-b246-41fb-89d3-bd12bacc817d
rmem reg0 reg0
wmem >var_b527014d-930c-48f3-8b55-73c2acbacace reg0
rmem reg0 >var_b527014d-930c-48f3-8b55-73c2acbacace
call >not
jf reg0 >end_b1bd75c8-3e38-496a-a14c-fda527bdad40
rmem reg0 >var_12f04f2e-72bd-447d-bc80-ef37f79dbab9
add reg0 reg0 1
wmem >var_12f04f2e-72bd-447d-bc80-ef37f79dbab9 reg0
:end_b1bd75c8-3e38-496a-a14c-fda527bdad40
rmem reg0 >var_b527014d-930c-48f3-8b55-73c2acbacace
jf reg0 >end_400416a4-e6df-4172-8144-c201a79cd7e3
set reg0 0
wmem >var_12f04f2e-72bd-447d-bc80-ef37f79dbab9 reg0
:end_400416a4-e6df-4172-8144-c201a79cd7e3
rmem reg0 >var_8c3ab1a5-b246-41fb-89d3-bd12bacc817d
add reg0 reg0 1
wmem >var_8c3ab1a5-b246-41fb-89d3-bd12bacc817d reg0
jmp >while_af646ddf-b5cc-4108-a948-7c4843c20b11_begin
:while_af646ddf-b5cc-4108-a948-7c4843c20b11_end
rmem reg0 >var_8c3ab1a5-b246-41fb-89d3-bd12bacc817d
set reg1 1
call >subtract
wmem >var_8c3ab1a5-b246-41fb-89d3-bd12bacc817d reg0
rmem reg0 >var_8c3ab1a5-b246-41fb-89d3-bd12bacc817d
ret
ret
:alloc_end
jmp >mem_cp_end
:mem_cp
jmp >var_1b8a17b9-9450-4e1b-b9ba-2b2771ce2f36_end
:var_1b8a17b9-9450-4e1b-b9ba-2b2771ce2f36
:var_1b8a17b9-9450-4e1b-b9ba-2b2771ce2f36_end
jmp >var_6e5217a4-697c-4b32-aea5-1fe751c4478a_end
:var_6e5217a4-697c-4b32-aea5-1fe751c4478a
:var_6e5217a4-697c-4b32-aea5-1fe751c4478a_end
jmp >var_cd4330fb-3a18-4ec5-b336-9d6f512be1f9_end
:var_cd4330fb-3a18-4ec5-b336-9d6f512be1f9
:var_cd4330fb-3a18-4ec5-b336-9d6f512be1f9_end
wmem >var_1b8a17b9-9450-4e1b-b9ba-2b2771ce2f36 reg0
wmem >var_6e5217a4-697c-4b32-aea5-1fe751c4478a reg1
wmem >var_cd4330fb-3a18-4ec5-b336-9d6f512be1f9 reg2
jmp >var_5b33bd22-9d24-4ea3-b66a-1ab6b868acc5_end
:var_5b33bd22-9d24-4ea3-b66a-1ab6b868acc5
:var_5b33bd22-9d24-4ea3-b66a-1ab6b868acc5_end
set reg0 0
wmem >var_5b33bd22-9d24-4ea3-b66a-1ab6b868acc5 reg0
:while_99865fe5-220c-4c2a-824c-e5cda0cc5f5d_begin
rmem reg0 >var_5b33bd22-9d24-4ea3-b66a-1ab6b868acc5
rmem reg1 >var_cd4330fb-3a18-4ec5-b336-9d6f512be1f9
gt reg0 reg0 reg1
call >not
jf reg0 >while_99865fe5-220c-4c2a-824c-e5cda0cc5f5d_end
jmp >var_e6666ddb-b1ea-42d3-a21e-a2e453ca4a6b_end
:var_e6666ddb-b1ea-42d3-a21e-a2e453ca4a6b
:var_e6666ddb-b1ea-42d3-a21e-a2e453ca4a6b_end
rmem reg0 >var_1b8a17b9-9450-4e1b-b9ba-2b2771ce2f36
rmem reg1 >var_5b33bd22-9d24-4ea3-b66a-1ab6b868acc5
add reg0 reg0 reg1
wmem >var_e6666ddb-b1ea-42d3-a21e-a2e453ca4a6b reg0
rmem reg0 >var_6e5217a4-697c-4b32-aea5-1fe751c4478a
rmem reg1 >var_5b33bd22-9d24-4ea3-b66a-1ab6b868acc5
add reg0 reg0 reg1
rmem reg1 >var_e6666ddb-b1ea-42d3-a21e-a2e453ca4a6b
rmem reg0 reg0
wmem reg0 reg1
rmem reg0 >var_5b33bd22-9d24-4ea3-b66a-1ab6b868acc5
add reg0 reg0 1
wmem >var_5b33bd22-9d24-4ea3-b66a-1ab6b868acc5 reg0
jmp >while_99865fe5-220c-4c2a-824c-e5cda0cc5f5d_begin
:while_99865fe5-220c-4c2a-824c-e5cda0cc5f5d_end
ret
:mem_cp_end
jmp >str_len_end
:str_len
jmp >var_3fbcd09a-8805-45ff-b4a0-dac674cc610d_end
:var_3fbcd09a-8805-45ff-b4a0-dac674cc610d
:var_3fbcd09a-8805-45ff-b4a0-dac674cc610d_end
wmem >var_3fbcd09a-8805-45ff-b4a0-dac674cc610d reg0
jmp >var_17eda8cd-686a-4913-a77e-539b62846bb2_end
:var_17eda8cd-686a-4913-a77e-539b62846bb2
:var_17eda8cd-686a-4913-a77e-539b62846bb2_end
set reg0 0
wmem >var_17eda8cd-686a-4913-a77e-539b62846bb2 reg0
:while_8740a585-e78b-4daa-97cb-4a0199a6ee18_begin
rmem reg0 >var_3fbcd09a-8805-45ff-b4a0-dac674cc610d
rmem reg0 reg0
jf reg0 >while_8740a585-e78b-4daa-97cb-4a0199a6ee18_end
rmem reg0 >var_3fbcd09a-8805-45ff-b4a0-dac674cc610d
add reg0 reg0 1
wmem >var_3fbcd09a-8805-45ff-b4a0-dac674cc610d reg0
rmem reg0 >var_17eda8cd-686a-4913-a77e-539b62846bb2
add reg0 reg0 1
wmem >var_17eda8cd-686a-4913-a77e-539b62846bb2 reg0
jmp >while_8740a585-e78b-4daa-97cb-4a0199a6ee18_begin
:while_8740a585-e78b-4daa-97cb-4a0199a6ee18_end
rmem reg0 >var_17eda8cd-686a-4913-a77e-539b62846bb2
ret
ret
:str_len_end
jmp >println_end
:println
jmp >var_4f6e000f-acab-4fe4-b848-b7a51e3884ee_end
:var_4f6e000f-acab-4fe4-b848-b7a51e3884ee
:var_4f6e000f-acab-4fe4-b848-b7a51e3884ee_end
wmem >var_4f6e000f-acab-4fe4-b848-b7a51e3884ee reg0
rmem reg0 >var_4f6e000f-acab-4fe4-b848-b7a51e3884ee
call >print
set reg0 10
out reg0
ret
:println_end
jmp >print_end
:print
jmp >var_9f081795-3694-4523-81be-136569e6b20a_end
:var_9f081795-3694-4523-81be-136569e6b20a
:var_9f081795-3694-4523-81be-136569e6b20a_end
wmem >var_9f081795-3694-4523-81be-136569e6b20a reg0
:while_81300001-ef21-445b-a013-d70c0057670f_begin
rmem reg0 >var_9f081795-3694-4523-81be-136569e6b20a
rmem reg0 reg0
jf reg0 >while_81300001-ef21-445b-a013-d70c0057670f_end
rmem reg0 >var_9f081795-3694-4523-81be-136569e6b20a
rmem reg0 reg0
out reg0
rmem reg0 >var_9f081795-3694-4523-81be-136569e6b20a
add reg0 reg0 1
wmem >var_9f081795-3694-4523-81be-136569e6b20a reg0
jmp >while_81300001-ef21-445b-a013-d70c0057670f_begin
:while_81300001-ef21-445b-a013-d70c0057670f_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_99867c03-a742-4c52-bbe4-0f476a341dbf_end
:var_99867c03-a742-4c52-bbe4-0f476a341dbf
:var_99867c03-a742-4c52-bbe4-0f476a341dbf_end
wmem >var_99867c03-a742-4c52-bbe4-0f476a341dbf reg0
rmem reg0 >var_99867c03-a742-4c52-bbe4-0f476a341dbf
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_5bee1c9d-492d-4e5f-8111-65c85de5589a
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_5bee1c9d-492d-4e5f-8111-65c85de5589a
jmp >var_9e105f2f-dd3f-4744-ad1a-c1a072876337_end
:var_9e105f2f-dd3f-4744-ad1a-c1a072876337
:var_9e105f2f-dd3f-4744-ad1a-c1a072876337_end
jmp >var_ade08657-ed25-4029-8cc0-86511775f4b6_end
:var_ade08657-ed25-4029-8cc0-86511775f4b6
:var_ade08657-ed25-4029-8cc0-86511775f4b6_end
set reg0 0
wmem >var_ade08657-ed25-4029-8cc0-86511775f4b6 reg0
:while_951e6f93-590a-4c28-a33f-9b416b3014aa_begin
rmem reg0 >var_99867c03-a742-4c52-bbe4-0f476a341dbf
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_951e6f93-590a-4c28-a33f-9b416b3014aa_end
rmem reg0 >var_99867c03-a742-4c52-bbe4-0f476a341dbf
set reg1 10
mod reg0 reg0 reg1
wmem >var_9e105f2f-dd3f-4744-ad1a-c1a072876337 reg0
rmem reg0 >var_9e105f2f-dd3f-4744-ad1a-c1a072876337
rmem reg0 >var_9e105f2f-dd3f-4744-ad1a-c1a072876337
push reg0
rmem reg0 >var_ade08657-ed25-4029-8cc0-86511775f4b6
add reg0 reg0 1
wmem >var_ade08657-ed25-4029-8cc0-86511775f4b6 reg0
rmem reg0 >var_99867c03-a742-4c52-bbe4-0f476a341dbf
set reg1 10
call >divide
wmem >var_99867c03-a742-4c52-bbe4-0f476a341dbf reg0
jmp >while_951e6f93-590a-4c28-a33f-9b416b3014aa_begin
:while_951e6f93-590a-4c28-a33f-9b416b3014aa_end
rmem reg0 >var_99867c03-a742-4c52-bbe4-0f476a341dbf
set reg1 10
mod reg0 reg0 reg1
wmem >var_9e105f2f-dd3f-4744-ad1a-c1a072876337 reg0
rmem reg0 >var_9e105f2f-dd3f-4744-ad1a-c1a072876337
rmem reg0 >var_9e105f2f-dd3f-4744-ad1a-c1a072876337
push reg0
rmem reg0 >var_ade08657-ed25-4029-8cc0-86511775f4b6
add reg0 reg0 1
wmem >var_ade08657-ed25-4029-8cc0-86511775f4b6 reg0
jmp >var_c2d2e732-ac99-46c8-be04-d903eda0fcca_end
:var_c2d2e732-ac99-46c8-be04-d903eda0fcca
:var_c2d2e732-ac99-46c8-be04-d903eda0fcca_end
set reg0 0
wmem >var_c2d2e732-ac99-46c8-be04-d903eda0fcca reg0
:while_499f087c-1e57-4df7-8121-5925e6bf43e0_begin
rmem reg0 >var_c2d2e732-ac99-46c8-be04-d903eda0fcca
rmem reg1 >var_ade08657-ed25-4029-8cc0-86511775f4b6
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_499f087c-1e57-4df7-8121-5925e6bf43e0_end
rmem reg0 >var_c2d2e732-ac99-46c8-be04-d903eda0fcca
set reg1 1
add reg0 reg0 reg1
wmem >var_c2d2e732-ac99-46c8-be04-d903eda0fcca reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_499f087c-1e57-4df7-8121-5925e6bf43e0_begin
:while_499f087c-1e57-4df7-8121-5925e6bf43e0_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_e5f9a712-9592-4c29-bada-3799f8c3d007_end
:var_e5f9a712-9592-4c29-bada-3799f8c3d007
:var_e5f9a712-9592-4c29-bada-3799f8c3d007_end
set reg0 0
wmem >var_e5f9a712-9592-4c29-bada-3799f8c3d007 reg0
:while_76a1f7e6-f96a-43aa-83fe-cd154bf544ee_begin
rmem reg0 >var_e5f9a712-9592-4c29-bada-3799f8c3d007
rmem reg0 reg0
jf reg0 >while_76a1f7e6-f96a-43aa-83fe-cd154bf544ee_end
rmem reg0 >var_e5f9a712-9592-4c29-bada-3799f8c3d007
add reg0 reg0 1
wmem >var_e5f9a712-9592-4c29-bada-3799f8c3d007 reg0
rmem reg0 >var_e5f9a712-9592-4c29-bada-3799f8c3d007
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_76a1f7e6-f96a-43aa-83fe-cd154bf544ee_begin
:while_76a1f7e6-f96a-43aa-83fe-cd154bf544ee_end
ret
:dump_mem_end
call >do_stuff
jmp >do_stuff_end
:do_stuff
jmp >var_758324fd-f87d-4f88-83a8-53709309fcf0_end
:var_758324fd-f87d-4f88-83a8-53709309fcf0
:var_758324fd-f87d-4f88-83a8-53709309fcf0_end
call >input
wmem >var_758324fd-f87d-4f88-83a8-53709309fcf0 reg0
rmem reg0 >var_758324fd-f87d-4f88-83a8-53709309fcf0
call >print
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
