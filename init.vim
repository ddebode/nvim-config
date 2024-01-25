"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


" General Settings
" source $HOME/.config/nvim/plug-config/polyglot.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/keys/mappings.vim


" Themes
source $HOME/.config/nvim/themes/syntax.vim
" source $HOME/.config/nvim/themes/nvcode.vim
source $HOME/.config/nvim/themes/tokyonight.vim
source $HOME/.config/nvim/lua/_tokyonight.lua

" Plugin Configuration
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/codi.vim
source $HOME/.config/nvim/plug-config/vim-wiki.vim
" luafile $HOME/.config/nvim/lua/nvcodeline.lua
luafile $HOME/.config/nvim/lua/treesitter.lua
source $HOME/.config/nvim/plug-config/goyo.vim
source $HOME/.config/nvim/plug-config/vim-rooter.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/closetags.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/barbar.lua
source $HOME/.config/nvim/plug-config/far.vim
source $HOME/.config/nvim/plug-config/tagalong.vim
source $HOME/.config/nvim/plug-config/bracey.vim
source $HOME/.config/nvim/plug-config/asynctask.vim
source $HOME/.config/nvim/plug-config/window-swap.vim
source $HOME/.config/nvim/plug-config/markdown-preview.vim
" luafile $HOME/.config/nvim/lua/plug-colorizer.lua
source $HOME/.config/nvim/plug-config/vimspector.vim
source $HOME/.config/nvim/plug-config/highlightyank.vim
source $HOME/.config/nvim/plug-config/vim-test.vim
source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim
source $HOME/.config/nvim/plug-config/coc/coc.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/vim-yoink.vim
source $HOME/.config/nvim/plug-config/hop.vim
luafile $HOME/.config/nvim/plug-config/hop.lua
luafile $HOME/.config/nvim/plug-config/hydra.lua
source $HOME/.config/nvim/plug-config/multi-cursor.vim
source $HOME/.config/nvim/plug-config/vim-dadbod-ui.vim
source $HOME/.config/nvim/plug-config/fugitive.vim

" java-test
source $HOME/.config/nvim/plug-config/java-test.vim
" maven clean
source $HOME/.config/nvim/plug-config/maven-cleanup.vim

luafile $HOME/.config/nvim/plug-config/hydra.lua

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif

let g:python3_host_prog = '/home/ddebode/.virtualenvs/neovim-python-env-rnzt/bin/python'

" Better nav for omnicomplete TODO figure out why this is being overridden
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

source $HOME/.config/nvim/general/settings.vim
