" 以下のファイルは vim からは見たくない
let NERDTreeIgnore = ['\.[oa]$', '\.cm[aiox]$', '\.cmxa$', '\.\(aux\|bbl\|blg\|dvi\|log\)$', '\.\(tgz\|gz\|zip\)$', 'Icon' ]

" nerdtree が提示するファイルの順番を OSX と同じにしたい
let NERDTreeSortOrder = [ '*', '^\..*' ]
" au VimEnter * NERDTreeToggle /Users/wakita/Dropbox
