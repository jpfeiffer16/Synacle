#Read memory at offset in register 6 ending with a null byte (0)
:writebytes
rmem reg1 reg6
out reg1
add reg6 reg6 1
jt reg1 >writebytes
ret