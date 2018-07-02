set reg0 14
call >print_number
halt
:print_number
wmem 16006 reg0
rmem reg0 16006
set reg1 48
add reg0 reg0 reg1
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