" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
"
" Created using ColorSchemeCreator
" by Jose Quesada, PhD (quesada@gmail.com) (2007 Dec)
" NOTE: only good for non-terminal version
" Maintainer: Jose Quesada
" Last Change: 2007 Dec

" mimic PSPad rajat colors, but with much improved syntax highlighting
" For example
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "feng"

let default_color="#cce8cf"

"Sublime
let default_color="#242520" 
let text_color="#ffffff"
let string_color="#d7cc6c"
let fun_color = "#70ae29"
"such  as : int sruct"
let type_color="#5fcbdf"  

"such  as: if else"
let conditional_color="#df2367"

"such as: int"
let constant_color="#a278ee"
exec "hi Normal	 gui=bold	guifg=" . text_color . " guibg=". default_color 
"exec "hi Comment		guifg=#009999  gui=bold 	"
exec "hi Comment		guifg=#5e7079  "
exec "hi String 		guifg=" . string_color " gui=bold "
exec "hi constant		guifg=". constant_color
exec "hi conditional	guifg=". conditional_color. " gui=bold 		"
exec "hi preProc		guifg=#336666  	"
exec "hi Function		guifg=". fun_color ." gui=bold 		"
exec "hi Keyword		guifg=#FF00BF gui=bold 		"
exec "hi special		guifg=#DC5B00"
exec "hi SpecialKey		guifg=#DC5B00"
exec "hi Macro		guifg=#FF6400 gui=bold 		"
exec "hi operator		guifg=#FF0D00 					"
exec "hi Label 		guifg=#FF0D00 gui=bold,underline "
exec "hi Typedef		guifg=#804040 gui=bold 		"
exec "hi Type		guifg=". type_color ."  gui=bold 		"
exec "hi LineNr   guibg=#d0ccca"
exec "hi CursorLine guibg=#ACFFA1 guifg=black  "
exec "hi clear Visual"
exec "hi Visual		term=reverse cterm=reverse gui=reverse"
exec "hi VertSplit guifg=#5e7079  guibg=#5e7079  "
exec "hi StatusLineNC guifg=#5e7079"
exec "hi StatusLine guifg=#899595"
exec "hi LineNr     guibg=". default_color ."   guifg=grey"
exec "hi Conceal guibg=". default_color
exec "hi Pmenu guibg=grey guifg=white"
exec "hi PmenuSel guibg=#97d681 guifg=black "
exec "hi NonText gui=bold guifg=grey"
"such as: quick"
exec "hi Search guifg=black  guibg=grey"
exec "hi ColorColumn guifg=white  guibg=grey "
exec "hi MatchParen	 gui=underline	guifg=" . text_color . " guibg=". default_color

exec "hi FoldColumn guifg=white  guibg=". default_color
hi Folded  guifg=blue gui=italic
hi Directory guifg=white
syntax match  Comment /\w*.c$/
