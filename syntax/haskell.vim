" Configure browser for haskell_doc.vim
"au BufEnter *.hs compiler ghc
"let g:haddock_browser = "open"
"let g:haddock_browser_callformat = "%s %s"
let s:width = 80


function! HaskellModuleHeader(...)
    let name = 0 < a:0 ? a:1 : inputdialog("Module: ")
    let note = 1 < a:0 ? a:2 : inputdialog("Note: ")
    let description = 2 < a:0 ? a:3 : inputdialog("Describe this module: ")

    return  repeat('-', s:width) . "\n"
                \       . "-- | \n"
                \       . "-- Module      : " . name . "\n"
                \       . "-- Note        : " . note . "\n"
                \       . "-- \n"
                \       . "-- " . description . "\n"
                \       . "-- \n"
                \       . repeat('-', s:width) . "\n"
                \       . "\n"
endfunction


function! HaskellModuleSection(...)
    let name = 0 < a:0 ? a:1 : inputdialog("Section name: ")

    return  repeat('-', s:width) . "\n"
                \       . "--  " . name . "\n"
                \       . "\n"
endfunction


"augroup syntax_haskell
"au!
"au FileType haskell nm <silent> --h "=HaskellModuleHeader()<CR>:0put =<CR>
"augroup END
nmap <silent> --h "=HaskellModuleHeader()<CR>:0put =<CR>
nmap <silent> --s "=HaskellModuleSection()<CR>gp
