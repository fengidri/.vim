"author:丁雪峰feng idri
"time:2013-11-22
"这个文件是对于nerdtree 的彩色的补充"
"
"下面是对于c语言的工程中的头文件与定义文件的文件名彩色化
"
"针对于c  cpp 定义文件，使用相同的色彩，因为同个工程中一般不会同时使用cpp与c
"并且其在工程中的作用是相同的
syn match NERDTreeHelpKey  #.\+\.c$#
syn match NERDTreeHelpKey  #.\+\.cpp$#
"以.h结尾的文件使用另一种色彩"
syn match Constant #.\+\.h$#

"for python file"
syn match NERDTreeHelpKey  #.\+\.py$#
