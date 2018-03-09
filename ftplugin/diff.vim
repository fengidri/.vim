setlocal foldmethod=expr foldexpr=DiffFold(v:lnum)
function! DiffFold(lnum)
  let line = getline(a:lnum)
""  if line =~ '^\(diff\|---\|+++\|@@\) '
  if line =~ '^diff'
    return '>1'
  elseif line =~ '^@@'
    return '>2'
  else
    return '='
  endif
endfunction
