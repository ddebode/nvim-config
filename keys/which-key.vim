" Leader Key Maps

let @s = 'veS"'

" Timeout
let g:which_key_timeout = 100

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Coc Search & refactor
nnoremap <leader>? CocSearch <C-R>=expand("<cword>")<CR><CR>
let g:which_key_map['?'] = 'search word'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" let g:which_key_position = 'botright'
" let g:which_key_position = 'topleft'
" let g:which_key_vertical = 1

" Change the colors if you want

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
let g:which_key_map['.'] = [ ':e $MYVIMRC'                                     , 'open init' ]
let g:which_key_map[';'] = [ ':Commands'                                       , 'commands' ]
let g:which_key_map['='] = [ '<C-W>='                                          , 'balance windows' ]
let g:which_key_map['e'] = [ ':CocCommand explorer --toggle --sources=file+'   , 'explorer' ]
let g:which_key_map['n'] = [ ':let @/ = ""'                                    , 'no highlight' ]
" let g:which_key_map['o'] = [ ':RnvimrToggle'                                   , 'open' ]
" let g:which_key_map['q'] = [ ':q<cr>'                                          , 'close window' ]
" let g:which_key_map['T'] = [ ':TSHighlightCapturesUnderCursor'                 , 'treesitter highlight' ]
let g:which_key_map['u'] = [ ':UndotreeToggle'                                 , 'undo tree']
let g:which_key_map['L'] = [ '<C-W>v'                                          , 'split right']
let g:which_key_map['J'] = [ '<C-W>s'                                          , 'split below']
let g:which_key_map['W'] = [ ':call WindowSwap#EasyWindowSwap()'               , 'move window' ]
let g:which_key_map['z'] = [ 'Goyo'                                            , 'zen' ]

" fzf
let g:which_key_map['b'] = ['Buffers'                , 'fzf-buffer']
let g:which_key_map['f'] = ['Files'                  , 'fzf-files']
let g:which_key_map['h'] = ['History'                , 'fzf-history']
let g:which_key_map['/'] = ['Ag'                     , 'fzf-search']

" Group mappings

" A is for actions
let g:which_key_map.A = {
      \ 'name' : '+actions' ,
      \ 'c' : [':ColorizerToggle'        , 'colorizer'],
      \ 'e' : [':CocCommand explorer'    , 'explorer'],
      \ 'h' : [':let @/ = ""'            , 'remove search highlight'],
      \ 'l' : [':Bracey'                 , 'start live server'],
      \ 'L' : [':BraceyStop'             , 'stop live server'],
      \ 'm' : [':MarkdownPreview'        , 'markdown preview'],
      \ 'M' : [':MarkdownPreviewStop'    , 'markdown preview stop'],
      \ 'n' : [':set nonumber!'          , 'line-numbers'],
      \ 's' : [':s/\%V\(.*\)\%V/"\1"/'   , 'surround'],
      \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
      \ 't' : [':FloatermToggle'         , 'terminal'],
      \ 'v' : [':Codi'                   , 'virtual repl on'],
      \ 'V' : [':Codi!'                  , 'virtual repl off'],
      \ }

" b is for buffer
let g:which_key_map.B = {
      \ 'name' : '+buffer' ,
      \ '>' : [':BufferMoveNext'        , 'move next'],
      \ '<' : [':BufferMovePrevious'    , 'move prev'],
      \ '1' : [':BufferGoto 1'          , 'buffer 1'],
      \ '2' : [':BufferGoto 2'          , 'buffer 2'],
      \ '3' : [':BufferGoto 3'          , 'buffer 3'],
      \ '4' : [':BufferGoto 4'          , 'buffer 4'],
      \ '5' : [':BufferGoto 5'          , 'buffer 5'],
      \ '6' : [':BufferGoto 6'          , 'buffer 6'],
      \ '7' : [':BufferGoto 7'          , 'buffer 7'],
      \ '8' : [':BufferGoto 8'          , 'buffer 8'],
      \ '9' : [':BufferGoto 9'          , 'buffer 9'],
      \ '0' : [':BufferGoto 0'          , 'buffer 0'],
      \ 'b' : [':BufferPick'            , 'pick buffer'],
      \ 'd' : [':Bdelete'               , 'delete-buffer'],
      \ 'D' : [':BufferOrderByDirectory', 'order by directory'],
      \ 'f' : ['bfirst'                 , 'first-buffer'],
      \ 'l' : ['blast'                  , 'last buffer'],
      \ 'L' : [':BufferOrderByLanguage' , 'order by language'],
      \ 'n' : ['bnext'                  , 'next-buffer'],
      \ 'p' : ['bprevious'              , 'previous-buffer'],
      \ '/' : ['Buffers'                , 'fzf-buffer'],
      \ }

