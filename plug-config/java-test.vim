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
