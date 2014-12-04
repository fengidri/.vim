"item`进入context的itemize环境
"table`进入context的table环境
"typing ...
"code ...
"virbatim ...
"]在普通模式下插入}
"F2保存文件
"F3编译文件
"F4查看pdf文件,自动探测gnome与kde环境分别调用pdf阅读器
"文字宽度为80
"编译{{{
set sw=2
set textwidth=80
"set iskeyword+=\
let g:texsign = 1
map <F3> :update<CR>:call Tex_complier()<CR><CR>
imap <F3> <esc>:update<CR>:call Tex_complier()<CR><CR>
map  <F4>  :call PDF_view()<CR>
imap  <F4>  <esc>:call PDF_view()<CR>
function! PDF_view()
		let pdfname=expand("%:p:r") .".pdf"
		if $DESKTOP_SESSION =="gnome"
			exe 'silent !evince' pdfname '&'
		elseif $DESKTOP_SESSION =~ "kde"  "kde
			exe 'silent !okular' pdfname '>/dev/null 2>&1&'
		else
			echo "I don't know how to open the pdf"
			exe 'silent !okular' pdfname '>/dev/null 2>&1&'
		endif
endfunction

function! Tex_complier()
	let filepath = expand("%:p:h")
	"得到当前的工作路径
	let nowpath = getcwd()
	if nowpath != filepath
		exec "cd " filepath
		let changepath = 0
	endif
	if exists("g:nu_buf_of_logwin")
		if bufwinnr(g:nu_buf_of_logwin) != -1
		"退出index
			exe bufwinnr(g:nu_buf_of_logwin) . "wincmd w"
			q
		endif
	endif
	let texname=expand("%:p")
"	exe '!xetex -halt-on-error ' . texname 
"	exe '!xelatex -halt-on-error ' . texname 
	exe '!context ' . texname
	if v:shell_error == "0"
		let g:pdfname=expand("%:p:r") .".pdf"
"		exe 'silent! !okular' pdfname '&'
		echo "The pdf is OK, there is not error.Succeed!"
	else
		let logname=expand("%:p:r") . ".log"
		exec 'botright 5split ' logname
		exec 'normal G'
		set nonu
		setlocal noswapfile
		let g:nu_buf_of_logwin=bufnr("%")	
		wincmd p
	endif
	if exists("changepath")
		exec "cd " nowpath
		unlet changepath
	endif
endfunction
"}}}
"设置快捷键{{{
call IMAP ('$$', '$$ <++>', "context")
call IMAP ('()', '()', "context")
call IMAP ('[]', '[<++> ]', "context")
call IMAP ('{}', '{ <++> }<++>', "context")
call IMAP ('item`', "\\startitemize\<cr>\\item <++>\<cr>\\stopitemize\<cr><++>", "context")
call IMAP ('table`', "\\starttable\<cr>\\NC<++>		\\VL<++>	\\AR\<cr>\\stoptable\<cr><++>", "context")
call IMAP ('typing`', "\\starttyping\<cr><++>\<cr>\\stoptyping\<cr><++>", "context")
call IMAP ("TPI", "		\\starttyping\<cr><++>\<cr>\\stoptyping\<cr><++>", "context")
call IMAP ('code`', "\\startcode\<cr><++>\<cr>\\stopcode\<cr><++>", "context")
call IMAP ('virbatim`', "\\startvirbatim\<cr><++>\<cr>\\stopvirbatim\<cr><++>", "context")
map ] i}<esc>
"}}}
"其它{{{

"设置不同环境的不同色彩
highlight contextEscaped ctermfg=red guifg=red

"index
let g:indexmode=['^\\def\\\([@,a-z,A-Z]*\)','\\part\s*\(.\+\)$', '\\section\s*\(.\+\)$', '\\subsection\s*\(.\+\)$', '\\subsubsection\s*\(.\+\)$','%%\(\w\+\)$']
let g:indexcontract=['\1','\1','+\1','  -\1','    -\1','+\1']
"}}}
"{{{自动备份,同步
"
"autocmd BufWinleave *.tex if getline("$") =~ "Backup"||getline("1") =~ "Backup" |call Backup()| endif
function! Backup()
	"如意backup_path的最后一个字符是"/"
	let backup_path = "/home/feng/document/yunio/"
	if isdirectory(backup_path) == 0
		echo "no the path"
		let stop = getchar()
		return 1
	endif
	"当前文件的全名
	let name = expand("%:p")
	if filereadable(name) == 0
		echo "this file has problem"
		let stop = getchar()
		return 2
	endif
	let date = strftime("%y%m%d%H%M")
	let backup_name = backup_path  . expand("%:t:r") ."_" . date .".". expand("%:e")
	
	if filereadable(backup_name) == 1
		if delete(backup_name) == 1
			echo "there is the same file"
			let stop = getchar()
			return 3
		endif
	endif
	"写入tex文件
	exec "write " backup_name
	"复制pdf文件
	let pdfname=expand("%:p:r") .".pdf"
	if filereadable(pdfname) != 1
		echo "there is not the pdf file"
		let stop = getchar()
		return 4
	endif
	let targetpdf =backup_path  . expand("%:t:r") . ".pdf"
	let pdfcpinfo = system("cp " .pdfname ." " . targetpdf)
	if pdfcpinfo != ''
		echo "can't cp the pdf file"
		let stop = getchar()
		return 5
	endif
	return 0
