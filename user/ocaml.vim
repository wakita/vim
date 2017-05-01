" Settings and functionalities of Vim's builtin support for OCaml
"
" filetype indent on
" filetype plugin on
" au BufRead,BufNewFile *.ml,*.mli compiler ocaml
" syntax on
" Then you get some nice shortcuts:
" 
" \s switches between the .ml and .mli file
" \c comments the current line / selection (\C to uncomment)
" % jumps to matching let/in, if/then, etc (see :h matchit-install)
" \t tells you the type of the thing under the cursor (if you compiled with -annot)
"
" Other plugins
"
" https://github.com/scrooloose/syntastic - syntax checking
" 
" https://github.com/def-lkb/merlin - auto completion
" 
" https://github.com/jpalardy/vim-slime - repl integration
" 
" https://github.com/OCamlPro/ocp-indent - code formatting
