" Vim syntax file
" Language: TODO
" Author:   Ronald Crooy <r.a.crooy@gmail.com>

if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

syn match  tododone        "^\s*[x]"
syn match  todoinprogress  "^\s*[~]"
syn match  todotodo        "^\s*[ ]"
syn match  todonote        "^\s*[*-]"
syn match  todothought     "^\s*\^"
syn match  todoquestion    "^\s*\?"
syn match  todowant        "^\s*\$"
syn match  todoidea        "^\s*!"
syn match  todonote        "^\s*[*-]"

if !exists("did_todo_syntax_inits")
  let did_todo_syntax_inits = 1

  hi link tododone tDone
    hi link done tDone
    hi default tDone ctermfg=34 cterm=bold

  hi link todothought tThought
    hi link todothought tThought
    hi default tThought ctermfg=208

  hi link todoinprogress tProgress
    hi link inprogress tProgress
    hi default tProgress ctermfg=226

  hi link todotodo tTodo
    hi link matttodo tTodo
    hi default tTodo ctermfg=160 ctermbg=233 cterm=bold

  hi link todoquestion tQuestion
    hi default tQuestion ctermfg=196

  hi link todonote tTodonote
    hi default tTodonote ctermfg=197 cterm=bold

  hi link todowant tWant
   hi default tWant ctermfg=29 cterm=bold

  hi link todoidea tIdea
    hi default tIdea ctermfg=154 cterm=bold

endif

let b:current_syntax="logbook"

