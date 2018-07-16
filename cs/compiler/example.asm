jmp >input_end
:input
jmp >var_2fe86442-cebe-4c20-9b93-23236a1a9052_end
:var_2fe86442-cebe-4c20-9b93-23236a1a9052
:var_2fe86442-cebe-4c20-9b93-23236a1a9052_end
set reg0 16384
wmem >var_2fe86442-cebe-4c20-9b93-23236a1a9052 reg0
jmp >var_16139a47-a678-4e4f-9ca8-3b3bb7f96d4b_end
:var_16139a47-a678-4e4f-9ca8-3b3bb7f96d4b
:var_16139a47-a678-4e4f-9ca8-3b3bb7f96d4b_end
in reg0
wmem >var_16139a47-a678-4e4f-9ca8-3b3bb7f96d4b reg0
jmp >var_a3d1fcd7-edc7-4d75-8447-d5855f7f6399_end
:var_a3d1fcd7-edc7-4d75-8447-d5855f7f6399
:var_a3d1fcd7-edc7-4d75-8447-d5855f7f6399_end
rmem reg0 >var_16139a47-a678-4e4f-9ca8-3b3bb7f96d4b
set reg1 10
eq reg0 reg0 reg1
wmem >var_a3d1fcd7-edc7-4d75-8447-d5855f7f6399 reg0
:while_f87a2e1d-2bac-4fba-ab58-61863035cd07_begin
rmem reg0 >var_a3d1fcd7-edc7-4d75-8447-d5855f7f6399
call >not
rmem reg1 >var_16139a47-a678-4e4f-9ca8-3b3bb7f96d4b
call >and
jf reg0 >while_f87a2e1d-2bac-4fba-ab58-61863035cd07_end
rmem reg0 >var_2fe86442-cebe-4c20-9b93-23236a1a9052
rmem reg1 >var_16139a47-a678-4e4f-9ca8-3b3bb7f96d4b
wmem reg0 reg1
rmem reg0 >var_2fe86442-cebe-4c20-9b93-23236a1a9052
add reg0 reg0 1
wmem >var_2fe86442-cebe-4c20-9b93-23236a1a9052 reg0
in reg0
wmem >var_16139a47-a678-4e4f-9ca8-3b3bb7f96d4b reg0
rmem reg0 >var_16139a47-a678-4e4f-9ca8-3b3bb7f96d4b
set reg1 10
eq reg0 reg0 reg1
wmem >var_a3d1fcd7-edc7-4d75-8447-d5855f7f6399 reg0
jmp >while_f87a2e1d-2bac-4fba-ab58-61863035cd07_begin
:while_f87a2e1d-2bac-4fba-ab58-61863035cd07_end
rmem reg0 >var_2fe86442-cebe-4c20-9b93-23236a1a9052
set reg1 0
wmem reg0 reg1
jmp >var_20feb7a0-2391-4133-8270-54b6a4b207b8_end
:var_20feb7a0-2391-4133-8270-54b6a4b207b8
:var_20feb7a0-2391-4133-8270-54b6a4b207b8_end
call >alloc
wmem >var_20feb7a0-2391-4133-8270-54b6a4b207b8 reg0
rmem reg0 >var_20feb7a0-2391-4133-8270-54b6a4b207b8
set reg1 16384
set reg2 16384
call >str_len
call >mem_cp
rmem reg0 >var_20feb7a0-2391-4133-8270-54b6a4b207b8
ret
ret
:input_end
jmp >alloc_end
:alloc
jmp >var_af89da45-1e86-4aab-ad30-8107bbd13b57_end
:var_af89da45-1e86-4aab-ad30-8107bbd13b57
:var_af89da45-1e86-4aab-ad30-8107bbd13b57_end
set reg0 32768
rmem reg0 reg0
wmem >var_af89da45-1e86-4aab-ad30-8107bbd13b57 reg0
rmem reg0 >var_af89da45-1e86-4aab-ad30-8107bbd13b57
set reg1 2000
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >end_ed978a56-9fbd-480e-a450-d4647129e056
set reg0 10000
wmem >var_af89da45-1e86-4aab-ad30-8107bbd13b57 reg0
:end_ed978a56-9fbd-480e-a450-d4647129e056
rmem reg0 >var_af89da45-1e86-4aab-ad30-8107bbd13b57
set reg1 256
add reg0 reg0 reg1
wmem >var_af89da45-1e86-4aab-ad30-8107bbd13b57 reg0
set reg0 32768
rmem reg1 >var_af89da45-1e86-4aab-ad30-8107bbd13b57
wmem reg0 reg1
rmem reg0 >var_af89da45-1e86-4aab-ad30-8107bbd13b57
ret
ret
:alloc_end
jmp >mem_cp_end
:mem_cp
jmp >var_45d35b51-4e01-42f3-bbb5-a6ad5594d49c_end
:var_45d35b51-4e01-42f3-bbb5-a6ad5594d49c
:var_45d35b51-4e01-42f3-bbb5-a6ad5594d49c_end
jmp >var_cd815ccc-502a-4ae1-bc55-c9f024ede3da_end
:var_cd815ccc-502a-4ae1-bc55-c9f024ede3da
:var_cd815ccc-502a-4ae1-bc55-c9f024ede3da_end
jmp >var_67c90463-d56b-4a25-99b8-e58147e45063_end
:var_67c90463-d56b-4a25-99b8-e58147e45063
:var_67c90463-d56b-4a25-99b8-e58147e45063_end
wmem >var_45d35b51-4e01-42f3-bbb5-a6ad5594d49c reg0
wmem >var_cd815ccc-502a-4ae1-bc55-c9f024ede3da reg1
wmem >var_67c90463-d56b-4a25-99b8-e58147e45063 reg2
jmp >var_e054e0b2-59d9-476a-bb75-b12186864d90_end
:var_e054e0b2-59d9-476a-bb75-b12186864d90
:var_e054e0b2-59d9-476a-bb75-b12186864d90_end
set reg0 0
wmem >var_e054e0b2-59d9-476a-bb75-b12186864d90 reg0
:while_98ef1831-46f2-4819-b11e-b84181089188_begin
rmem reg0 >var_e054e0b2-59d9-476a-bb75-b12186864d90
rmem reg1 >var_67c90463-d56b-4a25-99b8-e58147e45063
gt reg0 reg0 reg1
call >not
jf reg0 >while_98ef1831-46f2-4819-b11e-b84181089188_end
jmp >var_8665def5-ad73-4b53-b066-996bb3707409_end
:var_8665def5-ad73-4b53-b066-996bb3707409
:var_8665def5-ad73-4b53-b066-996bb3707409_end
rmem reg0 >var_45d35b51-4e01-42f3-bbb5-a6ad5594d49c
rmem reg1 >var_e054e0b2-59d9-476a-bb75-b12186864d90
add reg0 reg0 reg1
wmem >var_8665def5-ad73-4b53-b066-996bb3707409 reg0
rmem reg0 >var_cd815ccc-502a-4ae1-bc55-c9f024ede3da
rmem reg1 >var_e054e0b2-59d9-476a-bb75-b12186864d90
add reg0 reg0 reg1
rmem reg1 >var_8665def5-ad73-4b53-b066-996bb3707409
rmem reg0 reg0
wmem reg0 reg1
rmem reg0 >var_e054e0b2-59d9-476a-bb75-b12186864d90
add reg0 reg0 1
wmem >var_e054e0b2-59d9-476a-bb75-b12186864d90 reg0
jmp >while_98ef1831-46f2-4819-b11e-b84181089188_begin
:while_98ef1831-46f2-4819-b11e-b84181089188_end
ret
:mem_cp_end
jmp >str_len_end
:str_len
jmp >var_457635aa-b72a-4faa-a274-65f5a244992a_end
:var_457635aa-b72a-4faa-a274-65f5a244992a
:var_457635aa-b72a-4faa-a274-65f5a244992a_end
wmem >var_457635aa-b72a-4faa-a274-65f5a244992a reg0
jmp >var_5f0b62a3-ca42-4c41-84fa-09bfb58687ac_end
:var_5f0b62a3-ca42-4c41-84fa-09bfb58687ac
:var_5f0b62a3-ca42-4c41-84fa-09bfb58687ac_end
set reg0 0
wmem >var_5f0b62a3-ca42-4c41-84fa-09bfb58687ac reg0
:while_f73a5280-26a0-496e-9bbc-b4c79bbc1759_begin
rmem reg0 >var_457635aa-b72a-4faa-a274-65f5a244992a
rmem reg0 reg0
jf reg0 >while_f73a5280-26a0-496e-9bbc-b4c79bbc1759_end
rmem reg0 >var_457635aa-b72a-4faa-a274-65f5a244992a
add reg0 reg0 1
wmem >var_457635aa-b72a-4faa-a274-65f5a244992a reg0
rmem reg0 >var_5f0b62a3-ca42-4c41-84fa-09bfb58687ac
add reg0 reg0 1
wmem >var_5f0b62a3-ca42-4c41-84fa-09bfb58687ac reg0
jmp >while_f73a5280-26a0-496e-9bbc-b4c79bbc1759_begin
:while_f73a5280-26a0-496e-9bbc-b4c79bbc1759_end
rmem reg0 >var_5f0b62a3-ca42-4c41-84fa-09bfb58687ac
ret
ret
:str_len_end
jmp >println_end
:println
jmp >var_34ff8263-8f78-478e-bb37-88689b08376a_end
:var_34ff8263-8f78-478e-bb37-88689b08376a
:var_34ff8263-8f78-478e-bb37-88689b08376a_end
wmem >var_34ff8263-8f78-478e-bb37-88689b08376a reg0
rmem reg0 >var_34ff8263-8f78-478e-bb37-88689b08376a
call >print
set reg0 10
out reg0
ret
:println_end
jmp >print_end
:print
jmp >var_c6e7836f-d005-4004-b590-d0eb185dd9c2_end
:var_c6e7836f-d005-4004-b590-d0eb185dd9c2
:var_c6e7836f-d005-4004-b590-d0eb185dd9c2_end
wmem >var_c6e7836f-d005-4004-b590-d0eb185dd9c2 reg0
:while_5841e5d1-5b94-4733-823c-940735cabee9_begin
rmem reg0 >var_c6e7836f-d005-4004-b590-d0eb185dd9c2
rmem reg0 reg0
jf reg0 >while_5841e5d1-5b94-4733-823c-940735cabee9_end
rmem reg0 >var_c6e7836f-d005-4004-b590-d0eb185dd9c2
rmem reg0 reg0
out reg0
rmem reg0 >var_c6e7836f-d005-4004-b590-d0eb185dd9c2
add reg0 reg0 1
wmem >var_c6e7836f-d005-4004-b590-d0eb185dd9c2 reg0
jmp >while_5841e5d1-5b94-4733-823c-940735cabee9_begin
:while_5841e5d1-5b94-4733-823c-940735cabee9_end
ret
:print_end
jmp >print_number_end
:print_number
jmp >var_37aba1ad-879c-4bf3-915c-61d9f4b38772_end
:var_37aba1ad-879c-4bf3-915c-61d9f4b38772
:var_37aba1ad-879c-4bf3-915c-61d9f4b38772_end
wmem >var_37aba1ad-879c-4bf3-915c-61d9f4b38772 reg0
rmem reg0 >var_37aba1ad-879c-4bf3-915c-61d9f4b38772
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_d816b6a9-eacf-464e-b5d6-043adfe84cb2
set reg0 49
out reg0
set reg0 48
out reg0
ret
:end_d816b6a9-eacf-464e-b5d6-043adfe84cb2
jmp >var_14824f89-4f9a-487b-a5bb-cb9de475500f_end
:var_14824f89-4f9a-487b-a5bb-cb9de475500f
:var_14824f89-4f9a-487b-a5bb-cb9de475500f_end
jmp >var_7c217e3a-d17b-4824-b9bd-38a3dbb2f4d9_end
:var_7c217e3a-d17b-4824-b9bd-38a3dbb2f4d9
:var_7c217e3a-d17b-4824-b9bd-38a3dbb2f4d9_end
set reg0 0
wmem >var_7c217e3a-d17b-4824-b9bd-38a3dbb2f4d9 reg0
:while_6f965cbb-a953-4af9-9d1a-e2ecc4b683a6_begin
rmem reg0 >var_37aba1ad-879c-4bf3-915c-61d9f4b38772
set reg1 10
gt reg0 reg0 reg1
jf reg0 >while_6f965cbb-a953-4af9-9d1a-e2ecc4b683a6_end
rmem reg0 >var_37aba1ad-879c-4bf3-915c-61d9f4b38772
set reg1 10
mod reg0 reg0 reg1
wmem >var_14824f89-4f9a-487b-a5bb-cb9de475500f reg0
rmem reg0 >var_14824f89-4f9a-487b-a5bb-cb9de475500f
rmem reg0 >var_14824f89-4f9a-487b-a5bb-cb9de475500f
push reg0
rmem reg0 >var_7c217e3a-d17b-4824-b9bd-38a3dbb2f4d9
add reg0 reg0 1
wmem >var_7c217e3a-d17b-4824-b9bd-38a3dbb2f4d9 reg0
rmem reg0 >var_37aba1ad-879c-4bf3-915c-61d9f4b38772
set reg1 10
call >divide
wmem >var_37aba1ad-879c-4bf3-915c-61d9f4b38772 reg0
jmp >while_6f965cbb-a953-4af9-9d1a-e2ecc4b683a6_begin
:while_6f965cbb-a953-4af9-9d1a-e2ecc4b683a6_end
rmem reg0 >var_37aba1ad-879c-4bf3-915c-61d9f4b38772
set reg1 10
mod reg0 reg0 reg1
wmem >var_14824f89-4f9a-487b-a5bb-cb9de475500f reg0
rmem reg0 >var_14824f89-4f9a-487b-a5bb-cb9de475500f
rmem reg0 >var_14824f89-4f9a-487b-a5bb-cb9de475500f
push reg0
rmem reg0 >var_7c217e3a-d17b-4824-b9bd-38a3dbb2f4d9
add reg0 reg0 1
wmem >var_7c217e3a-d17b-4824-b9bd-38a3dbb2f4d9 reg0
jmp >var_44e70b6a-0fcc-4525-8a7f-2463f90cb994_end
:var_44e70b6a-0fcc-4525-8a7f-2463f90cb994
:var_44e70b6a-0fcc-4525-8a7f-2463f90cb994_end
set reg0 0
wmem >var_44e70b6a-0fcc-4525-8a7f-2463f90cb994 reg0
:while_59b80864-0b41-490d-b3ac-7e315ec3cf21_begin
rmem reg0 >var_44e70b6a-0fcc-4525-8a7f-2463f90cb994
rmem reg1 >var_7c217e3a-d17b-4824-b9bd-38a3dbb2f4d9
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_59b80864-0b41-490d-b3ac-7e315ec3cf21_end
rmem reg0 >var_44e70b6a-0fcc-4525-8a7f-2463f90cb994
set reg1 1
add reg0 reg0 reg1
wmem >var_44e70b6a-0fcc-4525-8a7f-2463f90cb994 reg0
pop reg0
set reg1 48
add reg0 reg0 reg1
out reg0
jmp >while_59b80864-0b41-490d-b3ac-7e315ec3cf21_begin
:while_59b80864-0b41-490d-b3ac-7e315ec3cf21_end
ret
:print_number_end
jmp >dump_mem_end
:dump_mem
jmp >var_527e4c5a-e216-4388-a261-542b9f561335_end
:var_527e4c5a-e216-4388-a261-542b9f561335
:var_527e4c5a-e216-4388-a261-542b9f561335_end
set reg0 0
wmem >var_527e4c5a-e216-4388-a261-542b9f561335 reg0
:while_442bbc28-d198-4831-8adc-a5e7c0aea6b3_begin
rmem reg0 >var_527e4c5a-e216-4388-a261-542b9f561335
rmem reg0 reg0
jf reg0 >while_442bbc28-d198-4831-8adc-a5e7c0aea6b3_end
rmem reg0 >var_527e4c5a-e216-4388-a261-542b9f561335
add reg0 reg0 1
wmem >var_527e4c5a-e216-4388-a261-542b9f561335 reg0
rmem reg0 >var_527e4c5a-e216-4388-a261-542b9f561335
rmem reg0 reg0
call >print_number
set reg0 10
out reg0
jmp >while_442bbc28-d198-4831-8adc-a5e7c0aea6b3_begin
:while_442bbc28-d198-4831-8adc-a5e7c0aea6b3_end
ret
:dump_mem_end
call >do_stuff
jmp >do_stuff_end
:do_stuff
call >input
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
