" 以下のファイルは vim からは見たくない
let NERDTreeIgnore = ['\.[oa]$', '\.cm[aiox]$', '\.cmxa$', '\.\(aux\|bbl\|blg\|dvi\|log\)$', '\.\(tgz\|gz\|zip\)$', 'Icon', '__pycache__', '\.pyc' ]

" nerdtree が提示するファイルの順番を OSX と同じにしたい
let NERDTreeSortOrder = [ '*', '^\..*' ]
" au VimEnter * NERDTreeToggle /Users/wakita/Dropbox

if has('mac')
let NERDTreeBookmarksFile=$DROPBOX . '/lib/vim/user/nerdtree-bookmarks-mac'
endif

if has('win32') || has('win64')
let NERDTreeBookmarksFile=$DROPBOX . '/lib/vim/user/nerdtree-bookmarks-win'
endif

" NERDTreeでルートを変更したらchdirする
let g:NERDTreeChDirMode = 2

let g:NERDTreeMinimalUI = 1

if has('mac')
let g:NERDTreeDirArrows = 1

let g:NERDChristmasTree = 1

command Term silent !open -a Terminal.app .
endif

nnoremap <silent><C-e> :NERDTreeToggle<CR>