" d is for debug
let g:which_key_map.D = {
      \ 'name' : '+debug' ,
      \ 'b' : ['<Plug>VimspectorToggleBreakpoint'              , 'breakpoint'],
      \ 'B' : ['<Plug>VimspectorToggleConditionalBreakpoint'   , 'conditional breakpoint'],
      \ 'c' : ['<Plug>VimspectorRunToCursor'                   , 'run to cursor'],
      \ 'd' : ['<Plug>VimspectorContinue'                      , 'continue'],
      \ 'f' : ['<Plug>VimspectorAddFunctionBreakpoint'         , 'function breakpoint'],
      \ 'm' : [':MaximizerToggle'                              , 'maximize window'],
      \ 'o' : ['<Plug>VimspectorStepOver'                      , 'step over'],
      \ 'O' : ['<Plug>VimspectorStepOut'                       , 'step out'],
      \ 'i' : ['<Plug>VimspectorStepInto'                      , 'step into'],
      \ 'p' : ['<Plug>VimspectorPause'                         , 'pause'],
      \ 'R' : ['<Plug>VimspectorRestart'                       , 'restart'],
      \ 'r' : [':VimspectorReset'                         , 'reset'],
      \ 's' : [':CocCommand java.debug.vimspector.start'    , 'start'],
      \ 'S' : ['<Plug>VimspectorStop'                          , 'stop'],
      \ }

" f is for find and replace
let g:which_key_map.x = {
      \ 'name' : '+find & replace' ,
      \ 'f' : [':Farr --source=vimgrep'    , 'file'],
      \ 'p' : [':Farr --source=rgnvim'     , 'project'],
      \ }

nnoremap <leader>xh :lua require('spectre').open()<CR>

"search current word
nnoremap <leader>xw viw:lua require('spectre').open_visual()<CR>
vnoremap <leader>xh :lua require('spectre').open_visual()<CR>
"  search in current file
nnoremap <leader>xp viw:lua require('spectre').open_file_search()<cr>


" k is for task
let g:which_key_map.k = {
      \ 'name' : '+task' ,
      \ 'c' : [':AsyncTask file-compile'      , 'compile file'],
      \ 'b' : [':AsyncTask project-build'     , 'build project'],
      \ 'e' : [':AsyncTaskEdit'               , 'edit local tasks'],
      \ 'f' : [':AsyncTaskFzf'                , 'find task'],
      \ 'g' : [':AsyncTaskEdit!'              , 'edit global tasks'],
      \ 'h' : [':AsyncTaskList!'              , 'list hidden tasks'],
      \ 'l' : [':CocList tasks'               , 'list tasks'],
      \ 'm' : [':AsyncTaskMacro'              , 'macro help'],
      \ 'o' : [':copen'                       , 'open task view'],
      \ 'r' : [':AsyncTask file-run'          , 'run file'],
      \ 'p' : [':AsyncTask project-run'       , 'run project'],
      \ 'x' : [':cclose'                      , 'close task view'],
      \ }
      " \ 'l' : [':AsyncTaskList'               , 'list tasks'],

" m is for mark
let g:which_key_map.m = {
      \ 'name' : '+mark' ,
      \ 'c' : [':CocCommand bookmark.clearForCurrentFile', 'clear file'],
      \ 'C' : [':CocCommand bookmark.clearForAllFiles', 'clear project'],
      \ 'j' : [':CocCommand bookmark.next', 'next bookmark'],
      \ 'k' : [':CocCommand bookmark.prev', 'prev bookmark'],
      \ 't' : [':CocCommand bookmark.toggle', 'toggle bookmark'],
      \ }
      " CoC throws an error
      " \ 'a' : [':CocCommand bookmark.annotate', 'annotate bookmark'],

