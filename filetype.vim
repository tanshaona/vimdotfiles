" haskell file settings ---------------------- {{{
augroup filetype_haskell
    autocmd!
    "autocmd filetype haskell setlocal omnifunc=necoghc#omnifunc
    "autocmd BufEnter *.hs compiler ghc
"    autocmd FileType haskell nnoremap <buffer> <localleader>r I<esc>lxx
"    autocmd FileType haskell vnoremap <buffer> <localleader>c <esc>`<O{-<esc>`>o-}<esc>
"    autocmd FileType haskell nnoremap <buffer> <localleader>lr ?^{-<cr>dd/-}<cr>dd:nohlsearch<cr>
"    autocmd FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<cr>
"    autocmd FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<cr>
augroup END
" }}}
"
" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    "autocmd FileType vim nnoremap <buffer> <localleader>c I"<esc>
    "autocmd FileType vim nnoremap <buffer> <localleader>r I<esc>lx 
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
"
"" xml file settings ---------------------- {{{
"augroup filetype_xml
"    autocmd!
"    autocmd FileType xml nnoremap <buffer> <localleader>c I<!-- <esc>A -->
"    autocmd FileType xml nnoremap <buffer> <localleader>r 0f<5x$3h4x
"augroup END
"" }}}
