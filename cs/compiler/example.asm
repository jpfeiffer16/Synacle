jmp >var_64268dec-250c-4925-a006-941c77118b22_end
:var_64268dec-250c-4925-a006-941c77118b22
:var_64268dec-250c-4925-a006-941c77118b22_end
set reg0 10
wmem >var_64268dec-250c-4925-a006-941c77118b22 reg0
rmem reg0 >var_64268dec-250c-4925-a006-941c77118b22
rmem reg0 >var_64268dec-250c-4925-a006-941c77118b22
call >do_stuff
jmp >do_stuff_end
:do_stuff
jmp >var_ed8bb702-c19f-4533-8b84-baaec03dce69_end
:var_ed8bb702-c19f-4533-8b84-baaec03dce69
:var_ed8bb702-c19f-4533-8b84-baaec03dce69_end
wmem >var_ed8bb702-c19f-4533-8b84-baaec03dce69 reg0
rmem reg0 >var_ed8bb702-c19f-4533-8b84-baaec03dce69
set reg1 10
gt reg2 reg0 reg1
eq reg3 reg0 reg1
or reg0 reg2 reg3
rmem reg0 >var_ed8bb702-c19f-4533-8b84-baaec03dce69
set reg1 10
gt reg2 reg0 reg1
eq reg3 reg0 reg1
or reg0 reg2 reg3
call >print_number
ret
:do_stuff_end

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

