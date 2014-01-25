augroup filetype_vim
    autocmd!
    autocmd filetype haskell nnoremap <buffer> <localleader>c I--<esc> 
    autocmd FileType haskell nnoremap <buffer> <localleader>r 0x
augroup END

augroup filetype_vim
    autocmd!
    autocmd FileType vim nnoremap <buffer> <localleader>c I"<esc>
    autocmd FileType vim nnoremap <buffer> <localleader>r 0x
augroup END
