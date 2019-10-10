jmp >alloc_end
:alloc
jmp >var_e80bf6ff9117_end
:var_e80bf6ff9117
:var_e80bf6ff9117_end
set reg0 16382
wmem >var_e80bf6ff9117 reg0
:while_a831771b51c5_begin
rmem reg0 >var_e80bf6ff9117
rmem reg0 reg0
call >not
jf reg0 >while_a831771b51c5_end
rmem reg0 >var_e80bf6ff9117
set reg1 1
call >subtract
wmem >var_e80bf6ff9117 reg0
jmp >while_a831771b51c5_begin
:while_a831771b51c5_end
rmem reg0 >var_e80bf6ff9117
set reg1 2
add reg0 reg0 reg1
wmem >var_e80bf6ff9117 reg0
rmem reg0 >var_e80bf6ff9117
ret
ret
:alloc_end
set reg0 >alloc
jmp >print_end
:print
jmp >var_d9028c8b2414_end
:var_d9028c8b2414
:var_d9028c8b2414_end
wmem >var_d9028c8b2414 reg0
:while_c8700b4806c0_begin
rmem reg0 >var_d9028c8b2414
rmem reg0 reg0
jf reg0 >while_c8700b4806c0_end
rmem reg0 >var_d9028c8b2414
rmem reg0 reg0
out reg0
rmem reg0 >var_d9028c8b2414
add reg0 reg0 1
wmem >var_d9028c8b2414 reg0
jmp >while_c8700b4806c0_begin
:while_c8700b4806c0_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_5733f5d03aae_end
:var_5733f5d03aae
:var_5733f5d03aae_end
wmem >var_5733f5d03aae reg0
rmem reg0 >var_5733f5d03aae
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >var_fdbdc3c003e6_end
:var_fdbdc3c003e6
:var_fdbdc3c003e6_end
call >alloc
wmem >var_fdbdc3c003e6 reg0
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

