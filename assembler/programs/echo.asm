#Main program calls
call >setreadlocation
call >readinput
call >setreadlocation
call >write
halt

:setreadlocation
set reg6 100
ret

$lib/readinput.asm

#Read memory at offset in register 6 ending with a null byte (0)
:write
rmem reg1 reg6
out reg1
add reg6 reg6 1
jt reg1 >write
ret