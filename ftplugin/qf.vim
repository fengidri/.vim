map <buffer> <2-LeftMouse>  <cr>
map q   ZZ

"autocmd BufWinLeave * if &ft == "qf" |  wincmd p | endif
autocmd BufWinLeave <buffer>   wincmd p 
