" Vim filetype plugin file
" Language:	man
" Maintainer:	SungHyun Nam <goweol@gmail.com>
" Last Change:	2014 Dec 29

" To make the ":Man" command available before editing a manual page, source
" this script from your startup vimrc file.

" If 'filetype' isn't "man", we must have been called to only define ":Man".
if &filetype == "man"

  " Only do this when not done yet for this buffer
  if exists("b:did_ftplugin")
    finish
  endif
  let b:did_ftplugin = 1

  " Ensure Vim is not recursively invoked (man-db does this)
  " when doing ctrl-[ on a man page reference.
  if exists("$MANPAGER")
    let $MANPAGER = ""
  endif

  " allow dot and dash in manual page name.
  setlocal iskeyword+=\.,-

  " Add mappings, unless the user didn't want this.
  if !exists("no_plugin_maps") && !exists("no_man_maps")
    if !hasmapto('<Plug>ManBS')
      nmap <buffer> <LocalLeader>h <Plug>ManBS
    endif
    nnoremap <buffer> <Plug>ManBS :%s/.\b//g<CR>:setl nomod<CR>''

    nnoremap <buffer> <c-]> :call <SID>PreGetPage(v:count)<CR>
    nnoremap <buffer> <c-t> :call <SID>PopPage()<CR>
  endif

  let b:undo_ftplugin = "setlocal iskeyword<"

endif

" vim: set sw=2:
