function! FindJavaTestFile()
  let dir = finddir('.git/..', expand('%:p:h').';')
  "fd --full-path --regex --search-path ~/.config/nvim "u.*init"
  let files = system("fdfind --full-path --regex --search-path " . dir . " \".*init\"")
  echo files
endfunction
