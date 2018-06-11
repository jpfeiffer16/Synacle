:main
set reg6 >label
add reg6 reg6 1
call >writebytes
set reg6 300
call >readinput
set reg6 300
:orloop
rmem reg0 reg6
or reg1 reg0 2
wmem reg6 reg1
add reg6 reg6 1
jt reg0 >orloop

set reg6 300
call >writebytes
jmp >main

#Libs
$lib/readinput.asm
$lib/writebytes.asm

#Data
:label
&E
&n
&t
&e
&r
32
&s
&o
&m
&e
32
&t
&e
&x
&t
&:
32