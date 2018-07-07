jmp >var_b06c336a-6892-4f86-a30b-0e7579fb3e44_end
:var_b06c336a-6892-4f86-a30b-0e7579fb3e44
:var_b06c336a-6892-4f86-a30b-0e7579fb3e44_end
set reg0 0
wmem >var_b06c336a-6892-4f86-a30b-0e7579fb3e44 reg0
:while_84cb4c7b-702b-4b00-aad2-207caee3abad_begin
rmem reg0 >var_b06c336a-6892-4f86-a30b-0e7579fb3e44
set reg1 20
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_84cb4c7b-702b-4b00-aad2-207caee3abad_end
rmem reg0 >var_b06c336a-6892-4f86-a30b-0e7579fb3e44
set reg1 48
add reg0 reg0 reg1
out reg0
call >print
rmem reg0 >var_b06c336a-6892-4f86-a30b-0e7579fb3e44
set reg1 1
add reg0 reg0 reg1
wmem >var_b06c336a-6892-4f86-a30b-0e7579fb3e44 reg0
jmp >while_84cb4c7b-702b-4b00-aad2-207caee3abad_begin
:while_84cb4c7b-702b-4b00-aad2-207caee3abad_end
halt
:print
set reg0 10
out reg0
ret

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

