jmp >var_t_backing_parseerror_6_end
:var_t_backing_parseerror_6
:var_t_backing_parseerror_6_end
jmp >var_t_parseerror_6_end
:var_t_parseerror_6
:var_t_parseerror_6_end
wmem >var_t_parseerror_6 >var_t_backing_parseerror_6
jmp >function__parseerror_8_end
:function__parseerror_8
jmp >var_str_parseerror_8_end
:var_str_parseerror_8
:var_str_parseerror_8_end
wmem >var_str_parseerror_8 reg0
set reg0 65
out reg0
ret
:function__parseerror_8_end
set reg0 >function__parseerror_8
rmem reg7 >var_t_parseerror_6
add reg7 reg7 1
wmem reg7 reg0
rmem reg0 >var_t_parseerror_6
add reg0 reg0 1
rmem reg0 reg0
jmp >var__parseerror_13_end
:var__parseerror_13
&e
&s
&t
0
:var__parseerror_13_end
wmem >var__parseerror_13 &T
set reg0 >var__parseerror_13
jmp >var_main_parseerror_17_end
:var_main_parseerror_17
:var_main_parseerror_17_end
jmp >function__parseerror_17_end
:function__parseerror_17
jmp >var_test_str_parseerror_17_end
:var_test_str_parseerror_17
:var_test_str_parseerror_17_end
wmem >var_test_str_parseerror_17 reg0
ret
:function__parseerror_17_end
set reg0 >function__parseerror_17
wmem >var_main_parseerror_17 reg0
jmp >var__parseerror_24_end
:var__parseerror_24
&e
&l
&l
&o
0
:var__parseerror_24_end
wmem >var__parseerror_24 &H
set reg0 >var__parseerror_24
rmem reg7 >var_main_parseerror_17
call reg7
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

