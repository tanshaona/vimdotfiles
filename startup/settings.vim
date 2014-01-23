" 设置编码必须放在最前面，否则无法识别utf8编码
set encoding=utf-8
"自动判断编码时 依次尝试一下编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"set listchars=eol:¬
set listchars=tab:▸\ ,eol:¬
"set lcs=tab:>-,eol:¬
set list

" taps and spaces
" help tapstop
set ts=8 sts=4 sw=4 expandtab
"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
set smarttab


" set linenumber on
set number

" set histroy commandline
set history=1000

" no backup and swapfiles
set nobackup
set noswapfile
"
"突出现实当前行列
"set cursorline
"set cursorcolumn

"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
"set showmatch
"
"设置C/C++方式自动对齐
"set autoindent
"set cindent


"设置搜索时忽略大小写
"set ignorecase
"
""设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
" set mouse=a

"设置Tab宽度
"set tabstop=4
""设置自动对齐空格数
"set shiftwidth=4
"设置按退格键时可以一次删除4个空格
"set softtabstop=4
"设置按退格键时可以一次删除4个空格
"set smarttab
"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
"set expandtab
