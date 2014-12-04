set fdm=marker
set foldmarker={,}
imap <C-i> ->
set makeprg=dot\ -Tps\ %\ -o\ %<.ps 
map <F3> :make<CR>
map <F4> :!evince %<.ps&<cr><cr>
