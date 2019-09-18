jmp >print_end
:print
jmp >var_823be0a3cb1c_end
:var_823be0a3cb1c
:var_823be0a3cb1c_end
wmem >var_823be0a3cb1c reg0
:while_7539e67585d3_begin
rmem reg0 >var_823be0a3cb1c
rmem reg0 reg0
jf reg0 >while_7539e67585d3_end
rmem reg0 >var_823be0a3cb1c
rmem reg0 reg0
out reg0
rmem reg0 >var_823be0a3cb1c
add reg0 reg0 1
wmem >var_823be0a3cb1c reg0
jmp >while_7539e67585d3_begin
:while_7539e67585d3_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_d9495531a7fa_end
:var_d9495531a7fa
:var_d9495531a7fa_end
wmem >var_d9495531a7fa reg0
rmem reg0 >var_d9495531a7fa
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >var_b10b225a7144_end
:var_b10b225a7144
&e
&s
&t
0
:var_b10b225a7144_end
wmem >var_b10b225a7144 &T
set reg0 >var_b10b225a7144
call >print
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

