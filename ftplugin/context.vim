inoremap <C-t> <esc>0i\starttyping<cr>\stoptyping<esc>k$a<cr>
inoremap <C-l> <esc>0i\startitemize<cr>\item <cr>\stopitemize<esc>k$a

inoremap <M-1> <esc>0i\section{<esc>$a}<left>
inoremap <M-2> <esc>0i\subsection{<esc>$a}<left>
inoremap <M-3> <esc>0i\subsubsection{<esc>$a}<left>

noremap <C-t> <esc>0i\starttyping<esc>/^\s*$<cr>i\stoptyping<cr><esc>
noremap <C-l> <esc>0i\startitemize<esc><cr>0i<esc><C-v>/^\s*$<cr>kI\item  <esc>/^\s*$<cr>0i\stopitemize<cr><esc>
noremap <M-1> <esc>0i\section{<esc>$a}<left><esc>
noremap <M-2> <esc>0i\subsection{<esc>$a}<left><esc>
noremap <M-3> <esc>0i\subsubsection{<esc>$a}<left><esc>

map <F2>    :update<cr>:WikiPost<cr>

set textwidth=9999999999999
set colorcolumn=0

"set foldmethod=expr
"let s:context_fold = 0
"let s:context_fold_next = 0
"func GetNextContextLevel(level, line)
"    if a:line =~ '^\\section'
"        if a:level == s:context_fold
"            s:context_fold = 0
"        endif
"        return  1
"    endif
"    if a:line =~ '^\\subsection'
"        if a:level == s:context_fold
"            s:context_fold = 0
"        endif
"        return  2
"    endif
"    if a:line =~ '^\\subsubsection'
"        if a:level == s:context_fold
"            s:context_fold = 0
"        endif
"        return  3
"    endif
"    if a:line =~ '^\\start'
"        return a:level + 1
"    endif
"    if a:line =~ '^\\stop'
"        return a:level - 1
"    endif
"    return a:level
"endfunction
"func ContextFold(lnum)
"    if a:lnum == 0
"        let s:context_fold =  GetNextContextLevel(0, getline(a:lnum))
"    else
"        let s:context_fold = s:context_fold_next
"    endif
"    let s:context_fold_next =  GetNextContextLevel(s:context_fold, getline(a:lnum +1))
"    return s:context_fold
"
"
"
"endfunction
"
"
"set foldexpr=ContextFold(v:lnum)




"set foldcolumn=4



" =============================================================================
" File: ftplugin/tex.vim
" Description: Provide foldexpr and foldtext for TeX files
" Author: Matthias Vogelgesang <github.com/matze>
"
" =============================================================================

"{{{ Globals

if !exists('g:tex_fold_sec_char')
    let g:tex_fold_sec_char = '✎'
endif

if !exists('g:tex_fold_env_char')
    let g:tex_fold_env_char = '➜'
endif

if !exists('g:tex_fold_override_foldtext')
    let g:tex_fold_override_foldtext = 1
endif

if !exists('g:tex_fold_allow_marker')
    let g:tex_fold_allow_marker = 1
endif

"}}}
"{{{ Fold options

"setlocal foldmethod=expr
"setlocal foldexpr=TeXFold(v:lnum)

if g:tex_fold_override_foldtext
    setlocal foldtext=TeXFoldText()
endif

"}}}
"{{{ Functions

function! TeXFold(lnum)
    let line = getline(a:lnum)
    let envs = '\(frame\|table\|figure\|align\|lstlisting\|itemize\|typing\)'

    if line =~ '^\s*\\section'
        return '>1'
    endif

    if line =~ '^\s*\\subsection'
        return '>2'
    endif

    if line =~ '^\s*\\subsubsection'
        return '>3'
    endif

    if line =~ '^\s*\\begin{' . envs
        return 'a1'
    endif

    if line =~ '^\s*\\start'
        return 'a1'
    endif
    if line =~ '^\s*\\stop'
        return 's1'
    endif

    if line =~ '^\s*\\end{' . envs
        return 's1'
    endif

    if g:tex_fold_allow_marker
        if line =~ '^[^%]*%[^{]*{{{'
            return 'a1'
        endif

        if line =~ '^[^%]*%[^}]*}}}'
            return 's1'
        endif
    endif

    return '='
endfunction

function! TeXFoldText()
    let fold_line = getline(v:foldstart)

    if fold_line =~ '^\s*\\section'
        let pattern = '\\\(sub\)*section{\([^}]*\)}'
        let repl = g:tex_fold_sec_char . ' \2'
    elseif fold_line =~ '^\s*\\subsection'
        let pattern = '\\\(sub\)*section{\([^}]*\)}'
        let repl =  '➜ \2'
    elseif fold_line =~ '^\s*\\\(sub\)*section'
        let pattern = '\\\(sub\)*section{\([^}]*\)}'
        let repl = '➜➜ \2'
    elseif fold_line =~ '^\s*\\start'
        let pattern = '\\begin{\([^}]*\)}'
        let repl = ' ' . g:tex_fold_env_char . ' \1'
    elseif fold_line =~ '^\s*\\begin'
        let pattern = '\\begin{\([^}]*\)}'
        let repl = ' ' . g:tex_fold_env_char . ' \1'
    elseif fold_line =~ '^[^%]*%[^{]*{{{'
        let pattern = '^[^{]*{' . '{{\([.]*\)'
        let repl = '\1'
    endif

    let line = substitute(fold_line, pattern, repl, '') . ' '
    return '+' . v:folddashes . line
endfunction

"}}}
"{{{ Undo

if exists('b:undo_ftplugin')
  let b:undo_ftplugin .= "|setl foldexpr< foldmethod< foldtext<"
else
  let b:undo_ftplugin = "setl foldexpr< foldmethod< foldtext<"
endif
"}}}







