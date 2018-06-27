set reg0 65
wmem 600 reg0
:begin_while_69
rmem reg0 600
set reg1 9
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
rmem reg1 600
call >or
set reg1 11
gt reg0 reg0 reg1
jf reg0 >end_while_69
in reg0
wmem 600 reg0
jmp >begin_while_69
:end_while_69
rmem reg0 600
halt
:print_ascii
wmem 700 reg0
rmem reg0 700
out reg0
ret
:not
jf reg0 >not_isfalse
:not_istrue
set reg0 0
ret
:not_isfalse
set reg0 1
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
:subtract
add reg0 reg0 32767
add reg1 reg1 32767
jt reg1 >subtract
ret