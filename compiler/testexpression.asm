:begin_while_84
in reg0
wmem 100 reg0
jf reg0 >end_while_84
rmem reg0 100
set reg1 1
call >subtract
out reg0
rmem reg0 100
set reg1 10
eq reg0 reg0 reg1
jf reg0 >end_if_1
set reg0 65
out reg0
:end_if_1
jmp >begin_while_84
:end_while_84
:not
jf reg0 >isfalse
:istrue
set reg0 0
ret
:isfalse
set reg0 1
ret
:subtract
add reg0 reg0 32767
add reg1 reg1 32767
jt reg1 >subtract
ret