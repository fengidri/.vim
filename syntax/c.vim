"高亮函数名
syn match cFunt  "[a-zA-Z_][a-zA-Z_0-9]\+\s*(\{1}"ms=s,me=e-1
hi cFunt		guifg=#5fcbdf
"syn match CCommentDesc "--[^-/*]\+$"    containedin=cComment contained
"syn match CCommentArg "@\w\+"    containedin=cComment contained
"hi CCommentDesc  gui=italic guifg=green
"hi CCommentArg  gui=italic guifg=grey
