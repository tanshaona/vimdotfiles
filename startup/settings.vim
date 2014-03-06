set encoding=utf-8
"set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set textwidth=80
set numberwidth=4

"set winwidth=80

set autoindent
set autoread " when outside file has been modified, it will autoread
set backspace=2
set backupcopy=yes
set clipboard=unnamed
set directory-=.
set ignorecase
set incsearch   " show matches while typing
set hlsearch    " highlight search
set smartcase   " be case sensitive when input has a capital letter
set scrolloff=5 " the numberline in the top
set showcmd
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu
set wildmode=longest,list,full



" When I close a tab, remove the buffer
set nohidden


"set listchars=tab:▸\ ,eol:¬
"set listchars=tab:▸\ ,nbsp:░,eol:¬
set listchars=tab:▸\ ,nbsp:░,eol:¬,trail:▫,extends:❱,precedes:❰
"set listchars=tab:▸\ ,nbsp:░\ ,eol:¬
set list

filetype on
" enable filetype detection and plugin loading
filetype plugin indent on

" taps and spaces
" help tapstop
set ts=8 sts=4 sw=4 expandtab
"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
set smarttab


set number                     " set linenumber on
set relativenumber              " set linenumber on

set history=1000               " set histroy commandline

" no backup and swapfiles
set nobackup
set noswapfile
"
"突出现实当前行列
"set cursorline
"set cursorcolumn
"
set laststatus=2              " always show status line.
"set shortmess=atI             " shortens messages
"set showcmd                   " display an incomplete command in statusline

"set statusline=%<%f\          " custom statusline
"set stl+=[%{&ff}]             " show fileformat
"set stl+=%y%m%r%=
"set stl+=%-14.(%l,%c%V%)\ %P
