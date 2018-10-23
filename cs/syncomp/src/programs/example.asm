jmp >var_7d16bdf44f23_end
:var_7d16bdf44f23
:var_7d16bdf44f23_end
set reg0 4
wmem >var_7d16bdf44f23 reg0
jmp >var_dd6c44558634_end
:var_dd6c44558634
:var_dd6c44558634_end
rmem reg0 >var_7d16bdf44f23
set reg1 3
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
wmem >var_dd6c44558634 reg0
set reg0 65
rmem reg1 >var_dd6c44558634
add reg0 reg0 reg1
out reg0
jmp >var_d204b7825434_end
:var_d204b7825434
:var_d204b7825434_end
set reg0 0
wmem >var_d204b7825434 reg0
:while_9f6bf67321e2_begin
rmem reg0 >var_d204b7825434
set reg1 3
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_9f6bf67321e2_end
rmem reg0 >var_d204b7825434
add reg0 reg0 1
wmem >var_d204b7825434 reg0
set reg0 65
rmem reg1 >var_d204b7825434
add reg0 reg0 reg1
out reg0
jmp >while_9f6bf67321e2_begin
:while_9f6bf67321e2_end
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

