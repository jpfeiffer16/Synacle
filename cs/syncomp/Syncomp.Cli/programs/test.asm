jmp >category_end
:category
jmp >var_name_test_2_end
:var_name_test_2
:var_name_test_2_end
jmp >var_cat_func_test_2_end
:var_cat_func_test_2
:var_cat_func_test_2_end
wmem >var_name_test_2 reg0
wmem >var_cat_func_test_2 reg1
jmp >var__test_4_end
:var__test_4
0
:var__test_4_end
wmem >var__test_4 &C
set reg0 >var__test_4
rmem reg0 reg0
out reg0
rmem reg7 >var_cat_func_test_2
call reg7
ret
:category_end
set reg0 >category
jmp >test_end
:test
jmp >var_name_test_8_end
:var_name_test_8
:var_name_test_8_end
jmp >var_test_func_test_8_end
:var_test_func_test_8
:var_test_func_test_8_end
wmem >var_name_test_8 reg0
wmem >var_test_func_test_8 reg1
jmp >var__test_10_end
:var__test_10
0
:var__test_10_end
wmem >var__test_10 &T
set reg0 >var__test_10
rmem reg0 reg0
out reg0
rmem reg7 >var_test_func_test_8
call reg7
ret
:test_end
set reg0 >test
jmp >var_stuff_test_14_end
:var_stuff_test_14
:var_stuff_test_14_end
jmp >function__test_14_end
:function__test_14
jmp >var__test_16_end
:var__test_16
0
:var__test_16_end
wmem >var__test_16 &A
set reg0 >var__test_16
rmem reg0 reg0
out reg0
ret
:function__test_14_end
set reg0 >function__test_14
wmem >var_stuff_test_14 reg0
rmem reg0 >var_stuff_test_14
breakpoint
jmp >var__test_22_end
:var__test_22
0
:var__test_22_end
wmem >var__test_22 &c
set reg0 >var__test_22
jmp >function__test_22_end
:function__test_22
rmem reg1 >var_stuff_test_14
breakpoint
jmp >var__test_25_end
:var__test_25
0
:var__test_25_end
wmem >var__test_25 &t
set reg1 >var__test_25
rmem reg2 >var_stuff_test_14
call >test
ret
:function__test_22_end
set reg1 >function__test_22
call >category
halt

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

