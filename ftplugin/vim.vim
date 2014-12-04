let g:indexmode=['^\s*func.*\s\+\(.\+$\)']
let g:indexcontract=['\1']
setlocal fdm=marker

"sign define piet text=>> texthl=SignColumn
"sign define item text=|- texthl=Visual
"sign define line text=| texthl=Visual
"sign define section text=>+ texthl=Visual
"sign define subsection text=>- texthl=Visual
"command!  Vimsign call s:init()
"function! s:init()
"	call s:Placethesign_vim()
"endfunction
"
"autocmd InsertLeave * silent Vimsign
"function! s:Placethesign_vim()
"
"	exec  "	sign unplace 2  file=" .expand("%:p")
"	let n_item= 0
"	for n in range(1,line("$"))
"		let Line=getline(n)
"		if (Line =~'function')
"			exec  "	sign place 2 line=" .n . " name=piet file=" .expand("%:p")
"		endif
"	endfor
"endfunction
"Vimsign
