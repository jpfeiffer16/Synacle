jmp >var_d962d561d277_end
:var_d962d561d277
:var_d962d561d277_end
set reg0 10
wmem >var_d962d561d277 reg0
rmem reg0 >var_d962d561d277
call >do_stuff
jmp >do_stuff_end
:do_stuff
jmp >var_a1eae2729b83_end
:var_a1eae2729b83
:var_a1eae2729b83_end
wmem >var_a1eae2729b83 reg0
rmem reg0 >var_a1eae2729b83
set reg1 10
gt reg2 reg0 reg1
eq reg3 reg0 reg1
or reg0 reg2 reg3
out reg0
ret
:do_stuff_end
set reg0 >do_stuff
halt

:subtract
add reg0 reg0 32767
add reg1 reg1 32767
jt reg1 >subtract
ret


:not
jf reg0 >not_isfalse
:not_istrue
set reg0 0
ret
:not_isfalse
set reg0 1
ret


:divide
set reg3 0
set reg2 reg1
:divide_loop
set reg1 reg2
gt reg4 reg0 reg1
eq reg5 reg0 reg1
or reg4 reg4 reg5
jf reg4 >divide_loop_end
call >subtract
add reg3 reg3 1
call >divide_loop
:divide_loop_end
set reg0 reg3
ret


:and
jf reg0 >and_isfalse
jf reg1 >and_isfalse
:and_istrue
set reg0 1
ret
:and_isfalse
set reg0 0
ret


:or
jt reg0 >or_istrue
jt reg1 >or_istrue
:or_isfalse
set reg0 0
ret
:or_istrue
set reg0 1
ret

