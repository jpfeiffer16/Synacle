set reg0 65
wmem 16000 reg0
set reg0 66
wmem 16001 reg0
set reg0 67
wmem 16002 reg0
rmem reg0 16000
rmem reg1 16001
rmem reg2 16002
call >print
halt
:print
wmem 16003 reg0
wmem 16004 reg1
wmem 16005 reg2
rmem reg0 16003
out reg0
call >new_line
rmem reg0 16001
out reg0
call >new_line
rmem reg0 16005
out reg0
call >new_line
ret
:new_line
set reg0 10
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