jmp >var_t_backing_parseerror_6_end
:var_t_backing_parseerror_6
:var_t_backing_parseerror_6_end
jmp >var_t_parseerror_6_end
:var_t_parseerror_6
:var_t_parseerror_6_end
wmem >var_t_parseerror_6 >var_t_backing_parseerror_6
jmp >function__parseerror_8_end
:function__parseerror_8
jmp >var_name_parseerror_8_end
:var_name_parseerror_8
:var_name_parseerror_8_end
wmem >var_name_parseerror_8 reg0
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
rmem reg0 >var_t_parseerror_6
add reg0 reg0 1
rmem reg0 reg0
set reg7 reg0
jmp >var__parseerror_13_end
:var__parseerror_13
&e
&s
&t
0
:var__parseerror_13_end
wmem >var__parseerror_13 &t
set reg0 >var__parseerror_13
call reg7
jmp >var_t_c_parseerror_15_end
:var_t_c_parseerror_15
:fld_t_c_parseerror_15_do_a_thing
:var_t_c_parseerror_15_end
jmp >function__parseerror_16_end
:function__parseerror_16
jmp >var_name_parseerror_16_end
:var_name_parseerror_16
:var_name_parseerror_16_end
wmem >var_name_parseerror_16 reg0
set reg0 66
out reg0
ret
:function__parseerror_16_end
set reg0 >function__parseerror_16
wmem >fld_t_c_parseerror_15_do_a_thing reg0
rmem reg0 >fld_t_c_parseerror_15_do_a_thing
rmem reg0 >fld_t_c_parseerror_15_do_a_thing
set reg7 reg0
jmp >var__parseerror_21_end
:var__parseerror_21
&e
&s
&t
0
:var__parseerror_21_end
wmem >var__parseerror_21 &T
set reg0 >var__parseerror_21
call reg7
jmp >var_hello_parseerror_23_end
:var_hello_parseerror_23
:var_hello_parseerror_23_end
rmem reg0 >fld_t_c_parseerror_15_do_a_thing
wmem >var_hello_parseerror_23 reg0
jmp >var__parseerror_25_end
:var__parseerror_25
&e
&s
&t
0
:var__parseerror_25_end
wmem >var__parseerror_25 &t
set reg0 >var__parseerror_25
rmem reg7 >var_hello_parseerror_23
call reg7
jmp >straight_up_end
:straight_up
jmp >var_name_parseerror_27_end
:var_name_parseerror_27
:var_name_parseerror_27_end
jmp >var_id_parseerror_27_end
:var_id_parseerror_27
:var_id_parseerror_27_end
wmem >var_name_parseerror_27 reg0
wmem >var_id_parseerror_27 reg1
set reg0 67
out reg0
ret
:straight_up_end
set reg0 >straight_up
jmp >var__parseerror_32_end
:var__parseerror_32
&e
&s
&t
0
:var__parseerror_32_end
wmem >var__parseerror_32 &t
set reg0 >var__parseerror_32
set reg1 123
call >straight_up
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

