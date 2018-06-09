:main
set reg6 100
call >readinput
set reg7 1
call >subtract
rmem reg0 100
wmem reg6 reg0
add reg6 reg6 1
wmem reg6 97
add reg6 reg6 1
wmem reg6 121
add reg6 reg6 1
wmem reg6 10
wmem 100 0
set reg6 101
call >writebytes
jmp >main
halt

#Import helpers
$lib/readinput.asm
$lib/writebytes.asm
$lib/subtract.asm