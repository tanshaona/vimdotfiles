if has('vim_starting')
    set nocompatible               " Be iMproved
    " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#rc(expand('~/.vim/bundle/'))
"
" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'bling/vim-airline'
let g:airline_powerline_fonts = 1


NeoBundle 'fholgado/minibufexpl.vim'
NeoBundle 'scrooloose/nerdcommenter'

"dash help
NeoBundle 'rizzatti/funcoo.vim'
NeoBundle 'rizzatti/dash.vim'

" vimproc {{{
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
" }}}

" Shougo {{{
NeoBundle 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup = 1
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'MarcWeber/vim-addon-manager'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
set runtimepath+=/path/to/vam
call vam#ActivateAddons([])
VAMActivate tlib matchit.zip
" find plugins by :VAMPluginInfo NAME and completion
" VAMActivateInstalled (this is like pathogens "infect"
call vam#ActivateAddons(['neosnippet', 'neosnippet-snippets'])
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "<C-n>" : "<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "<Plug>(neosnippet_expand_or_jump)"
\: "<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
" }}}

"NeoBundle 'tpope/vim-fugitive.vim'
"NeoBundle 'kien/ctrlp.vim'
"NeoBundle 'flazz/vim-colorschemes'
" let Vundle manage Vundle
" " required!
"NeoBundle 'gmarik/vundle'

"NeoBundle 'Shougo/neobundle.vim'
"
" My bundles here:

" Colorscheme {{{
"NeoBundle 'molokai'
"NeoBundle 'nelstrom/vim-mac-classic-theme'
NeoBundle 'altercation/vim-colors-solarized'

"NeoBundle 'gmarik/ingretu'
"}}}

"
" original repos on GitHub {{{
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
NeoBundle 'tpope/vim-rails.git'
"NeoBundle 'Lokaltog/vim-powerline' " it was replaced by the vim-airline
"}}}

" haskell support {{{
NeoBundle 'scrooloose/syntastic'
"NeoBundle 'bitc/vim-hdevtools'
"NeoBundle 'eagletmt/ghcmod-vim'
"NeoBundle 'lukerandall/haskellmode-vim'
NeoBundle 'dag/vim2hs'
NeoBundle 'eagletmt/neco-ghc'
let g:necoghc_enable_detailed_browse = 1
" }}}

" vim-scripts repos
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
" non-GitHub repos
" NeoBundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
" ...

filetype plugin indent on     " required!

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
