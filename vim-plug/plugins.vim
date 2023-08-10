" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Comments
    Plug 'tpope/vim-commentary'
    " Repeat stuff
    Plug 'tpope/vim-repeat'
    " Text Navigation
    Plug 'unblevable/quick-scope'
    " Surround
    Plug 'tpope/vim-surround'
    " Have the file system follow you around
    Plug 'airblade/vim-rooter'
    " auto set indent settings
    Plug 'tpope/vim-sleuth'
    " Better Syntax Support
    " Plug 'sheerun/vim-polyglot'
    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-treesitter/playground'
    " Cool Icons
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'
    " Auto pairs for '(' '[' '{'
    " Plug 'jiangmiao/auto-pairs'
    " Closetags -> use >
    Plug 'alvan/vim-closetag'
    " Themes
    " Plug 'christianchiarulli/nvcode-color-schemes.vim'
    Plug 'folke/tokyonight.nvim'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Status Line
    Plug 'glepnir/galaxyline.nvim'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'ddebode/fzf-preview.vim'
    Plug 'junegunn/fzf.vim'
    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-unimpaired'
    " Terminal
    Plug 'voldikss/vim-floaterm'
    " Start Screen
    Plug 'mhinz/vim-startify'
    " Vista
    Plug 'liuchengxu/vista.vim'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Zen mode
    Plug 'junegunn/goyo.vim'
    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'
    " Interactive code
    Plug 'metakirby5/codi.vim'
    " Better tabline
    Plug 'romgrk/barbar.nvim'
    " undo time travel
    Plug 'mbbill/undotree'
    " Find and replace
    Plug 'ChristianChiarulli/far.vim'
    " Auto change html tags
    Plug 'AndrewRadev/tagalong.vim'
    " live server
    Plug 'turbio/bracey.vim'
    " Smooth scroll
    Plug 'psliwka/vim-smoothie'
    " " async tasks
    Plug 'skywind3000/asynctasks.vim'
    Plug 'skywind3000/asyncrun.vim'
    " Swap windows
    Plug 'wesQ3/vim-windowswap'
    " Markdown Preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
    " Easily Create Gists
    Plug 'mattn/vim-gist'
    Plug 'mattn/webapi-vim'
    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'
    " Intuitive buffer closing
    Plug 'moll/vim-bbye'
    " Debugging
    Plug 'puremourning/vimspector'
    Plug 'szw/vim-maximizer'

    "Auto save 
    Plug 'vim-scripts/vim-auto-save'
    " Test with maven
    Plug 'vim-test/vim-test'
    " Highlight yank 
    Plug 'machakann/vim-highlightedyank'
    " Nerdtree 
    Plug 'scrooloose/nerdtree'
    Plug 'PhilRunninger/nerdtree-visual-selection'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    " See registers when pressing " or @
    Plug 'junegunn/vim-peekaboo'
    " To cycle through yanks
    Plug 'svermeulen/vim-yoink'
    " Easymotion like plugin
    Plug 'phaazon/hop.nvim'
    " Function as text object (af if)
    Plug 'kana/vim-textobj-user'
    Plug 'kana/vim-textobj-function'
    " Bufonly"
    Plug 'vim-scripts/BufOnly.vim'
    " Search and replace plugin - Key mappings are in which-key file (leader-x)
    " To search folder **/directory/* - to close search screen -> leader-w
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'windwp/nvim-spectre'
    " show hints
    Plug 'anuvyklack/hydra.nvim'
    " telescope needs plenary.vim"
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    " draw diagrams press hd for hydra
    Plug 'jbyuki/venn.nvim'
    " Multi cursor crtl+n
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    " Database plugins
    Plug 'tpope/vim-dadbod'
    Plug 'kristijanhusak/vim-dadbod-ui'

call plug#end()

" Open vim-plug github page with gx
function! s:plug_gx()
  if getline('.') =~ 'Plug\s'
      let cfile = expand('<cfile>')
      if cfile !~ 'github\.com' && !filereadable(cfile)
          call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx :
                      \ 'https://github.com/'.cfile)), netrw#CheckIfRemote())
         return
      endif
  endif 

  call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx :
              \ '<cfile>')), netrw#CheckIfRemote())
endfunction

nnoremap <buffer> <silent> gx :call <SID>plug_gx()<cr>


" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
