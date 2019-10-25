jmp >var_f8a197435224_end
:var_f8a197435224
:var_f8a197435224_end
jmp >array_new_end
:array_new
jmp >var_64a299513ea5_end
:var_64a299513ea5
:var_64a299513ea5_end
wmem >var_64a299513ea5 reg0
jmp >var_68bfcad29471_end
:var_68bfcad29471
:var_68bfcad29471_end
rmem reg0 >var_64a299513ea5
call >alloc_chunk
rmem reg0 >var_68bfcad29471
ret
ret
:array_new_end
set reg0 >array_new
jmp >array_get_nth_end
:array_get_nth
jmp >var_b4cf0b50d42a_end
:var_b4cf0b50d42a
:var_b4cf0b50d42a_end
jmp >var_bd80c10326ae_end
:var_bd80c10326ae
:var_bd80c10326ae_end
wmem >var_b4cf0b50d42a reg0
wmem >var_bd80c10326ae reg1
jmp >var_1822ec793e49_end
:var_1822ec793e49
:var_1822ec793e49_end
rmem reg0 >var_b4cf0b50d42a
call >array_length
rmem reg0 >var_bd80c10326ae
rmem reg0 >var_1822ec793e49
jf reg0 >end_f7a25f70e40d
rmem reg0 >var_f8a197435224
call >throw
:end_f7a25f70e40d
jmp >var_e1a394ed1fa6_end
:var_e1a394ed1fa6
:var_e1a394ed1fa6_end
rmem reg0 >var_b4cf0b50d42a
rmem reg0 >var_bd80c10326ae
rmem reg0 >var_e1a394ed1fa6
ret
ret
:array_get_nth_end
set reg0 >array_get_nth
jmp >array_set_nth_end
:array_set_nth
jmp >var_79655695ec00_end
:var_79655695ec00
:var_79655695ec00_end
jmp >var_e38889c56cb2_end
:var_e38889c56cb2
:var_e38889c56cb2_end
jmp >var_4cd6747abf69_end
:var_4cd6747abf69
:var_4cd6747abf69_end
wmem >var_79655695ec00 reg0
wmem >var_e38889c56cb2 reg1
wmem >var_4cd6747abf69 reg2
jmp >var_b600f3597137_end
:var_b600f3597137
:var_b600f3597137_end
rmem reg0 >var_79655695ec00
call >array_length
rmem reg0 >var_e38889c56cb2
rmem reg0 >var_b600f3597137
jf reg0 >end_81d46498b0a7
rmem reg0 >var_f8a197435224
call >throw
:end_81d46498b0a7
rmem reg0 >var_79655695ec00
rmem reg1 >var_e38889c56cb2
rmem reg2 >var_4cd6747abf69
wmem reg0 reg1
ret
:array_set_nth_end
set reg0 >array_set_nth
jmp >array_length_end
:array_length
jmp >var_5d3e7b60090e_end
:var_5d3e7b60090e
:var_5d3e7b60090e_end
wmem >var_5d3e7b60090e reg0
jmp >var_9920ffe7045b_end
:var_9920ffe7045b
:var_9920ffe7045b_end
set reg0 0
jmp >var_f796aa6e79bf_end
:var_f796aa6e79bf
:var_f796aa6e79bf_end
rmem reg0 >var_5d3e7b60090e
rmem reg0 >var_9920ffe7045b
:while_06a4673b876f_begin
rmem reg0 >var_f796aa6e79bf
set reg1 32767
eq reg0 reg0 reg1
jf reg0 >while_06a4673b876f_end
rmem reg0 >var_9920ffe7045b
rmem reg0 >var_f796aa6e79bf
rmem reg0 >var_5d3e7b60090e
rmem reg0 >var_9920ffe7045b
jmp >while_06a4673b876f_begin
:while_06a4673b876f_end
rmem reg0 >var_9920ffe7045b
ret
ret
:array_length_end
set reg0 >array_length
jmp >array_foreach_end
:array_foreach
jmp >var_2aaf6e225d06_end
:var_2aaf6e225d06
:var_2aaf6e225d06_end
jmp >var_a9e9b859e3dd_end
:var_a9e9b859e3dd
:var_a9e9b859e3dd_end
wmem >var_2aaf6e225d06 reg0
wmem >var_a9e9b859e3dd reg1
jmp >var_472678e1fb68_end
:var_472678e1fb68
:var_472678e1fb68_end
rmem reg0 >var_2aaf6e225d06
call >array_length
jmp >var_fc76ce2d81e7_end
:var_fc76ce2d81e7
:var_fc76ce2d81e7_end
set reg0 0
:for_342494959a29_begin
rmem reg0 >var_fc76ce2d81e7
rmem reg0 >var_472678e1fb68
jf reg0 >for_342494959a29_end
rmem reg0 >var_2aaf6e225d06
rmem reg1 >var_fc76ce2d81e7
rmem reg2 >var_fc76ce2d81e7
rmem reg7 >var_a9e9b859e3dd
call reg7
rmem reg0 >var_fc76ce2d81e7
jmp >for_342494959a29_begin
:for_342494959a29_end
ret
:array_foreach_end
set reg0 >array_foreach
jmp >array_map_end
:array_map
jmp >var_5c34c54282bf_end
:var_5c34c54282bf
:var_5c34c54282bf_end
jmp >var_deae94f3836b_end
:var_deae94f3836b
:var_deae94f3836b_end
wmem >var_5c34c54282bf reg0
wmem >var_deae94f3836b reg1
jmp >var_4e5268594e91_end
:var_4e5268594e91
:var_4e5268594e91_end
rmem reg0 >var_5c34c54282bf
call >array_length
jmp >var_002bb6b10bff_end
:var_002bb6b10bff
:var_002bb6b10bff_end
rmem reg0 >var_4e5268594e91
call >alloc_chunk
jmp >var_5efb71ce2707_end
:var_5efb71ce2707
:var_5efb71ce2707_end
set reg0 0
:for_c1345a72ad2b_begin
rmem reg0 >var_5efb71ce2707
rmem reg0 >var_4e5268594e91
jf reg0 >for_c1345a72ad2b_end
jmp >var_4204cd977b52_end
:var_4204cd977b52
:var_4204cd977b52_end
rmem reg0 >var_5c34c54282bf
rmem reg1 >var_5efb71ce2707
call >array_get_nth
jmp >var_905e473c8cdb_end
:var_905e473c8cdb
:var_905e473c8cdb_end
rmem reg0 >var_4204cd977b52
rmem reg7 >var_deae94f3836b
call reg7
rmem reg0 >var_002bb6b10bff
rmem reg1 >var_5efb71ce2707
rmem reg2 >var_905e473c8cdb
call >array_set_nth
rmem reg0 >var_5efb71ce2707
jmp >for_c1345a72ad2b_begin
:for_c1345a72ad2b_end
rmem reg0 >var_002bb6b10bff
ret
ret
:array_map_end
set reg0 >array_map
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

