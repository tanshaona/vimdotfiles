nnoremap <leader>g :set operatorfunc=GrepOperator<cr>g@
vnoremap <Leader>g GrepOperator(visualmode())<cr>

function! GrepOperator(type)
    echom a:type
    echom "Test"
endfunction
