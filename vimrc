set nocompatible              " be iMproved
filetype off                  " required!


let lst = split(globpath($HOME . "/.vim/bundle", '*/'), '\n')
for d in lst
    execute "set rtp+=" . d
endfor

let lst = split(globpath($HOME . "/.vim/wind_plugin", '*/'), '\n')
for d in lst
    execute "set rtp+=" . d
endfor

"set options{{{
"=================================================================
"set virtualedit=all
set t_Co=256
set ambiwidth=double "设置宽度不明的文字(如 “”①②→ )为双宽度文本参考。
set linespace=2
set hidden
set imdisable
set undofile
set nocompatible
set ruler
set nowrap "是否折行
set sidescroll=1
"set nohls "设置查找时,是否高亮,set hls 设置为高亮
set fileencodings=utf-8,gb18030,gb2312,cp936
set fileformats=unix,dos
set encoding=utf-8

"set fileencodings=utf-8
set guicursor=i:ver13-blinkon0,n-v-c:block-blinkon0 "光标
"set guifont  = 楷体\ 11
"set guifont=Monaco\ 10
"set guifont=DejaVu\ Sans\ Mono\ 12
"set guifont=Monaco\ Bold\ 12
set guifont=Inconsolata\ Medium\ 13

set guioptions-=T
set guioptions-=m
set guioptions-=l
set guioptions-=r
set pumheight=17
"

set mouse=a

"set lines=26 columns=90
"set lines=38 columns=155
set tabstop=4
set softtabstop=4
set sw=4
set expandtab
set shellslash
set grepprg=grep\ -nh\ $*
set nu
set fo+=mm
set laststatus=2
set autoindent
set textwidth=80

"set clipboard =unnamed
set foldmethod=marker
set tags=tags;
"set cursorline
set autochdir
set foldcolumn=0

"切换缓冲区时,如果有就转到指定窗口,
"如果没有分割窗口
set switchbuf=useopen
set foldminlines=9
set incsearch
"set ignorecase
"set backupdir=~/.cache/backup
set wildmode=full
set wildmenu
set wildignorecase
set completeopt=menuone
let ch_syntax_for_h=1

let g:wind_im_wubi=1
let g:wind_zoom='z'
set statusline=[%<%t]%0*%h%m%r%=Wubi:%{g:wind_im_wubi}\ BN:%n\ ft:%{&ft}\ %{&fileencoding}\ %{g:wind_zoom}\ %0*\ %-14.(%c%V%)\ %l/%L
"}}}
"key map{{{
map <F1> <nop>

function WinJump(k)
    let nr = winnr()
    exec "wincmd " . a:k

    let nnr = winnr()
    if nr != nnr
        return
    endif


    if !has_key(environ(), 'TMUX')
        return
    endif

    if 'j'== a:k
        let cmd ='tmux select-pane -D'
    endif
    if 'k'== a:k
        let cmd ='tmux select-pane -U'
    endif
    if 'h'== a:k
        let cmd ='tmux select-pane -L'
    endif
    if 'l'== a:k
        let cmd ='tmux select-pane -R'
    endif
    call system(cmd)
endfunction

""map <silent> wj :call WinJump('j')<cr>
""map <silent> wh :call WinJump('h')<cr>
""map <silent> wk :call WinJump('k')<cr>
""map <silent> wl :call WinJump('l')<cr>
"set the M-j M-h M-k M-l"
"item2 set the option as ESC+
"tmux.conf as:
""bind -n M-k run-shell 'tmux-vim-select-pane -U'
""bind -n M-j run-shell 'tmux-vim-select-pane -D'
""bind -n M-h run-shell 'tmux-vim-select-pane -L'
""bind -n M-l run-shell 'tmux-vim-select-pane -R'
"" when can set the comand in iterm2 as
"" command + h  0x1b 0x68
"" command + j  0x1b 0x6a
"" command + k  0x1b 0x6b
"" command + l  0x1b 0x6c
""
set <M-j>=j
set <M-h>=h
set <M-k>=k
set <M-l>=l
"map <silent> <M-j> :call WinJump('j')<cr>
"map <silent> <M-h> :call WinJump('h')<cr>
"map <silent> <M-k> :call WinJump('k')<cr>
"map <silent> <M-l> :call WinJump('l')<cr>
map <silent> `j :call WinJump('j')<cr>
map <silent> `h :call WinJump('h')<cr>
map <silent> `k :call WinJump('k')<cr>
map <silent> `l :call WinJump('l')<cr>
map wj  <C-W>j
map wk  <C-W>k
map wh  <C-W>h
map wl  <C-W>l

noremap <space> <C-f>
noremap <S-space> <C-b>
map <C-tab>  :update<cr>:bnext<cr>
map gn  :update<cr>:bnext<cr>
map gp  :update<cr>:bprevious<cr>
map ; :
vnoremap p "0p
vnoremap <c-c>    "+y
imap <C-Q> <C-x><C-k>
vmap q <esc>

