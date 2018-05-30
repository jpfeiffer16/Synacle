# yes - A recursive implementation of GNU yes in synacor assembly
# WORD:
# y - 121

call >main
halt

:main
out 121
out 10
call >main
ret