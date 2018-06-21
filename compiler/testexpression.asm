call >add
ret
:add
set reg0 2
wmem 100 reg0
set reg0 4
wmem 200 reg0
rmem reg0 100
rmem reg1 200
add reg0 reg0 reg1
wmem 100 reg0
rmem reg0 100
add reg0 reg0 48
wmem 100 reg0
rmem reg0 100
out reg0
out 10
call >test
ret
:test
out 65
ret
ret