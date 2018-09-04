#Read input into memory starting at the offset in register 6
:readinput
in reg0
wmem reg6 reg0
add reg6 reg6 1
eq reg1 reg0 10
jf reg1 >readinput
ret