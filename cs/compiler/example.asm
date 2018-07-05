jmp >var_b1f30667-f89c-41a9-80f3-a17e40872863_end
:var_b1f30667-f89c-41a9-80f3-a17e40872863
:var_b1f30667-f89c-41a9-80f3-a17e40872863_end
set reg0 0
wmem >var_b1f30667-f89c-41a9-80f3-a17e40872863 reg0
:while_fbc88f36-1a79-4856-ace3-8c0139014751_begin
rmem reg0 >var_b1f30667-f89c-41a9-80f3-a17e40872863
set reg1 20
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_fbc88f36-1a79-4856-ace3-8c0139014751_end
rmem reg0 >var_b1f30667-f89c-41a9-80f3-a17e40872863
set reg1 48
add reg0 reg0 reg1
out reg0
set reg0 10
out reg0
rmem reg0 >var_b1f30667-f89c-41a9-80f3-a17e40872863
set reg1 1
add reg0 reg0 reg1
wmem >var_b1f30667-f89c-41a9-80f3-a17e40872863 reg0
jmp >while_fbc88f36-1a79-4856-ace3-8c0139014751_begin
:while_fbc88f36-1a79-4856-ace3-8c0139014751_end

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

