set reg6 100
call >read
set reg6 100
call >write
halt


#Read input into memory starting at the offset in register 6
:read
in reg0
#out reg0
wmem reg6 reg0
add reg6 reg6 1
eq reg1 reg0 10
jf reg1 >read
ret

#Read memory at offset in register 6 ending with a null byte (0)
:write
rmem reg1 reg6
out reg1
add reg6 reg6 1
jt reg1 >write
ret