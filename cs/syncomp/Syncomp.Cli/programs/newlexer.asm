jmp >main_end
:main
jmp >var_cb_newlexer_9_end
:var_cb_newlexer_9
:var_cb_newlexer_9_end
wmem >var_cb_newlexer_9 reg0
jmp >test_end
:test
jmp >var_str_newlexer_11_end
:var_str_newlexer_11
:var_str_newlexer_11_end
wmem >var_str_newlexer_11 reg0
ret
:test_end
set reg0 >test
jmp >var_test_var_backing_newlexer_12_end
:var_test_var_backing_newlexer_12
:var_test_var_backing_newlexer_12_end
jmp >var_test_var_newlexer_12_end
:var_test_var_newlexer_12
:var_test_var_newlexer_12_end
wmem >var_test_var_newlexer_12 >var_test_var_backing_newlexer_12
jmp >var__newlexer_13_end
:var__newlexer_13
&o
&e
0
:var__newlexer_13_end
wmem >var__newlexer_13 &J
set reg0 >var__newlexer_13
rmem reg7 >var_test_var_newlexer_12
add reg7 reg7 2
wmem reg7 reg0
rmem reg0 >var_test_var_newlexer_12
rmem reg7 >var_cb_newlexer_9
call reg7
ret
:main_end
set reg0 >main
jmp >function__newlexer_19_end
:function__newlexer_19
jmp >var_person_newlexer_19_end
:var_person_newlexer_19
:var_person_newlexer_19_end
wmem >var_person_newlexer_19 reg0
jmp >var_i_newlexer_22_end
:var_i_newlexer_22
:var_i_newlexer_22_end
set reg0 1
wmem >var_i_newlexer_22 reg0
:while__newlexer_23_begin
rmem reg0 >var_i_newlexer_22
set reg1 0
eq reg0 reg0 reg1
jf reg0 >while__newlexer_23_end
jmp >while__newlexer_23_begin
:while__newlexer_23_end
ret
:function__newlexer_19_end
set reg0 >function__newlexer_19
call >main
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

