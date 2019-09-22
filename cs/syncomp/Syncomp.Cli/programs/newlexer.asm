jmp >doathing_end
:doathing
jmp >var_d96f5520a32d_end
:var_d96f5520a32d
:var_d96f5520a32d_end
wmem >var_d96f5520a32d reg0
rmem reg7 >var_d96f5520a32d
call reg7
ret
:doathing_end
set reg0 >doathing
jmp >var_dd380d82b85c_end
:var_dd380d82b85c
:var_dd380d82b85c_end
jmp >function_f57b74d63c0b_end
:function_f57b74d63c0b
set reg0 65
out reg0
ret
:function_f57b74d63c0b_end
set reg0 >function_f57b74d63c0b
wmem >var_dd380d82b85c reg0
jmp >function_97116427c5b5_end
:function_97116427c5b5
set reg0 66
out reg0
ret
:function_97116427c5b5_end
set reg0 >function_97116427c5b5
call >doathing
rmem reg0 >var_dd380d82b85c
call >doathing
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

