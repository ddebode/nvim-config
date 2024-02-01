" Basic Key Mappings

imap <C-h> <C-w>h
imap <C-j> <C-w>j
imap <C-k> <C-w>k
imap <C-l> <C-w>l
" g Leader key
let mapleader = "\<space>"
" let localleader=" "
" nnoremap <Space> <Nop>

" Better indenting
vnoremap < <gv
vnoremap > >gv


" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" I hate escape more than anything else
" inoremap jk <Esc>
inoremap kh <Esc>

" Easy CAPS
" inoremap <c-u> <ESC>viwUi
" nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Use control-c instead of escape
nnoremap <silent> <C-c> <Esc>
" <TAB>: completion.
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-y>"


" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Terminal window navigation
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
tnoremap <C-e> <C-\><C-n>

" Use alt + hjkl to resize windows
" nnoremap <silent> <M-j>    :resize -2<CR>
" nnoremap <silent> <M-k>    :resize +2<CR>
" nnoremap <silent> <M-h>    :vertical resize -2<CR>
" nnoremap <silent> <M-l>    :vertical resize +2<CR>

nnoremap <silent> <C-Up>    :resize -2<CR>
nnoremap <silent> <C-Down>  :resize +2<CR>
nnoremap <silent> <C-Left>  :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>

let g:elite_mode=0                      " Disable arrows"
" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
    nnoremap <C-Up>    :resize -2<CR>
    nnoremap <C-Down>  :resize +2<CR>
    nnoremap <C-Left>  :vertical resize -2<CR>
    nnoremap <C-Right> :vertical resize +2<CR>
endif


" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

"
" Old vim config
"

" Navigate
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j 
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Delete to zero register
" nnoremap <leader>d "_d<cr>
nnoremap dd "_dd
nnoremap c "_c
nnoremap x "_x

" In visual mode paste action will not overwrite the default register
vnoremap p pgvy

" When yanking cursor stays in same position
vmap y ygv<Esc>

" Custom mappings
nnoremap <leader>r :so ~/.config/nvim/init.vim<CR> 
nnoremap <leader>q :q<cr>
nnoremap <leader>n :nohl<cr>
nnoremap <leader>o o<Esc>
nnoremap <leader>a <esc>ggVG<CR>
nmap <leader>' vi"
nmap v" vi"
nmap y" yi"
nnoremap ,q <c-v>

noremap <leader><leader>M :lua require'telegraph'.telegraph({how='tmux_popup', cmd='man '})<Left><Left><Left>
" decrypt word under cursor
noremap <leader><leader>d :! ~/development/deltafiber/own-scripts/decrypt.sh <cword>

" buffkill plugin
nnoremap <leader>w :Bdelete<CR>

" FZF search selected word
" Props for xolox
function! s:getVisualSelection()
    let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
    let lines = getline(line_start, line_end)

    if len(lines) == 0
        return ""
    endif

    let lines[-1] = lines[-1][:column_end - (&selection == "inclusive" ? 1 : 2)]
    let lines[0] = lines[0][column_start - 1:]

    return join(lines, "\n")
endfunction

vnoremap <silent><leader>/ <Esc>:call fzf#vim#ag('.', {'options':'--query '.<SID>getVisualSelection()})<CR>
vnoremap <silent><leader>f <Esc>:call fzf#vim#files('.', {'options':'--query '.<SID>getVisualSelection()})<CR>

map <leader>ci :syn region foldImports start="import" end=/import.*\n^$/ fold keepend<CR>
nmap <leader><leader>f :BTags<CR>
