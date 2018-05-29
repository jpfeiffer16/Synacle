
call >read
rmem 32768 100
out 32768
halt

:read
in 32768
out 32768
wmem 100 32768
#add 32771 32771 1
eq 32769 32768 10
jf 32769 >read
ret

#:write
#32768
#ret