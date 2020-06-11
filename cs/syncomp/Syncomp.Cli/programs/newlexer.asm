jmp >assert_type_factory_end
:assert_type_factory
jmp >var_left_newlexer_8_29_end
:var_left_newlexer_8_29
:var_left_newlexer_8_29_end
pop reg7
pop reg0
wmem >var_left_newlexer_8_29 reg0
push reg7
jmp >var_a_type_backing_newlexer_10_4_end
:var_a_type_backing_newlexer_10_4
:fld_a_type_backing_newlexer_10_4_equal_to
:var_a_type_backing_newlexer_10_4_end
jmp >var_a_type_newlexer_10_4_end
:var_a_type_newlexer_10_4
:var_a_type_newlexer_10_4_end
wmem >var_a_type_newlexer_10_4 >var_a_type_backing_newlexer_10_4
rmem reg0 >var_a_type_newlexer_10_4
ret
ret
:assert_type_factory_end
set reg0 >assert_type_factory
jmp >is_end
:is
jmp >var_left_newlexer_19_12_end
:var_left_newlexer_19_12
:var_left_newlexer_19_12_end
pop reg7
pop reg0
wmem >var_left_newlexer_19_12 reg0
push reg7
breakpoint
rmem reg0 >var_left_newlexer_19_12
push reg0
call >assert_type_factory
ret
ret
:is_end
set reg0 >is
jmp >category_end
:category
jmp >var_name_newlexer_25_18_end
:var_name_newlexer_25_18
:var_name_newlexer_25_18_end
jmp >var_callback_newlexer_25_31_end
:var_callback_newlexer_25_31
:var_callback_newlexer_25_31_end
pop reg7
pop reg0
wmem >var_callback_newlexer_25_31 reg0
pop reg0
wmem >var_name_newlexer_25_18 reg0
push reg7
rmem reg7 >var_callback_newlexer_25_31
call reg7
ret
:category_end
set reg0 >category
jmp >test_end
:test
jmp >var_test_name_newlexer_30_14_end
:var_test_name_newlexer_30_14
:var_test_name_newlexer_30_14_end
jmp >var_callback_newlexer_30_32_end
:var_callback_newlexer_30_32
:var_callback_newlexer_30_32_end
pop reg7
pop reg0
wmem >var_callback_newlexer_30_32 reg0
pop reg0
wmem >var_test_name_newlexer_30_14 reg0
push reg7
rmem reg7 >var_callback_newlexer_30_32
call reg7
ret
:test_end
set reg0 >test
set reg0 123
push reg0
call >is
set reg0 65
out reg0
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

