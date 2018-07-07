jmp >var_7920a3e9-b01d-4001-af3d-a95fad175ed4_end
:var_7920a3e9-b01d-4001-af3d-a95fad175ed4
:var_7920a3e9-b01d-4001-af3d-a95fad175ed4_end
set reg0 0
wmem >var_7920a3e9-b01d-4001-af3d-a95fad175ed4 reg0
:while_bc25e3ee-24b8-45de-9126-23d8cd3da7ea_begin
rmem reg0 >var_7920a3e9-b01d-4001-af3d-a95fad175ed4
set reg1 20
eq reg2 reg0 reg1
gt reg3 reg0 reg1
or reg0 reg2 reg3
call >not
jf reg0 >while_bc25e3ee-24b8-45de-9126-23d8cd3da7ea_end
call >one
rmem reg0 >var_7920a3e9-b01d-4001-af3d-a95fad175ed4
set reg1 1
add reg0 reg0 reg1
wmem >var_7920a3e9-b01d-4001-af3d-a95fad175ed4 reg0
jmp >while_bc25e3ee-24b8-45de-9126-23d8cd3da7ea_begin
:while_bc25e3ee-24b8-45de-9126-23d8cd3da7ea_end
set reg0 10
out reg0
halt
:one
set reg0 65
out reg0
call >two
ret
:two
set reg0 66
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

