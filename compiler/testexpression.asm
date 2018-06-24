set reg0 10
wmem 100 reg0
:begin_while_43
rmem reg0 100
set reg1 0
gt reg0 reg0 reg1
jf reg0 >end_while_43
rmem reg0 100
set reg1 48
add reg0 reg0 reg1
out reg0
rmem reg0 100
set reg1 1
call >subtract
wmem 100 reg0
jmp >begin_while_43
:end_while_43
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