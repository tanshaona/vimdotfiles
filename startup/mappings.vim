"" 映射
inoremap jk <esc>
inoremap <esc> <nop>

nnoremap <space> :
nnoremap <leader>1 :set list!<cr>

" normal command
nnoremap <leader>sv :source $MYVIMRC<cr>

" use in haskell, it will move to the haskell.vim
" nnoremap -- 0i--jj

" upper the word
inoremap <c-u> <esc>viwUea
nnoremap <c-u> viwU

" function define in function.vim
nnoremap _$ :call Preserve("%s/\\s\\+$//e")<cr>
nnoremap _= :call Preserve("normal gg=G")<cr>

" Unmap the arrow keys
no <down> ddp
no <left> <nop>
no <right> <nop>
no <up> ddkP
ino <down> <nop>
ino <left> <nop>
ino <right> <nop>
ino <up> <nop>
vno <down> <nop>
vno <left> <nop>
vno <right> <nop>
vno <up> <nop>

"I really hate that things don't auto-center
nnoremap G Gzz
nnoremap n nzz
nnoremap N Nzz

" gO to create a new line below cursor in normal mode
nnoremap gO O<esc>j
" g<Ctrl+o> to create a new line above cursor (Ctrl to prevent collision with
" 'go' command)
nnoremap g<c-o> o<esc>k

"quick pairs
inoremap <leader>' ''<esc>i
inoremap <leader>" ""<esc>i
inoremap <leader>( ()<esc>i
inoremap <leader>[ []<esc>i
inoremap <leader>< <><esc>i
" imporant when enter in paris,then go to the next word
inoremap <leader>> <esc>la
" normal mode pair
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel


" abbreviations
iabbrev email wangchaohit2011@gmail.com


" operator mapping
onoremap p i(
onoremap inp :<c-u>normal! f(vi(<cr>
onoremap ilp :<c-u>normal! F(vi(<cr>
