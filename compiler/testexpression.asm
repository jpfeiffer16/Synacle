set reg0 0
wmem 600 reg0
:begin_while_53
rmem reg0 600
set reg1 20
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >end_while_53
rmem reg0 600
set reg1 3
mod reg0 reg0 reg1
wmem 601 reg0
rmem reg0 600
set reg1 5
mod reg0 reg0 reg1
wmem 602 reg0
rmem reg0 601
rmem reg1 602
eq reg0 reg0 reg1
jf reg0 >end_if_56
rmem reg0 600
set reg1 48
add reg0 reg0 reg1
out reg0
:end_if_56
rmem reg0 601
call >not
jf reg0 >end_if_4
set reg0 102
out reg0
set reg0 105
out reg0
set reg0 122
out reg0
set reg0 122
out reg0
:end_if_4
rmem reg0 602
call >not
jf reg0 >end_if_76
set reg0 98
out reg0
set reg0 117
out reg0
set reg0 122
out reg0
set reg0 122
out reg0
:end_if_76
set reg0 10
out reg0
rmem reg0 600
set reg1 1
add reg0 reg0 reg1
wmem 600 reg0
jmp >begin_while_53
:end_while_53
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