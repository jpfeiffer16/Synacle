jmp >print_end
:print
jmp >var_str_tty_colors_1_end
:var_str_tty_colors_1
:var_str_tty_colors_1_end
wmem >var_str_tty_colors_1 reg0
jmp >var_str_ptr_tty_colors_2_end
:var_str_ptr_tty_colors_2
:var_str_ptr_tty_colors_2_end
rmem reg0 >var_str_tty_colors_1
wmem >var_str_ptr_tty_colors_2 reg0
:while__tty_colors_3_begin
rmem reg0 >var_str_ptr_tty_colors_2
rmem reg0 reg0
jf reg0 >while__tty_colors_3_end
rmem reg0 >var_str_ptr_tty_colors_2
rmem reg0 reg0
out reg0
rmem reg0 >var_str_ptr_tty_colors_2
add reg0 reg0 1
wmem >var_str_ptr_tty_colors_2 reg0
jmp >while__tty_colors_3_begin
:while__tty_colors_3_end
ret
:print_end
set reg0 >print
jmp >println_end
:println
jmp >var_str_ptr_tty_colors_9_end
:var_str_ptr_tty_colors_9
:var_str_ptr_tty_colors_9_end
wmem >var_str_ptr_tty_colors_9 reg0
rmem reg0 >var_str_ptr_tty_colors_9
call >print
set reg0 10
out reg0
ret
:println_end
set reg0 >println
jmp >alloc_end
:alloc
jmp >var__tty_colors_15_end
:var__tty_colors_15
&n
&i
&t
0
:var__tty_colors_15_end
wmem >var__tty_colors_15 &i
set reg0 >var__tty_colors_15
call >println
jmp >var_data_index_tty_colors_16_end
:var_data_index_tty_colors_16
:var_data_index_tty_colors_16_end
set reg0 16382
wmem >var_data_index_tty_colors_16 reg0
:while__tty_colors_17_begin
rmem reg0 >var_data_index_tty_colors_16
rmem reg0 reg0
call >not
jf reg0 >while__tty_colors_17_end
rmem reg0 >var_data_index_tty_colors_16
set reg1 1
call >subtract
wmem >var_data_index_tty_colors_16 reg0
jmp >var__tty_colors_19_end
:var__tty_colors_19
&o
&o
&p
&i
&n
&g
0
:var__tty_colors_19_end
wmem >var__tty_colors_19 &l
set reg0 >var__tty_colors_19
call >println
jmp >while__tty_colors_17_begin
:while__tty_colors_17_end
rmem reg0 >var_data_index_tty_colors_16
set reg1 2
add reg0 reg0 reg1
wmem >var_data_index_tty_colors_16 reg0
rmem reg0 >var_data_index_tty_colors_16
ret
ret
:alloc_end
set reg0 >alloc
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

