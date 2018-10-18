jmp >var_6acd0733e128_end
:var_6acd0733e128
:var_6acd0733e128_end
set reg0 10
wmem >var_6acd0733e128 reg0
jmp >var_4c8c6a54d264_end
:var_4c8c6a54d264
:var_4c8c6a54d264_end
set reg0 5
wmem >var_4c8c6a54d264 reg0
jmp >var_690270447a95_end
:var_690270447a95
:var_690270447a95_end
rmem reg0 >var_6acd0733e128
rmem reg1 >var_4c8c6a54d264
gt reg2 reg0 reg1
eq reg3 reg0 reg1
or reg0 reg2 reg3
wmem >var_690270447a95 reg0
rmem reg0 >var_690270447a95
jf reg0 >end_da456bf8dd39
set reg0 65
out reg0
:end_da456bf8dd39
set reg0 66
out reg0
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

