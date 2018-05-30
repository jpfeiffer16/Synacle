#Main program calls
call >setreadlocation
call >readinput
call >setreadlocation
call >writebytes
halt

:setreadlocation
set reg6 100
ret

$lib/readinput.asm

$lib/writebytes.asm