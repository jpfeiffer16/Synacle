" Bc syntax file
" Language:	bc
" Maintainer:	Joe Pfeiffer <joepfeiffer16@gmail.com>
" Last Change:	2019 Oct 22

" if exists("b:current_syntax")
"   finish
" endif

" Statements
syn keyword	bc_Statement	break return function
syn keyword	bc_Statement	int string var func pointer
syn keyword	bc_Statement	breakpoint

" Looping Statements
syn keyword	bc_Repeat		while for do

hi def link bc_Statement		Statement
hi def link bc_Repeat			Repeat
