setlocal colorcolumn=0
set cursorline
set winfixheight

syntax keyword  WarningMsg warning
syntax keyword  ErrorMsg error
"syntax match Comment "‘[^’]\+’"
syntax match Comment /@.\+@/hs=s+1,he=e-1

map <buffer> q ZZ
map <buffer> <cr> :py  quick.open()<cr>
map <buffer> <2-LeftMouse>  :py  quick.open()<cr>
map <C-n>    :py quick.next( )<CR>