endfunction
"}}}
"设置sign{{{
"sign define section linehl=Folded texthl=SignColor
"sign define item linehl=Folded texthl=SignColor
"sign define piet text=>> texthl=SignColumn
"sign define item text=|- texthl=Visual
"sign define line text=| texthl=Visual
"sign define section text=>+ texthl=Visual
"sign define subsection text=>- texthl=Visual
"command!  Texsign call Placethesign_tex()
"inoremap <cr> <esc>:call CR_place()<cr>a<cr>
""autocmd InsertLeave * silent Texsign
""回车时自动修理
"function! CR_place()
"	let n=line('.')
"	call Placethesign_tex(n)
"endfunction
"function! Placethesign_tex(line_nu)
"	"exec  "	sign unplace 2  file=" .expand("%:p")
"	let n_item= 0
"	let n=a:line_nu
"	let Line= getline(n)
"		if (Line =~'\\starttext\|stoptext')
"			exec  "	sign place 2 line=" .n . " name=piet file=" .expand("%:p")
"		endif
"		if (Line =~'\\section')
"			exec  "	sign place 2 line=" .n . " name=section file=" .expand("%:p")
"		endif
"		if (Line =~'\\subsection')
"			exec  "	sign place 2 line=" .n . " name=section file=" .expand("%:p")
"		endif
"		if (Line =~'\\startitemize')
"			exec  "	sign place 2 line=" .n . " name=item file=" .expand("%:p")
"		endif
"		if (Line =~'\\stopitemize')
"			exec  "	sign place 2 line=" .n . " name=item file=" .expand("%:p")
"		endif
"	"	if (Line =~'\\stopitemize' && n_item==1)
"	"		exec  "	sign place 2 line=" .n . " name=item file=" .expand("%:p")
"	"	endif
"	"	if (n_item!=0)
"	"		exec  "	sign place 2 line=" .n . " name=line file=" .expand("%:p")
"	"	endif
"	"	if (Line =~'\\startitemize' && n_item>0)
"	"		let n_item=  n_item + 1
"	"	endif
"	"	if (Line =~'\\stopitemize' && n_item!=0)
"	"		exec  "	sign place 2 line=" .n . " name=item file=" .expand("%:p")
"	"	endif
"endfunction
"
""进入tex文件时,自动循环文件行,启动sign
"function! Init_place_sign()
"	for line_nu in range(0,line('$'))
"		call Placethesign_tex(line_nu)
"	endfor
"endfunction
"call Init_place_sign()
""}}}


setlocal foldmethod=marker
"set foldexpr=Ffold_expr(v:lnum)
"function! Ffold_expr(lnum)
"	let line= getline(a:lnum)
"	let next= getline(a:lnum +1)
"python<<EOF
"import vim
"line=vim.eval("line")
"next=vim.eval("line")
"print line
"if next =~'\\section'
"	vim.command("let re=1")
"if line =~'\\section'
"	vim.command("let re=1")
"if next =~'\\subsection'
"	vim.command("let re=2")
"if line =~'\\subsection'
"	vim.command("let re=2")
"if next =~'\\subsubsection'
"	vim.command("let re=3")
"if line =~'\\subsubsection'
"	vim.command("let re=3")
"	#if line =~'{{{')
"	#   return foldlevel(a:lnum-1) + 1
"	#if line =~'}}}')
"	#	return '<' . foldlevel(a:lnum-1) 
"re=1
"vim.command('let re="%s"'% re)
"
"EOF
"return re
"endfunction
syn on
"syn region section_Fold start=/\s*\\\(sub\)*section/ end=/\s*\\\(sub\)*section/me=s-1 transparent fold
syn region section_Fold start=/\\section/ end=/\\section/me=s-1 transparent fold
syn region subsection_Fold start=/\s*\\subsection/ end=/\s*\\\(sub\)\?section/me=s-1 transparent fold
syn region subsubsection_Fold start=/\s*\\subsubsection/ end=/\s*\\\(sub\)*section/me=s-1 transparent fold
syn region typing_Fold start=/\\starttyping/ end=/\\stoptyping/  fold
"syn region typing_Fold start=/\\startitemize/ end=/\\stopitemize/ transparent fold
syn region item_Fold start=/\\item/ end=/\s*\\\(item\|stopitemize\)/me=s-1 transparent fold
syn region marker_Fold start=/{{{/ end=/}}}/ transparent fold
set foldmethod=syntax
