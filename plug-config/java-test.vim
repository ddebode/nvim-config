function! FindJavaTestFile()
  let dir = finddir('.settings/..', expand('%:p:h').';')
  let currentFileName = expand('%:t:r')
  " let files = system("fdfind --full-path --regex --search-path " . dir . " \".*test.*\.java\"")
  let files = system("fdfind --full-path --regex --search-path " . dir . " \".*test.*" . currentFileName . "\""   )
  echo files
endfunction
