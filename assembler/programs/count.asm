call >count
call >count

halt

:count
set 32768 0
set 32769 0
add 32768 1 32768
eq 32769 32768 32768
jf 32769 >count
ret
