set reg0 0
wmem 100 reg0
:begin_while_14
rmem reg0 100
set reg1 3
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >end_while_14
rmem reg0 100
set reg1 48
add reg0 reg0 reg1
out reg0
rmem reg0 100
set reg1 1
add reg0 reg0 reg1
wmem 100 reg0
jmp >begin_while_14
:end_while_14
:not
jf reg0 >isfalse
:istrue
set reg0 0
ret
:isfalse
set reg0 1
ret