" Experimental
let g:vimspector_base_dir=expand( '$HOME/.config/nvim/vimspector-config' )
let g:vimspector_enable_mappings='VISUAL_STUDIO'

" Java debug https://github.com/dansomething/coc-java-debug
" Start spring in debug mode
" mvn spring-boot:run -Dspring-boot.run.jvmArguments="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=5005"
" Toggle breakpoint: F9
" Run in vim: CocCommand java.debug.vimspector.start
