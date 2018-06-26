set reg0 0
wmem 600 reg0
:begin_while_80
rmem reg0 600
set reg1 20
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >end_while_80
rmem reg0 600
set reg1 3
mod reg0 reg0 reg1
wmem 601 reg0
rmem reg0 600
set reg1 5
mod reg0 reg0 reg1
wmem 602 reg0
rmem reg0 601
call >not
jf reg0 >end_if_64
set reg0 102
out reg0
set reg0 105
out reg0
set reg0 122
out reg0
set reg0 122
out reg0
:end_if_64
rmem reg0 602
call >not
jf reg0 >end_if_26
set reg0 98
out reg0
set reg0 117
out reg0
set reg0 122
out reg0
set reg0 122
out reg0
:end_if_26
set reg0 10
out reg0
rmem reg0 600
set reg1 1
add reg0 reg0 reg1
wmem 600 reg0
jmp >begin_while_80
:end_while_80
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