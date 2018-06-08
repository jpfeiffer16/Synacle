set reg6 100
call >readinput
set reg7 1
call >subtract
wmem reg6 97
add reg6 reg6 1
wmem reg6 121
add reg6 reg6 1
wmem reg6 10
wmem 100 0
set reg6 101
call >writebytes

halt

#Import helpers
$lib/readinput.asm
$lib/writebytes.asm
$lib/subtract.asm