nnoremap <c-]> :CtrlPtjump<cr>
vnoremap <c-]> :CtrlPtjumpVisual<cr>

" If there's only one tag entry, just jump to it without asking
let g:ctrlp_tjump_only_silent = 1

" If rootpath is able to locate a root via markers,
" shorten all tag paths to be relative to the root,
" (Gutentags will also use the root marker)
try
    let rootpath = projectroot#get()

    if len(rootpath) > 0
        let g:ctrlp_tjump_shortener = [projectroot#guess().'/', '']
    endif
catch
    " vim-projectroot wasn't installed, so just default to the normal
    " shortener
endtry
