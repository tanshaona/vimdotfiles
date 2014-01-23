"" 映射
imap jj <ESC>
nmap <space> :
nmap <leader>1 :set list!<CR>


nmap -- 0i--jj

" function define in function.vim
nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>
nmap _= :call Preserve("normal gg=G")<CR>

" Unmap the arrow keys
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

"I really hate that things don't auto-center
nmap G Gzz
nmap n nzz
nmap N Nzz

" gO to create a new line below cursor in normal mode
nmap gO O<ESC>j
" g<Ctrl+o> to create a new line above cursor (Ctrl to prevent collision with
" 'go' command)
nmap g<C-o> o<ESC>k

"quick pairs
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
