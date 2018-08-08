:for_3ab94476a58a_begin
jmp >var_924dff6b4219_end
:var_924dff6b4219
:var_924dff6b4219_end
set reg0 0
wmem >var_924dff6b4219 reg0
rmem reg0 >var_924dff6b4219
set reg1 10
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >for_3ab94476a58a_end
set reg0 65
out reg0
rmem reg0 >var_924dff6b4219
add reg0 reg0 1
wmem >var_924dff6b4219 reg0
jmp >for_3ab94476a58a_begin
:for_3ab94476a58a_end
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

