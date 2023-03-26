nmap <leader>ct :call FindJavaTestFileFzF()<CR>

function! FindJavaTestFile()
  let dir = finddir('.settings/..', expand('%:p:h').';')
  let currentFileName = expand('%:t:r')
  let testFiles = system("fdfind --full-path --regex --search-path " . dir . " \".*test.*" . currentFileName . "\""   )
  let choice = inputlist(['Select option', '1. Goto ' . testFiles])
  if choice == 1
    execute "edit " . testFiles
  else 
    echo "No testfile selected"
  endif
endfunction

function! FindJavaTestFileFzF()
  let currentFileName = expand('%:t:r')
  if !empty(currentFileName)
    call fzf#vim#files('.', {'options':'--query test/'.currentFileName})
  else
    echo "No test file found"
  endif
  redraw!
endfunction
