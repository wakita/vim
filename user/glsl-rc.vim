let g:glsl_file_extensions = '*.shaders,*.fs,*.vs'

autocmd! BufNewFile,BufRead *.shaders set filetype=glsl
