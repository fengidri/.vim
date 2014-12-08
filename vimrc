set nocompatible              " be iMproved
filetype off                  " required!

"加载第三方的插件 
"为了可以与im 并存. 要修改autoload/youcompleteme.vim
"s:InvokeCompletion, s:SetCompleteFunc
"让这两个函数直接退出
set rtp+=$HOME/.vim/bundle/YouCompleteMe
set rtp+=$HOME/.vim/bundle/syntastic
set rtp+=$HOME/.vim/bundle/EasyMotion
set rtp+=$HOME/.vim/bundle/mark
set rtp+=$HOME/.vim/bundle/pyplugin

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
set guifont=Inconsolata\ Medium\ 14

set guioptions-=T
set guioptions-=m
set guioptions-=l
set guioptions-=r
set pumheight=17
"
set mouse=a
"set lines=26 columns=90
"set lines=38 columns=155
set ts=4
set sts=4
set sw=4
set shellslash
set grepprg=grep\ -nh\ $*
set nu
set fo+=mm
set laststatus=2
set autoindent
set expandtab
set textwidth=80
set colorcolumn=81 

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
set backupdir=~/.cache/backup
set wildmode=full
set wildmenu
set wildignorecase
set completeopt=menuone
let ch_syntax_for_h=1
set statusline=[%<%t]%0*%h%m%r%=BufNr:%n\ ft:%{&ft}%{&fileencoding}%0*\ %-14.(%c%V%)\ %l/%L\ 
"}}}
"key map{{{
map <F1> <nop>
map wj <C-w>j
map wh <C-w>h
map wl <C-w>l
map wk <C-w>k
map wa :1 wincmd w<cr>
map wb :2 wincmd w<cr>
map wc :3 wincmd w<cr>
map wd :4 wincmd w<cr>
map we :5 wincmd w<cr>
map wf :6 wincmd w<cr>
noremap <space> <C-f>
noremap <S-space> <C-b>
map <C-tab>  :update<cr>:bnext<cr>
map gt  :GoAny<cr>
map gf  :GoFile<cr>
map gn  :update<cr>:bnext<cr>
map gp  :update<cr>:bprevious<cr>
map ; :
vnoremap p "0p
vnoremap <c-c>    "+y
imap <C-Q> <C-x><C-k>
vnoremap / ""y/<C-R>0<CR>
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
"{{{ nerdtree
let g:NERDTreeSortOrder=['\.vim$', '\.cpp$', '\.c$', '\.h$', '*','\/$']

let NERDTreeIgnore=[
            \'\.o$',
            \'\.suo$',
            \'\.vcproj$',
            \'\.txt$',
            \'tags$',
            \'\.conf$',
            \'\.bak$',
            \'\.pyc$',
            \'^[mM]akefile',
            \'^__init__\.py$',
            \'\.db$',
            \'^autom4te\.cache$',
            \'^PClint$',
            \'\.a$',
            \'\.in$',
            \'\.log$',
            \'\.ac$',
            \'ViProject.AuVim',
            \'\.wps$',
            \'\.doc$',
            \'\.et$',
            \'missing$',
            \'install-sh$',
            \'depcomp$',
            \'INSTALL$',
            \'COPYING$',
            \'configure$',
            \'config.status$',
            \'compile$',
            \'aclocal.m4$',
            \'AUTHORS$',
            \'ChangeLog$',
            \'README$',
            \'stamp-h1$',
            \'vipro$'
            \]
"}}}"

"对于zsh的一些标记,conqueterm不能识别.下面的设置使其正常显示,但还有一些区别
let g:ConqueTerm_TERM= 'xterm'
hi MBEVisibleNormal guifg=red 
"colorscheme torte
"colorscheme slate
"colorscheme mime
"colorscheme shine
"colorscheme torte
"colorscheme greens
"colorscheme darkblue
"colorscheme default
"colorscheme desert
colorscheme feng
"colorscheme lucius 
"LuciusBlack 
"LuciusDarkHighContrast
"LuciusBlackLowContrast
"杂项{{{
"cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-

syntax on
filetype plugin indent on
au BufNewFile,BufRead *.tex setf context
"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue

	
"let g:winManagerAutoOpen=1
"let g:winManagerWidth=30    " the width of the explorer areas. 
"
"let g:winManagerWindowLayout='TagList|Explore,BufExplorer'
let g:winManagerWindowLayout='TagList|NERDTree'
"let g:winManagerWindowLayout='TagList,FileExplorer'
nmap wm :WMToggle<cr>
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
autocmd BufLeave * update

"
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
let g:ycm_complete_in_strings = 0
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf = '/home/feng/Dropbox/ycm_extra_conf.py'
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_key_invoke_completion = '<C-c>'
"set imactivatekey=C-space
"now the youcompleteme is still weak for python
let g:ycm_server_use_vim_stdout = 0
let g:ycm_filetype_whitelist = { '*': 1}
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_echo_current_diagnostic = 1
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
      \}
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


"hi SpecialKey ctermfg=15 guifg=bg guibg=bg
"隐藏^M"
call matchadd("Ignore", "\r")