" " s is for search
" let g:which_key_map.s = {
"       \ 'name' : '+search' ,
"       \ '/' : [':History/'              , 'history'],
"       \ ';' : [':Commands'              , 'commands'],
"       \ 'a' : [':Ag'                    , 'text Ag'],
"       \ 'b' : [':BLines'                , 'current buffer'],
"       \ 'B' : [':Buffers'               , 'open buffers'],
"       \ 'c' : [':Commits'               , 'commits'],
"       \ 'C' : [':BCommits'              , 'buffer commits'],
"       \ 'f' : [':Files'                 , 'files'],
"       \ 'g' : [':GFiles'                , 'git files'],
"       \ 'G' : [':GFiles?'               , 'modified git files'],
"       \ 'h' : [':History'               , 'file history'],
"       \ 'H' : [':History:'              , 'command history'],
"       \ 'l' : [':Lines'                 , 'lines'] ,
"       \ 'm' : [':Marks'                 , 'marks'] ,
"       \ 'M' : [':Maps'                  , 'normal maps'] ,
"       \ 'p' : [':Helptags'              , 'help tags'] ,
"       \ 'P' : [':Tags'                  , 'project tags'],
"       \ 's' : [':CocList snippets'      , 'snippets'],
"       \ 'S' : [':Colors'                , 'color schemes'],
"       \ 't' : [':Rg'                    , 'text Rg'],
"       \ 'T' : [':BTags'                 , 'buffer tags'],
"       \ 'w' : [':Windows'               , 'search windows'],
"       \ 'y' : [':Filetypes'             , 'file types'],
"       \ 'z' : [':FZF'                   , 'FZF'],
"       \ }
      " \ 's' : [':Snippets'     , 'snippets'],

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'              , 'history'],
      \ ';' : [':FzfPreviewCommandPalette'              , 'commands'],
      \ 'a' : [':Ag'                    , 'text Ag'],
      \ 'b' : [':CocCommand fzf-preview.BufferLines'                , 'current buffer'],
      \ 'B' : [':CocCommand fzf-preview.Buffers'               , 'open buffers'],
      \ 'c' : [':Commits'               , 'commits'],
      \ 'C' : [':BCommits'              , 'buffer commits'],
      \ 'd' : [':CocCommand fzf-preview.DirectoryFiles'              , 'directories'],
      \ 'f' : [':CocCommand fzf-preview.ProjectFiles'                 , 'files'],
      \ 'g' : [':CocCommand fzf-preview.GitFiles'                , 'git files'],
      \ 'G' : [':GFiles?'               , 'modified git files'],
      \ 'h' : [':History'               , 'file history'],
      \ 'H' : [':History:'              , 'command history'],
      \ 'l' : [':Lines'                 , 'lines'] ,
      \ 'm' : [':CocCommand fzf-preview.Marks', 'list marks'],
      \ 'M' : [':Maps'                  , 'normal maps'] ,
      \ 'p' : [':Helptags'              , 'help tags'] ,
      \ 'P' : [':Tags'                  , 'project tags'],
      \ 'q' : [':CocCommand fzf-preview.QuickFix'                  , 'quickfix list'],
      \ 's' : [':CocList snippets'      , 'snippets'],
      \ 'S' : [':Colors'                , 'color schemes'],
      \ 't' : [':Rg'                    , 'text Rg'],
      \ 'T' : [':BTags'                 , 'buffer tags'],
      \ 'w' : [':Windows'               , 'search windows'],
      \ 'y' : [':Filetypes'             , 'file types'],
      \ 'z' : [':FZF'                   , 'FZF'],
      \ }
" 
" :CocCommand fzf-preview.AllBuffers
" :CocCommand fzf-preview.Changes
" :CocCommand fzf-preview.Yankround
" :CocCommand fzf-preview.CocReferences
" :CocCommand fzf-preview.CocDiagnostics
" :CocCommand fzf-preview.CocCurrentDiagnostics
" :CocCommand fzf-preview.CocTypeDefinitions
" \ 'l' : [':CocCommand fzf-preview.Bookmarks', 'list bookmarks'],
" $FZF_PREVIEW_PREVIEW_BAT_THEME = 'ansi-dark'
" 

let g:which_key_map.S = {
      \ 'name' : '+Session' ,
      \ 'c' : [':SClose'          , 'Close Session']  ,
      \ 'd' : [':SDelete'         , 'Delete Session'] ,
      \ 'l' : [':SLoad'           , 'Load Session']     ,
      \ 's' : [':Startify'        , 'Start Page']     ,
      \ 'S' : [':SSave'           , 'Save Session']   ,
      \ }

" let g:which_key_map.T = {
"       \ 'name' : '+Telescope' ,
"       \ 'f' : [':lua require("telescope.builtin").find_files()'          , 'Find files']  ,
"       \ 'd' : [':SDelete'         , 'Delete Session'] ,
"       \ 'l' : [':SLoad'           , 'Load Session']     ,
"       \ 's' : [':Startify'        , 'Start Page']     ,
"       \ 'S' : [':SSave'           , 'Save Session']   ,
"       \ }

nnoremap <leader>Tf :lua require("telescope.builtin").find_files()<CR>
nnoremap <leader>Tg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>Tb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>Th <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>Tt <cmd>lua require('telescope.builtin').git_bcommits()<cr>


" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ '0' : [':0Gclog'                            , 'git history current file'],
      \ 'A' : [':Git add .'                        , 'add all'],
      \ 'a' : [':CocCommand fzf-preview.GitStatus' , 'actions'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GF?'                              , 'git changed files'],
      \ 'G' : [':Git'                              , 'status'],
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'i' : [':Gist -b'                          , 'post gist'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'm' : ['<Plug>(git-messenger)'             , 'message'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      \ 'S' : [':CocCommand fzf-preview.GitStatus' , 'status'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }
      " \ 'A' : [':Git add %'                        , 'add current'],
      " \ 'S' : [':!git status'                      , 'status'],

let g:which_key_map.G = {
      \ 'name' : '+gist' ,
      \ 'a' : [':Gist -a'                          , 'post gist anon'],
      \ 'b' : [':Gist -b'                          , 'post gist browser'],
      \ 'd' : [':Gist -d'                          , 'delete gist'],
      \ 'e' : [':Gist -e'                          , 'edit gist'],
      \ 'l' : [':Gist -l'                          , 'list public gists'],
      \ 's' : [':Gist -ls'                         , 'list starred gists'],
      \ 'm' : [':Gist -m'                          , 'post gist all buffers'],
      \ 'p' : [':Gist -P'                          , 'post public gist '],
      \ 'P' : [':Gist -p'                          , 'post private gist '],
      \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'code action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : [':Vista!!'                            , 'outline'],
      \ 'O' : [':CocList outline'                    , 'search outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-references)'              , 'references'],
      \ 'R' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 'S' : [':CocList snippets'                   , 'snippets'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }
      " \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=normal --height=6'        , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'n' : [':FloatermNew node'                              , 'node'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ 'm' : [':FloatermNew lazynpm'                           , 'npm'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'v' : [':FloatermNew vifm'                              , 'vifm'],
      \ 'y' : [':FloatermNew'                                   , 'new terminal'],
      \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
      \ }


" c programming
let g:which_key_map.c = {
      \ 'name' : '+prog' ,
      \ 'x' : [':FloatermNew --autoclose=0 mvn test -Dtest=%:t:r'         , 'mvn test file'],
      \ 'n' : [':FloatermNew --autoclose=0 mvn test -Dtest=%:t:r#<cword>' , 'mvn test file+cword'],
      \ 'd' : [':FloatermNew --autoclose=0 mvn test -Dtest=%:t:r#<cword> -Dmaven.surefire.debug'  , 'mvn test debug file+cword'],
      \ }

" w is for wiki
" let g:which_key_map.w = {
"       \ 'name' : '+wiki' ,
"       \ 'w' : ['<Plug>VimwikiIndex'                              , 'ncdu'],
"       \ 'n' : ['<plug>(wiki-open)'                              , 'ncdu'],
"       \ 'j' : ['<plug>(wiki-journal)'                              , 'ncdu'],
"       \ 'R' : ['<plug>(wiki-reload)'                              , 'ncdu'],
"       \ 'c' : ['<plug>(wiki-code-run)'                              , 'ncdu'],
"       \ 'b' : ['<plug>(wiki-graph-find-backlinks)'                              , 'ncdu'],
"       \ 'g' : ['<plug>(wiki-graph-in)'                              , 'ncdu'],
"       \ 'G' : ['<plug>(wiki-graph-out)'                              , 'ncdu'],
"       \ 'l' : ['<plug>(wiki-link-toggle)'                              , 'ncdu'],
"       \ 'd' : ['<plug>(wiki-page-delete)'                              , 'ncdu'],
"       \ 'r' : ['<plug>(wiki-page-rename)'                              , 'ncdu'],
"       \ 't' : ['<plug>(wiki-page-toc)'                              , 'ncdu'],
"       \ 'T' : ['<plug>(wiki-page-toc-local)'                              , 'ncdu'],
"       \ 'e' : ['<plug>(wiki-export)'                              , 'ncdu'],
"       \ 'u' : ['<plug>(wiki-list-uniq)'                              , 'ncdu'],
"       \ 'U' : ['<plug>(wiki-list-uniq-local)'                              , 'ncdu'],
"       \ }

" Global
" <Plug>VimwikiIndex
" <Plug>VimwikiTabIndex
" <Plug>VimwikiUISelect
" <Plug>VimwikiDiaryIndex
" <Plug>VimwikiMakeDiaryNote
" <Plug>VimwikiTabMakeDiaryNote
" <Plug>VimwikiMakeYesterdayDiaryNote
" <Plug>VimwikiMakeTomorrowDiaryNote
"
" " Local
" <Plug>Vimwiki2HTML
" <Plug>Vimwiki2HTMLBrowse
" <Plug>VimwikiDiaryGenerateLinks
" <Plug>VimwikiFollowLink
" <Plug>VimwikiSplitLink
" <Plug>VimwikiVSplitLink
" <Plug>VimwikiTabnewLink
" <Plug>VimwikiGoBackLink
" <Plug>VimwikiNextLink
" <Plug>VimwikiPrevLink
" <Plug>VimwikiGoto
" <Plug>VimwikiDeleteLink
" <Plug>VimwikiRenameLink
" <Plug>VimwikiAddHeaderLevel

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
