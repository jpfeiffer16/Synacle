jmp >int_end
:int
jmp >var_b45acb01-e92d-4e29-9a61-b990c1d5d0da_end
:var_b45acb01-e92d-4e29-9a61-b990c1d5d0da
:var_b45acb01-e92d-4e29-9a61-b990c1d5d0da_end
wmem >var_b45acb01-e92d-4e29-9a61-b990c1d5d0da reg0
jmp >var_36f7b0dd-7b21-4ded-8dbb-a92049e62cea_end
:var_36f7b0dd-7b21-4ded-8dbb-a92049e62cea
:var_36f7b0dd-7b21-4ded-8dbb-a92049e62cea_end
rmem reg0 >var_b45acb01-e92d-4e29-9a61-b990c1d5d0da
call >flip_str
wmem >var_36f7b0dd-7b21-4ded-8dbb-a92049e62cea reg0
jmp >var_c05e662c-c748-4168-a320-1f7dc71dfa45_end
:var_c05e662c-c748-4168-a320-1f7dc71dfa45
:var_c05e662c-c748-4168-a320-1f7dc71dfa45_end
rmem reg0 >var_36f7b0dd-7b21-4ded-8dbb-a92049e62cea
call >str_len
wmem >var_c05e662c-c748-4168-a320-1f7dc71dfa45 reg0
rmem reg0 >var_c05e662c-c748-4168-a320-1f7dc71dfa45
set reg1 1
call >subtract
wmem >var_c05e662c-c748-4168-a320-1f7dc71dfa45 reg0
jmp >var_2763c18c-7fed-478b-a44f-730c5794a5e2_end
:var_2763c18c-7fed-478b-a44f-730c5794a5e2
:var_2763c18c-7fed-478b-a44f-730c5794a5e2_end
set reg0 0
wmem >var_2763c18c-7fed-478b-a44f-730c5794a5e2 reg0
jmp >var_1e4e18b8-39e8-4176-8fc5-a1b560367aad_end
:var_1e4e18b8-39e8-4176-8fc5-a1b560367aad
:var_1e4e18b8-39e8-4176-8fc5-a1b560367aad_end
set reg0 0
wmem >var_1e4e18b8-39e8-4176-8fc5-a1b560367aad reg0
:while_16a626ce-e28c-4633-bdd7-1377b1ba47a3_begin
rmem reg0 >var_2763c18c-7fed-478b-a44f-730c5794a5e2
rmem reg1 >var_c05e662c-c748-4168-a320-1f7dc71dfa45
gt reg0 reg0 reg1
call >not
jf reg0 >while_16a626ce-e28c-4633-bdd7-1377b1ba47a3_end
jmp >var_4c5dc418-5a55-4b64-8cc8-a66d30b16448_end
:var_4c5dc418-5a55-4b64-8cc8-a66d30b16448
:var_4c5dc418-5a55-4b64-8cc8-a66d30b16448_end
rmem reg0 >var_b45acb01-e92d-4e29-9a61-b990c1d5d0da
rmem reg1 >var_2763c18c-7fed-478b-a44f-730c5794a5e2
add reg0 reg0 reg1
wmem >var_4c5dc418-5a55-4b64-8cc8-a66d30b16448 reg0
rmem reg0 >var_4c5dc418-5a55-4b64-8cc8-a66d30b16448
rmem reg0 reg0
wmem >var_4c5dc418-5a55-4b64-8cc8-a66d30b16448 reg0
jmp >var_c03c2271-57cc-4d32-941d-5157fad48298_end
:var_c03c2271-57cc-4d32-941d-5157fad48298
:var_c03c2271-57cc-4d32-941d-5157fad48298_end
rmem reg0 >var_4c5dc418-5a55-4b64-8cc8-a66d30b16448
set reg1 47
gt reg0 reg0 reg1
wmem >var_c03c2271-57cc-4d32-941d-5157fad48298 reg0
jmp >var_0e500378-d22d-4f6a-8119-07d8e8eee80e_end
:var_0e500378-d22d-4f6a-8119-07d8e8eee80e
:var_0e500378-d22d-4f6a-8119-07d8e8eee80e_end
rmem reg0 >var_4c5dc418-5a55-4b64-8cc8-a66d30b16448
set reg1 58
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_0e500378-d22d-4f6a-8119-07d8e8eee80e reg0
jmp >var_d7f9ed35-aca1-4388-87ff-b2bb77889c87_end
:var_d7f9ed35-aca1-4388-87ff-b2bb77889c87
:var_d7f9ed35-aca1-4388-87ff-b2bb77889c87_end
rmem reg0 >var_c03c2271-57cc-4d32-941d-5157fad48298
rmem reg1 >var_c03c2271-57cc-4d32-941d-5157fad48298
call >and
wmem >var_d7f9ed35-aca1-4388-87ff-b2bb77889c87 reg0
rmem reg0 >var_4c5dc418-5a55-4b64-8cc8-a66d30b16448
call >print_number
set reg0 10
out reg0
rmem reg0 >var_c03c2271-57cc-4d32-941d-5157fad48298
rmem reg1 >var_c03c2271-57cc-4d32-941d-5157fad48298
call >and
jf reg0 >end_e95e7bb8-0fa0-4722-902b-724574f02c56
jmp >var_3395a215-e044-4e96-a043-c6de81564c96_end
:var_3395a215-e044-4e96-a043-c6de81564c96
:var_3395a215-e044-4e96-a043-c6de81564c96_end
rmem reg0 >var_4c5dc418-5a55-4b64-8cc8-a66d30b16448
set reg1 48
call >subtract
wmem >var_3395a215-e044-4e96-a043-c6de81564c96 reg0
jmp >var_e1b9b1f0-5208-4f02-b776-70843884008a_end
:var_e1b9b1f0-5208-4f02-b776-70843884008a
:var_e1b9b1f0-5208-4f02-b776-70843884008a_end
set reg0 0
wmem >var_e1b9b1f0-5208-4f02-b776-70843884008a reg0
:while_8ff80126-30e7-4064-a354-6817d4d2f693_begin
rmem reg0 >var_e1b9b1f0-5208-4f02-b776-70843884008a
rmem reg1 >var_2763c18c-7fed-478b-a44f-730c5794a5e2
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_8ff80126-30e7-4064-a354-6817d4d2f693_end
rmem reg0 >var_3395a215-e044-4e96-a043-c6de81564c96
set reg1 10
call >subtract
wmem >var_3395a215-e044-4e96-a043-c6de81564c96 reg0
rmem reg0 >var_e1b9b1f0-5208-4f02-b776-70843884008a
add reg0 reg0 1
wmem >var_e1b9b1f0-5208-4f02-b776-70843884008a reg0
jmp >while_8ff80126-30e7-4064-a354-6817d4d2f693_begin
:while_8ff80126-30e7-4064-a354-6817d4d2f693_end
rmem reg0 >var_1e4e18b8-39e8-4176-8fc5-a1b560367aad
rmem reg1 >var_3395a215-e044-4e96-a043-c6de81564c96
add reg0 reg0 reg1
wmem >var_1e4e18b8-39e8-4176-8fc5-a1b560367aad reg0
:end_e95e7bb8-0fa0-4722-902b-724574f02c56
rmem reg0 >var_2763c18c-7fed-478b-a44f-730c5794a5e2
add reg0 reg0 1
wmem >var_2763c18c-7fed-478b-a44f-730c5794a5e2 reg0
jmp >while_16a626ce-e28c-4633-bdd7-1377b1ba47a3_begin
:while_16a626ce-e28c-4633-bdd7-1377b1ba47a3_end
rmem reg0 >var_1e4e18b8-39e8-4176-8fc5-a1b560367aad
call >print_number
rmem reg0 >var_1e4e18b8-39e8-4176-8fc5-a1b560367aad
ret
ret
:int_end
jmp >flip_str_end
:flip_str
jmp >var_bd6166f2-a523-4b29-b353-f531df5cb379_end
:var_bd6166f2-a523-4b29-b353-f531df5cb379
:var_bd6166f2-a523-4b29-b353-f531df5cb379_end
wmem >var_bd6166f2-a523-4b29-b353-f531df5cb379 reg0
jmp >var_5f8eddfc-1ac1-4587-acc3-d69d885f3a55_end
:var_5f8eddfc-1ac1-4587-acc3-d69d885f3a55
:var_5f8eddfc-1ac1-4587-acc3-d69d885f3a55_end
call >alloc
wmem >var_5f8eddfc-1ac1-4587-acc3-d69d885f3a55 reg0
jmp >var_d8f5088a-8f2e-4f41-aeb5-685df108f540_end
:var_d8f5088a-8f2e-4f41-aeb5-685df108f540
:var_d8f5088a-8f2e-4f41-aeb5-685df108f540_end
rmem reg0 >var_bd6166f2-a523-4b29-b353-f531df5cb379
call >str_len
wmem >var_d8f5088a-8f2e-4f41-aeb5-685df108f540 reg0
jmp >var_b3fabe8f-cf4f-48a6-837c-0d3b1951f370_end
:var_b3fabe8f-cf4f-48a6-837c-0d3b1951f370
:var_b3fabe8f-cf4f-48a6-837c-0d3b1951f370_end
set reg0 0
wmem >var_b3fabe8f-cf4f-48a6-837c-0d3b1951f370 reg0
:while_b41f8c2a-61e1-4912-a035-90b31550645c_begin
rmem reg0 >var_b3fabe8f-cf4f-48a6-837c-0d3b1951f370
rmem reg1 >var_d8f5088a-8f2e-4f41-aeb5-685df108f540
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_b41f8c2a-61e1-4912-a035-90b31550645c_end
jmp >var_b24b5097-fd06-45d9-8b5c-ea49ff9f10a6_end
:var_b24b5097-fd06-45d9-8b5c-ea49ff9f10a6
:var_b24b5097-fd06-45d9-8b5c-ea49ff9f10a6_end
rmem reg0 >var_bd6166f2-a523-4b29-b353-f531df5cb379
rmem reg1 >var_b3fabe8f-cf4f-48a6-837c-0d3b1951f370
add reg0 reg0 reg1
wmem >var_b24b5097-fd06-45d9-8b5c-ea49ff9f10a6 reg0
rmem reg0 >var_b24b5097-fd06-45d9-8b5c-ea49ff9f10a6
rmem reg0 reg0
rmem reg0 >var_b24b5097-fd06-45d9-8b5c-ea49ff9f10a6
rmem reg0 reg0
push reg0
rmem reg0 >var_b3fabe8f-cf4f-48a6-837c-0d3b1951f370
add reg0 reg0 1
wmem >var_b3fabe8f-cf4f-48a6-837c-0d3b1951f370 reg0
jmp >while_b41f8c2a-61e1-4912-a035-90b31550645c_begin
:while_b41f8c2a-61e1-4912-a035-90b31550645c_end
jmp >var_d8aeed4a-a4b4-46d6-b617-8e6250a7ab00_end
:var_d8aeed4a-a4b4-46d6-b617-8e6250a7ab00
:var_d8aeed4a-a4b4-46d6-b617-8e6250a7ab00_end
pop reg0
wmem >var_d8aeed4a-a4b4-46d6-b617-8e6250a7ab00 reg0
set reg0 0
wmem >var_b3fabe8f-cf4f-48a6-837c-0d3b1951f370 reg0
:while_1d544f56-e8b6-4fc7-8242-82996ff08e58_begin
rmem reg0 >var_b3fabe8f-cf4f-48a6-837c-0d3b1951f370
rmem reg1 >var_d8f5088a-8f2e-4f41-aeb5-685df108f540
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_1d544f56-e8b6-4fc7-8242-82996ff08e58_end
jmp >var_b6ff7943-2cc9-440a-97df-109875fe9cb2_end
:var_b6ff7943-2cc9-440a-97df-109875fe9cb2
:var_b6ff7943-2cc9-440a-97df-109875fe9cb2_end
rmem reg0 >var_5f8eddfc-1ac1-4587-acc3-d69d885f3a55
rmem reg1 >var_b3fabe8f-cf4f-48a6-837c-0d3b1951f370
add reg0 reg0 reg1
wmem >var_b6ff7943-2cc9-440a-97df-109875fe9cb2 reg0
rmem reg0 >var_b6ff7943-2cc9-440a-97df-109875fe9cb2
rmem reg1 >var_d8aeed4a-a4b4-46d6-b617-8e6250a7ab00
wmem reg0 reg1
rmem reg0 >var_b3fabe8f-cf4f-48a6-837c-0d3b1951f370
add reg0 reg0 1
wmem >var_b3fabe8f-cf4f-48a6-837c-0d3b1951f370 reg0
pop reg0
wmem >var_d8aeed4a-a4b4-46d6-b617-8e6250a7ab00 reg0
jmp >while_1d544f56-e8b6-4fc7-8242-82996ff08e58_begin
:while_1d544f56-e8b6-4fc7-8242-82996ff08e58_end
rmem reg0 >var_d8aeed4a-a4b4-46d6-b617-8e6250a7ab00
rmem reg0 >var_d8aeed4a-a4b4-46d6-b617-8e6250a7ab00
push reg0
rmem reg0 >var_5f8eddfc-1ac1-4587-acc3-d69d885f3a55
ret
ret
:flip_str_end
jmp >str_cat_end
:str_cat
jmp >var_76c134d6-d452-42b7-a6fe-31965842899c_end
:var_76c134d6-d452-42b7-a6fe-31965842899c
:var_76c134d6-d452-42b7-a6fe-31965842899c_end
jmp >var_be85c32f-822d-4268-bd38-993a70022f39_end
:var_be85c32f-822d-4268-bd38-993a70022f39
:var_be85c32f-822d-4268-bd38-993a70022f39_end
wmem >var_76c134d6-d452-42b7-a6fe-31965842899c reg0
wmem >var_be85c32f-822d-4268-bd38-993a70022f39 reg1
jmp >var_ea70ecc2-eb7c-4774-a22f-5ab04342717a_end
:var_ea70ecc2-eb7c-4774-a22f-5ab04342717a
:var_ea70ecc2-eb7c-4774-a22f-5ab04342717a_end
rmem reg0 >var_76c134d6-d452-42b7-a6fe-31965842899c
call >str_len
wmem >var_ea70ecc2-eb7c-4774-a22f-5ab04342717a reg0
jmp >var_57468988-39bb-4f7b-875c-c9ea4db0823f_end
:var_57468988-39bb-4f7b-875c-c9ea4db0823f
:var_57468988-39bb-4f7b-875c-c9ea4db0823f_end
rmem reg0 >var_be85c32f-822d-4268-bd38-993a70022f39
call >str_len
wmem >var_57468988-39bb-4f7b-875c-c9ea4db0823f reg0
set reg0 10
out reg0
set reg0 10
out reg0
jmp >var_71c5acb3-a987-4782-88db-a58002a0479e_end
:var_71c5acb3-a987-4782-88db-a58002a0479e
:var_71c5acb3-a987-4782-88db-a58002a0479e_end
call >alloc
wmem >var_71c5acb3-a987-4782-88db-a58002a0479e reg0
rmem reg0 >var_76c134d6-d452-42b7-a6fe-31965842899c
rmem reg1 >var_71c5acb3-a987-4782-88db-a58002a0479e
rmem reg2 >var_ea70ecc2-eb7c-4774-a22f-5ab04342717a
call >mem_cp
jmp >var_58df0582-7155-4f10-812e-e2eba26e5598_end
:var_58df0582-7155-4f10-812e-e2eba26e5598
:var_58df0582-7155-4f10-812e-e2eba26e5598_end
rmem reg0 >var_71c5acb3-a987-4782-88db-a58002a0479e
rmem reg1 >var_ea70ecc2-eb7c-4774-a22f-5ab04342717a
add reg0 reg0 reg1
wmem >var_58df0582-7155-4f10-812e-e2eba26e5598 reg0
rmem reg0 >var_57468988-39bb-4f7b-875c-c9ea4db0823f
add reg0 reg0 1
wmem >var_57468988-39bb-4f7b-875c-c9ea4db0823f reg0
rmem reg0 >var_be85c32f-822d-4268-bd38-993a70022f39
rmem reg1 >var_58df0582-7155-4f10-812e-e2eba26e5598
rmem reg2 >var_57468988-39bb-4f7b-875c-c9ea4db0823f
call >mem_cp
rmem reg0 >var_71c5acb3-a987-4782-88db-a58002a0479e
ret
ret
:str_cat_end
jmp >input_end
:input
jmp >var_74b7918d-f17d-4e3a-89aa-1456f2778e3e_end
:var_74b7918d-f17d-4e3a-89aa-1456f2778e3e
:var_74b7918d-f17d-4e3a-89aa-1456f2778e3e_end
set reg0 16384
wmem >var_74b7918d-f17d-4e3a-89aa-1456f2778e3e reg0
jmp >var_4864f032-86ad-4043-998d-0bdbc062bad0_end
:var_4864f032-86ad-4043-998d-0bdbc062bad0
:var_4864f032-86ad-4043-998d-0bdbc062bad0_end
in reg0
wmem >var_4864f032-86ad-4043-998d-0bdbc062bad0 reg0
jmp >var_10da8aed-0721-410c-afad-835d169c0588_end
:var_10da8aed-0721-410c-afad-835d169c0588
:var_10da8aed-0721-410c-afad-835d169c0588_end
rmem reg0 >var_4864f032-86ad-4043-998d-0bdbc062bad0
set reg1 10
eq reg0 reg0 reg1
wmem >var_10da8aed-0721-410c-afad-835d169c0588 reg0
:while_069c788b-1152-44e4-9bc2-ab47729f058f_begin
rmem reg0 >var_10da8aed-0721-410c-afad-835d169c0588
call >not
rmem reg1 >var_4864f032-86ad-4043-998d-0bdbc062bad0
call >and
jf reg0 >while_069c788b-1152-44e4-9bc2-ab47729f058f_end
rmem reg0 >var_74b7918d-f17d-4e3a-89aa-1456f2778e3e
rmem reg1 >var_4864f032-86ad-4043-998d-0bdbc062bad0
wmem reg0 reg1
rmem reg0 >var_74b7918d-f17d-4e3a-89aa-1456f2778e3e
add reg0 reg0 1
wmem >var_74b7918d-f17d-4e3a-89aa-1456f2778e3e reg0
in reg0
wmem >var_4864f032-86ad-4043-998d-0bdbc062bad0 reg0
rmem reg0 >var_4864f032-86ad-4043-998d-0bdbc062bad0
set reg1 10
eq reg0 reg0 reg1
wmem >var_10da8aed-0721-410c-afad-835d169c0588 reg0
jmp >while_069c788b-1152-44e4-9bc2-ab47729f058f_begin
:while_069c788b-1152-44e4-9bc2-ab47729f058f_end
rmem reg0 >var_74b7918d-f17d-4e3a-89aa-1456f2778e3e
set reg1 0
wmem reg0 reg1
jmp >var_e5aaac12-e01b-44bd-a3f9-20156878721a_end
:var_e5aaac12-e01b-44bd-a3f9-20156878721a
:var_e5aaac12-e01b-44bd-a3f9-20156878721a_end
call >alloc
wmem >var_e5aaac12-e01b-44bd-a3f9-20156878721a reg0
jmp >var_44aa92e3-9f7c-41c2-9b6c-9cc23b66da27_end
:var_44aa92e3-9f7c-41c2-9b6c-9cc23b66da27
:var_44aa92e3-9f7c-41c2-9b6c-9cc23b66da27_end
set reg0 16384
call >str_len
wmem >var_44aa92e3-9f7c-41c2-9b6c-9cc23b66da27 reg0
set reg0 16384
rmem reg1 >var_e5aaac12-e01b-44bd-a3f9-20156878721a
rmem reg2 >var_44aa92e3-9f7c-41c2-9b6c-9cc23b66da27
call >mem_cp
rmem reg0 >var_e5aaac12-e01b-44bd-a3f9-20156878721a
ret
ret
:input_end
jmp >alloc_end
:alloc
jmp >var_173efedd-d89e-4ef2-8d79-288c949e4ba6_end
:var_173efedd-d89e-4ef2-8d79-288c949e4ba6
:var_173efedd-d89e-4ef2-8d79-288c949e4ba6_end
set reg0 0
wmem >var_173efedd-d89e-4ef2-8d79-288c949e4ba6 reg0
jmp >var_9b8561be-13d2-4b51-b6b3-bf06dbcc4b48_end
:var_9b8561be-13d2-4b51-b6b3-bf06dbcc4b48
:var_9b8561be-13d2-4b51-b6b3-bf06dbcc4b48_end
set reg0 0
wmem >var_9b8561be-13d2-4b51-b6b3-bf06dbcc4b48 reg0
:while_9daf38c0-d5e5-4208-b367-b3a2b342d3cc_begin
rmem reg0 >var_9b8561be-13d2-4b51-b6b3-bf06dbcc4b48
set reg1 6
gt reg0 reg0 reg1
call >not
jf reg0 >while_9daf38c0-d5e5-4208-b367-b3a2b342d3cc_end
jmp >var_b4cf380d-2100-48a2-ad56-d60e9bc0a865_end
:var_b4cf380d-2100-48a2-ad56-d60e9bc0a865
:var_b4cf380d-2100-48a2-ad56-d60e9bc0a865_end
rmem reg0 >var_173efedd-d89e-4ef2-8d79-288c949e4ba6
rmem reg0 reg0
wmem >var_b4cf380d-2100-48a2-ad56-d60e9bc0a865 reg0
rmem reg0 >var_b4cf380d-2100-48a2-ad56-d60e9bc0a865
call >not
jf reg0 >end_aadf4c57-e7eb-41f0-9783-ffea0cec726f
rmem reg0 >var_9b8561be-13d2-4b51-b6b3-bf06dbcc4b48
add reg0 reg0 1
wmem >var_9b8561be-13d2-4b51-b6b3-bf06dbcc4b48 reg0
:end_aadf4c57-e7eb-41f0-9783-ffea0cec726f
rmem reg0 >var_b4cf380d-2100-48a2-ad56-d60e9bc0a865
jf reg0 >end_a8e04c67-87cc-45e9-955c-025d0ec44b36
set reg0 0
wmem >var_9b8561be-13d2-4b51-b6b3-bf06dbcc4b48 reg0
:end_a8e04c67-87cc-45e9-955c-025d0ec44b36
rmem reg0 >var_173efedd-d89e-4ef2-8d79-288c949e4ba6
add reg0 reg0 1
wmem >var_173efedd-d89e-4ef2-8d79-288c949e4ba6 reg0
jmp >while_9daf38c0-d5e5-4208-b367-b3a2b342d3cc_begin
:while_9daf38c0-d5e5-4208-b367-b3a2b342d3cc_end
rmem reg0 >var_173efedd-d89e-4ef2-8d79-288c949e4ba6
set reg1 1
call >subtract
wmem >var_173efedd-d89e-4ef2-8d79-288c949e4ba6 reg0
rmem reg0 >var_173efedd-d89e-4ef2-8d79-288c949e4ba6
ret
ret
:alloc_end
jmp >mem_cp_end
:mem_cp
jmp >var_d069c548-67ef-478f-a5d9-3052be3b2603_end
:var_d069c548-67ef-478f-a5d9-3052be3b2603
:var_d069c548-67ef-478f-a5d9-3052be3b2603_end
jmp >var_06bf7f8c-f65e-4399-a2c4-48be25ebaa55_end
:var_06bf7f8c-f65e-4399-a2c4-48be25ebaa55
:var_06bf7f8c-f65e-4399-a2c4-48be25ebaa55_end
jmp >var_e2ec4053-e4c8-4f6a-854f-9d794b771abd_end
:var_e2ec4053-e4c8-4f6a-854f-9d794b771abd
:var_e2ec4053-e4c8-4f6a-854f-9d794b771abd_end
wmem >var_d069c548-67ef-478f-a5d9-3052be3b2603 reg0
wmem >var_06bf7f8c-f65e-4399-a2c4-48be25ebaa55 reg1
wmem >var_e2ec4053-e4c8-4f6a-854f-9d794b771abd reg2
jmp >var_14ffc95f-816b-4a23-bf59-c33774dc4b26_end
:var_14ffc95f-816b-4a23-bf59-c33774dc4b26
:var_14ffc95f-816b-4a23-bf59-c33774dc4b26_end
set reg0 0
wmem >var_14ffc95f-816b-4a23-bf59-c33774dc4b26 reg0
:while_c658bab4-de1f-4400-9bfc-9643566b36f9_begin
rmem reg0 >var_14ffc95f-816b-4a23-bf59-c33774dc4b26
rmem reg1 >var_e2ec4053-e4c8-4f6a-854f-9d794b771abd
gt reg0 reg0 reg1
call >not
jf reg0 >while_c658bab4-de1f-4400-9bfc-9643566b36f9_end
jmp >var_ae6c7793-2c58-484d-92c5-4bcf0e35309a_end
:var_ae6c7793-2c58-484d-92c5-4bcf0e35309a
:var_ae6c7793-2c58-484d-92c5-4bcf0e35309a_end
rmem reg0 >var_d069c548-67ef-478f-a5d9-3052be3b2603
rmem reg1 >var_14ffc95f-816b-4a23-bf59-c33774dc4b26
add reg0 reg0 reg1
wmem >var_ae6c7793-2c58-484d-92c5-4bcf0e35309a reg0
jmp >var_06e631dd-ac90-4ff7-9b76-ac3d07f73504_end
:var_06e631dd-ac90-4ff7-9b76-ac3d07f73504
:var_06e631dd-ac90-4ff7-9b76-ac3d07f73504_end
rmem reg0 >var_06bf7f8c-f65e-4399-a2c4-48be25ebaa55
rmem reg1 >var_14ffc95f-816b-4a23-bf59-c33774dc4b26
add reg0 reg0 reg1
wmem >var_06e631dd-ac90-4ff7-9b76-ac3d07f73504 reg0
rmem reg0 >var_06e631dd-ac90-4ff7-9b76-ac3d07f73504
rmem reg1 >var_ae6c7793-2c58-484d-92c5-4bcf0e35309a
rmem reg1 reg1
wmem reg0 reg1
rmem reg0 >var_14ffc95f-816b-4a23-bf59-c33774dc4b26
add reg0 reg0 1
wmem >var_14ffc95f-816b-4a23-bf59-c33774dc4b26 reg0
jmp >while_c658bab4-de1f-4400-9bfc-9643566b36f9_begin
:while_c658bab4-de1f-4400-9bfc-9643566b36f9_end
ret
:mem_cp_end
jmp >str_len_end
:str_len
jmp >var_573816ca-3a82-44de-b12b-2c38b83b8697_end
:var_573816ca-3a82-44de-b12b-2c38b83b8697
:var_573816ca-3a82-44de-b12b-2c38b83b8697_end
wmem >var_573816ca-3a82-44de-b12b-2c38b83b8697 reg0
jmp >var_bd02f711-7a99-4128-86dc-3303d716c82c_end
:var_bd02f711-7a99-4128-86dc-3303d716c82c
:var_bd02f711-7a99-4128-86dc-3303d716c82c_end
set reg0 0
wmem >var_bd02f711-7a99-4128-86dc-3303d716c82c reg0
:while_a6e9975f-c925-40af-af60-6965e9a5d301_begin
rmem reg0 >var_573816ca-3a82-44de-b12b-2c38b83b8697
rmem reg0 reg0
jf reg0 >while_a6e9975f-c925-40af-af60-6965e9a5d301_end
rmem reg0 >var_573816ca-3a82-44de-b12b-2c38b83b8697
add reg0 reg0 1
wmem >var_573816ca-3a82-44de-b12b-2c38b83b8697 reg0
rmem reg0 >var_bd02f711-7a99-4128-86dc-3303d716c82c
add reg0 reg0 1
wmem >var_bd02f711-7a99-4128-86dc-3303d716c82c reg0
jmp >while_a6e9975f-c925-40af-af60-6965e9a5d301_begin
:while_a6e9975f-c925-40af-af60-6965e9a5d301_end
rmem reg0 >var_bd02f711-7a99-4128-86dc-3303d716c82c
ret
ret
:str_len_end
jmp >println_end
:println
jmp >var_b2b2378f-d609-4c0f-8060-ac8ad62e5246_end
:var_b2b2378f-d609-4c0f-8060-ac8ad62e5246
:var_b2b2378f-d609-4c0f-8060-ac8ad62e5246_end
wmem >var_b2b2378f-d609-4c0f-8060-ac8ad62e5246 reg0
rmem reg0 >var_b2b2378f-d609-4c0f-8060-ac8ad62e5246
call >print
set reg0 10
out reg0
ret
:println_end
jmp >print_end
:print
jmp >var_e42fa053-e64f-4faf-b102-abc0bc943140_end
:var_e42fa053-e64f-4faf-b102-abc0bc943140
:var_e42fa053-e64f-4faf-b102-abc0bc943140_end
wmem >var_e42fa053-e64f-4faf-b102-abc0bc943140 reg0
:while_329c17cb-6d3a-4d99-bb05-f35363e9d825_begin
rmem reg0 >var_e42fa053-e64f-4faf-b102-abc0bc943140
rmem reg0 reg0
jf reg0 >while_329c17cb-6d3a-4d99-bb05-f35363e9d825_end
rmem reg0 >var_e42fa053-e64f-4faf-b102-abc0bc943140
rmem reg0 reg0
out reg0
rmem reg0 >var_e42fa053-e64f-4faf-b102-abc0bc943140
add reg0 reg0 1
wmem >var_e42fa053-e64f-4faf-b102-abc0bc943140 reg0
jmp >while_329c17cb-6d3a-4d99-bb05-f35363e9d825_begin
:while_329c17cb-6d3a-4d99-bb05-f35363e9d825_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_ffcaf8ba-2b74-4fb1-9905-8b82a1c44355_end
:var_ffcaf8ba-2b74-4fb1-9905-8b82a1c44355
:var_ffcaf8ba-2b74-4fb1-9905-8b82a1c44355_end
wmem >var_ffcaf8ba-2b74-4fb1-9905-8b82a1c44355 reg0
rmem reg0 >var_ffcaf8ba-2b74-4fb1-9905-8b82a1c44355
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_2bec2ea5-5145-4518-aa65-f51cf5d70603
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_2bec2ea5-5145-4518-aa65-f51cf5d70603
jmp >var_ffe21628-0daf-49ef-ba36-e48280689cd0_end
:var_ffe21628-0daf-49ef-ba36-e48280689cd0
:var_ffe21628-0daf-49ef-ba36-e48280689cd0_end
jmp >var_570c67e2-4908-4610-9a77-4037f1dc3f5b_end
:var_570c67e2-4908-4610-9a77-4037f1dc3f5b
:var_570c67e2-4908-4610-9a77-4037f1dc3f5b_end
set reg0 0
wmem >var_570c67e2-4908-4610-9a77-4037f1dc3f5b reg0
:while_cd733d11-4df7-4ad3-9e10-e4031c7e8262_begin
rmem reg0 >var_ffcaf8ba-2b74-4fb1-9905-8b82a1c44355
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_cd733d11-4df7-4ad3-9e10-e4031c7e8262_end
rmem reg0 >var_ffcaf8ba-2b74-4fb1-9905-8b82a1c44355
set reg1 10
mod reg0 reg0 reg1
wmem >var_ffe21628-0daf-49ef-ba36-e48280689cd0 reg0
rmem reg0 >var_ffe21628-0daf-49ef-ba36-e48280689cd0
rmem reg0 >var_ffe21628-0daf-49ef-ba36-e48280689cd0
push reg0
rmem reg0 >var_570c67e2-4908-4610-9a77-4037f1dc3f5b
add reg0 reg0 1
wmem >var_570c67e2-4908-4610-9a77-4037f1dc3f5b reg0
rmem reg0 >var_ffcaf8ba-2b74-4fb1-9905-8b82a1c44355
set reg1 10
call >divide
wmem >var_ffcaf8ba-2b74-4fb1-9905-8b82a1c44355 reg0
jmp >while_cd733d11-4df7-4ad3-9e10-e4031c7e8262_begin
:while_cd733d11-4df7-4ad3-9e10-e4031c7e8262_end
rmem reg0 >var_ffcaf8ba-2b74-4fb1-9905-8b82a1c44355
set reg1 10
mod reg0 reg0 reg1
wmem >var_ffe21628-0daf-49ef-ba36-e48280689cd0 reg0
rmem reg0 >var_ffe21628-0daf-49ef-ba36-e48280689cd0
rmem reg0 >var_ffe21628-0daf-49ef-ba36-e48280689cd0
push reg0
rmem reg0 >var_570c67e2-4908-4610-9a77-4037f1dc3f5b
add reg0 reg0 1
wmem >var_570c67e2-4908-4610-9a77-4037f1dc3f5b reg0
jmp >var_c396cd19-dd08-4814-9046-5ea83c62716c_end
:var_c396cd19-dd08-4814-9046-5ea83c62716c
:var_c396cd19-dd08-4814-9046-5ea83c62716c_end
set reg0 0
wmem >var_c396cd19-dd08-4814-9046-5ea83c62716c reg0
:while_9206d87d-5453-43fd-ad50-a4a4ba0b7dda_begin
rmem reg0 >var_c396cd19-dd08-4814-9046-5ea83c62716c
rmem reg1 >var_570c67e2-4908-4610-9a77-4037f1dc3f5b
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_9206d87d-5453-43fd-ad50-a4a4ba0b7dda_end
rmem reg0 >var_c396cd19-dd08-4814-9046-5ea83c62716c
set reg1 1
add reg0 reg0 reg1
wmem >var_c396cd19-dd08-4814-9046-5ea83c62716c reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_9206d87d-5453-43fd-ad50-a4a4ba0b7dda_begin
:while_9206d87d-5453-43fd-ad50-a4a4ba0b7dda_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_6e30982d-4d9a-4321-965e-7f0d2e567840_end
:var_6e30982d-4d9a-4321-965e-7f0d2e567840
:var_6e30982d-4d9a-4321-965e-7f0d2e567840_end
set reg0 0
wmem >var_6e30982d-4d9a-4321-965e-7f0d2e567840 reg0
:while_380df520-6b5d-47f7-8c30-f9d7647fa3f4_begin
rmem reg0 >var_6e30982d-4d9a-4321-965e-7f0d2e567840
rmem reg0 reg0
jf reg0 >while_380df520-6b5d-47f7-8c30-f9d7647fa3f4_end
rmem reg0 >var_6e30982d-4d9a-4321-965e-7f0d2e567840
add reg0 reg0 1
wmem >var_6e30982d-4d9a-4321-965e-7f0d2e567840 reg0
rmem reg0 >var_6e30982d-4d9a-4321-965e-7f0d2e567840
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_380df520-6b5d-47f7-8c30-f9d7647fa3f4_begin
:while_380df520-6b5d-47f7-8c30-f9d7647fa3f4_end
ret
:dump_mem_end
call >do_stuff
jmp >do_stuff_end
:do_stuff
call >input
call >int
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
