wmem 200 65
rmem reg0 200
out reg0
call >main
ret
:main
wmem 201 66
rmem reg0 201
out reg0
rmem reg0 200
out reg0
ret