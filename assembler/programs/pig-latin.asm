:main
set reg6 >label
add reg6 reg6 1
call >writebytes
set reg6 300
call >readinput
set reg7 1
call >subtract
rmem reg0 300
wmem reg6 reg0
add reg6 reg6 1
wmem reg6 &a
add reg6 reg6 1
wmem reg6 &y
add reg6 reg6 1
wmem reg6 10
wmem 100 0
set reg6 301
call >writebytes
jmp >main
halt

#Import helpers
$lib/readinput.asm
$lib/writebytes.asm
$lib/subtract.asm

:label
&E
&n
&t
&e
&r
32
&a
32
&n
&a
&m
&e
&:
32