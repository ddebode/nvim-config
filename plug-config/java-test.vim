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

function! CreateJavaTestFile()
  let currentPath = expand('%:p:h')
  let currentFileName = expand('%:t:r')
  let testdir = substitute(currentPath, "main", "test", "")
  let testFilename = testdir . '/' . currentFileName . 'Test.java'
  let choice = inputlist(['Select option', '1. create ' . testFilename])
  if choice == 1
    execute "!mkdir " . testdir
    execute "e " . testFilename
  else 
    echo "No testfile selected"
  endif
endfunction


function! FindMethodName()
  normal! [m
  let result = search('(', 'b')
  if result == 0
    echo "Pattern not found."
  endif
  normal! hb
endfunction

