" base mappings {{{
inoremap jk <esc>
inoremap <esc> <nop>
nnoremap <space> :
" Yank to the end of line with Y, similar to D and C
nnoremap Y y$
" to use very magic in / or ? search
nnoremap / /\v
nnoremap ? ?\v
"}}}


"nnoremap <leader>1 :set list!<cr>

" highlight trailing whitespace {{{
" fix the problem : use \r instead of <cr>
"nnoremap <Leader>w :execute "normal! :match Error " . '/\v.+ +$/' . "\r"<cr>
nnoremap <Leader>w :match Error /\v.+ +$/<cr>
nnoremap <Leader>W :match none<cr>
"}}}

" normal command
nnoremap <leader>sc :source %<cr>

nnoremap ,n :set number!<cr>
nnoremap ,h :set hls!<cr>
" edit my virmrc file
"noremap <leader>ev :CtrlP ~/.vim<cr>

" to make the word in  pair {{{
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>`>a'<esc>`<i'<esc>
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>
"}}}

" remap wincmd move command {{{
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <c-n> :MBEbn<cr>
nnoremap <c-p> :MBEbp<cr>

nnoremap <C-TAB> <C-w>w



"}}}

" upper the word {{{
inoremap <leader>u <esc>viwUea
nnoremap <leader>u viwU " we can just do g~w
" }}}

"function map, use prefix _ {{{
" function define in function.vim
" _ use the function mapping
" _$ delete the trailing whitespace
" _= auto indent the file
nnoremap _$ :call Preserve("%s/\\s\\+$//e")<cr>
nnoremap _= :call Preserve("normal gg=G")<cr>
"}}}

" Unmap the arrow keys {{{
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
"ino <down> <Nop>
"ino <left> <Nop>
"ino <right> <Nop>
"ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>
" }}}

"I really hate that things don't auto-center {{{
nnoremap G Gzz
nnoremap n nzz
nnoremap N Nzz
"}}}

" insert whitespace line {{{
" gO to create a new line below cursor in normal mode
nnoremap gO O<esc>j
" g<Ctrl+o> to create a new line above cursor (Ctrl to prevent collision with
" 'go' command)
nnoremap g<c-o> o<esc>k
"}}}

"quick pairs {{{
inoremap <leader>' ''<esc>i
inoremap <leader>" ""<esc>i
inoremap <leader>( ()<esc>i
inoremap <leader>[ []<esc>i
inoremap <leader>< <><esc>i
" imporant when enter in paris,then go to the next word
inoremap <leader>> <esc>la
" }}}


" abbreviations {{{
"iabbrev email wangchaohit2011@gmail.com
" }}}


" operator mapping {{{
"onoremap p i(
" in next (, in last (
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F(vi(<cr>
onoremap in/ :<c-u>normal! f/lvf/h<cr>
onoremap il/ :<c-u>normal! F/hvF/l<cr>
" these are used in markdown
" inside this section's heading
onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
" around this section's heading
onoremap ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>
" }}}


" dash mappings{{{
nmap <silent> <leader>d <Plug>DashSearch
" }}}
