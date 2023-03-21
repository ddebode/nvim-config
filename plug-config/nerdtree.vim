
" Vim tree config "
map <C-n> :NERDTreeToggle<CR>
map <C-b> :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=60

" circumvent that nerdtree buffer is overwritten
" autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" | b# | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Copy file path
function! NERDTreeYankCurrentNode()
    let n = g:NERDTreeFileNode.GetSelected()
    echo n.path.str()
    if n != {}
        call setreg('p', n.path.str())
    endif
endfunction
autocmd VimEnter * call NERDTreeAddKeyMap({
        \ 'key': 'py',
        \ 'callback': 'NERDTreeYankCurrentNode',
        \ 'quickhelpText': 'put full path of current node into the register "p"' })
