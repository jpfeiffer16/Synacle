#Here we want to subtract 2 from 3 resulting in 1 and print that out

set reg6 9
set reg7 6
call >subtract

add reg6 reg6 48

out reg6
out 10
halt

$lib/subtract.asm