map <c-n> :cn<cr>
imap <c-n> <esc>:cn<cr>
noremap [[ [[zz


syntax on
filetype plugin indent on


"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue

" mark
let g:mwDefaultHighlightingPalette = 'extended'
"用于从底端,忽略几个组
"feng
let g:IgnoreGrougeNum = 1

"对于zsh的一些标记,conqueterm不能识别.下面的设置使其正常显示,但还有一些区别
let g:ConqueTerm_TERM= 'xterm'
hi MBEVisibleNormal guifg=red

"杂项{{{
"cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-

syntax on
filetype plugin indent on
au BufNewFile,BufRead *.tex setf context
"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue


"
let g:netrw_list_hide='^\.'



let g:bufExplorerSortBy='number'     " Sort by the buffer's number.
let g:bufExplorerDefaultHelp=0       " Do not show default help.
"}}}
"对于zsh的一些标记,conqueterm不能识别.下面的设置使其正常显示,但还有一些区别
let g:ConqueTerm_TERM= 'vt220'
let g:netrw_menu=1

"minibuferexplorer
"let g:miniBufExplorerMoreThanOne=2
"let g:miniBufExplSplitBelow=0
"let g:miniBufExplSplitToEdge = 0
hi MBEVisibleNormal guifg=red

"}}}

filetype plugin indent on     " required!
autocmd BufEnter * highlight  Index ctermfg=green
autocmd BufLeave * silent! update
autocmd BufWrite *  let t = getcurpos()|silent! %s/[ \t]\+$//|call setpos('.', t)

"
"syntax
"hi SpecialKey guibg=white guifg=grey
let mapleader="`"
"go to the position of last
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

let t_Co=256
let g:Powerline_symbols = 'unicode'

let Tlist_Enable_Fold_Column = 0
let g:EasyMotion_leader_key = 'f'

set efm=%Dmake\[%\\d%\\+\]:\ Entering\ directory\ '%f',
            \%Dmake\[%\\d%\\+\]:\ Entering\ directory\ `%f',
            \%f:%l:%c:%m,
            \%f:%l:%m,
            \%DGrep\ Entering\ directory\ '%f'

"YCM{{{
let g:ycm_auto_trigger=0
let g:ycm_complete_in_strings = 0
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf = $HOME . "/.vim/ycm_extra_conf.py"
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_key_invoke_completion = '<C-c>'
let g:ycm_server_use_vim_stdout = 0
let g:ycm_filetype_whitelist = { '*': 1}
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_echo_current_diagnostic = 1
let g:ycm_extra_conf_vim_data = ['&filetype', 'g:frain_include_dirs']
let g:ycm_filetype_blacklist = {
      \ 'tagbar'   : 1,
      \ 'qf'       : 1,
      \ 'notes'    : 1,
      \ 'markdown' : 1,
      \ 'unite'    : 1,
      \ 'text'     : 1,
      \ 'vimwiki'  : 1,
      \ 'vim'  : 1,
      \ 'context'  : 1,
      \ 'frainuiSearch'  : 1,
      \}
"close this, when inside kernel project
let g:ycm_show_diagnostics_ui=0
let g:ycm_enable_diagnostic_highlighting = 0
"}}}

"syntastic{{{
let g:syntastic_echo_current_error=1
let g:syntastic_ignore_files=[".*\.c$", '.*\.cpp$', '.*\.html$']
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_filetype_map = {"json": "javascript" }
"}}}



let g:SimpleJsIndenter_BriefMode = 1

"xterm"
if &term  =~ '^xterm'
    let &t_SI = "\<Esc>[6 q"
    let &t_EI = "\<Esc>[2 q"
"    let &t_SR = "\<Esc>[4 q"
end

"iterm2"
if $ITERM_PROFILE  != ''
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"tmux"
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[6 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
endif

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

call matchadd("Ignore", "\r") "隐藏^M"


"not show table line
set showtabline=0

" for tmux to automatically set paste and nopaste mode at the time pasting (as
" happens in VIM UI)
" https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode

""function! WrapForTmux(s)
""  if !exists('$TMUX')
""    return a:s
""  endif
""
""  let tmux_start = "\<Esc>Ptmux;"
""  let tmux_end = "\<Esc>\\"
""
""  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
""endfunction
""
""let &t_SI .= WrapForTmux("\<Esc>[?2004h")
""let &t_EI .= WrapForTmux("\<Esc>[?2004l")
""
""function! XTermPasteBegin()
""  set pastetoggle=<Esc>[201~
""  set paste
""  return ""
""endfunction
""
""inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
"TODO This make switch insert mode to normal slow"


" https://vi.stackexchange.com/questions/2162/why-doesnt-the-backspace-key-work-in-insert-mode
set backspace=indent,eol,start



let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=light
""colorscheme solarized8
colorscheme fengdark

""colorscheme gruvbox
"关闭括号高亮"
""NoMatchParen
"colorscheme slate
"colorscheme mime
"colorscheme shine
"colorscheme torte
"colorscheme greens
"colorscheme darkblue
"colorscheme desert

""if has("gui_running")
""    colorscheme feng
""else
""colorscheme default
""endif
"colorscheme seoul256
"colorscheme monokai_c
"colorscheme lucius
"LuciusBlack
"LuciusDarkHighContrast
"LuciusBlackLowContrast
"
"




"for tenimal goto normal mode"
tnoremap <Esc> <c-w>N
set winwidth=85 " this include the line number"

