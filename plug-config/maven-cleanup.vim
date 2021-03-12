" Function to easily move maven depedency version to the property section
function ReplaceMavenVersion()
   " copy artifactId to register k"
   exe "norm! \"kyitj"
   " put version in register m"
   exe "norm! \"mcit$\{\}"
   " Paste artifactid from register k and type version"
   exe "norm! \"kPa\.version"
   " Copy property key to k"
   exe "norm! h\"kyi}"
endfunction

function AddMavenVersion()
    " Add new line"
   exe "norm! o<>"
   " paste property key from register m"
   exe "norm! \"kP"
   " paste version"
   exe "norm! l\"mp"
   " add closing tag"
   exe "norm! a</>"
   " paste property key from register m"
   exe "norm! \"kP"
endfunction
    
nnoremap <leader>mrv :call ReplaceMavenVersion()<CR>
nnoremap <leader>mav :call AddMavenVersion()<CR>
