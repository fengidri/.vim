" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
"
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "feng"

let default_color="#cce8cf"
let t_Co=256

"Sublime
""let default_color="#242520"

"默认"
hi Normal       guifg=NONE       ctermfg=255
"注释"
hi Comment      guifg=grey ctermfg=60 gui=italic
hi String       guifg=#e06ed5 gui=bold           ctermfg=185
hi constant     guifg=#a278ee ctermfg=141
hi conditional  guifg=#df2367 gui=bold           cterm=bold    ctermfg=161
hi PreProc      guifg=#336661 ctermfg=36
hi Function     guifg=#70ae29 gui=bold           ctermfg=70
hi Keyword      guifg=#FF00BF gui=bold           ctermfg=199
hi special      guifg=#DC5B00 ctermfg=166
hi SpecialKey   guifg=#DC5B00 ctermfg=166
hi Macro        guifg=#FF6400 gui=bold           ctermfg=202
hi operator     guifg=#FF0D00 ctermfg=196
hi Label        guifg=#FF0D00 gui=bold,underline ctermfg=196
hi Typedef      guifg=#804040 gui=bold           ctermfg=95
hi Type         guifg=#b58900 gui=bold           ctermfg=80
hi CursorLine   guibg=#ACFFA1 guifg=grey        ctermfg=57    ctermbg=255 cterm=reverse
hi VertSplit    guifg=#5e7079 guibg=#5e7079      ctermfg=60
hi StatusLineNC guifg=#5e7079 ctermfg=60
hi StatusLine   guifg=#899595 ctermfg=102
"行号"
hi LineNr       guibg=NONE guifg=#1e7079         ctermfg=16    ctermbg=0
hi Conceal      guibg=#242520 ctermfg=16
hi Pmenu        guibg=grey    guifg=white
hi PmenuSel     guibg=#97d681 guifg=black
hi NonText      gui=bold      guifg=grey
hi Search       guifg=black   guibg=grey         ctermfg=0

hi ColorColumn  guifg=red   guibg=NONE        ctermbg=233
hi MatchParen   gui=underline guifg=#ffffff      guibg=#242520
hi Statement    cterm=bold ctermfg=167 gui=bold guifg=Brown
hi Visual       term=reverse  cterm=reverse      gui=reverse

hi SpellBad term=reverse cterm=undercurl,reverse ctermbg=241 gui=undercurl guisp=Red

hi MatchParen term=underline cterm=underline ctermfg=6 ctermbg=NONE gui=underline guifg=NONE guibg=NONE
exec "hi FoldColumn guifg=white  guibg=". default_color
hi Folded  guifg=blue gui=italic
""hi Directory guifg=white

syntax match  Comment /\w*.c$/


