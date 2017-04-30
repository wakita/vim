" バックアップ関連
" savevers.vim をインストールすれば世代別のバックアップも可能
set backupdir=$HOME/.tmp/vim/backup
let &directory = &backupdir
set undodir=$HOME/.tmp/vim/undo

set nocompatible

" 文字コード関連
"
"   ファイルを UTF-8 で開き直す方法
"   map utf8 e ++enc=utf-8
"   http://sites.google.com/site/fudist/Home/vim-nihongo-ban/mojibake

set encoding=utf8
command UTF8 set fileencoding=utf8
command SJIS set fileencoding=shift_jis
command JIS  set fileencoding=iso-2022-jp
command EUC  set fileencoding=euc-jp
command UNIX set fileformat=unix
set statusline=%f\ %{'['.(&fenc!=''?&fenc:'?').'-'.&ff.']'}

set fileformats=unix,dos,mac
set formatoptions=q

command QL !qlmanage -p % >& /dev/null &

" 今は使っていない人気の設定
" あらかじめ ~/.vim に以下のファイルをコピーすること
" encode_japan.vim

" 編集のための設定
set backspace=indent,eol,start
set showmatch
set autoindent
set smartindent
set expandtab
set tabstop=8
set shiftwidth=2
set textwidth=0

"function! local:DisableAutoBreak()
function! s:DisableAutoBreak()
  set wrap
  set textwidth=0
  set wrapmargin=0
" set linebreak
" set nolist " list disables linebreak
" set fo-=5
endfunction

:au BufNewFile,BufRead *.* call s:DisableAutoBreak()

" AquaSKK のために
" set imdisable
" set noimdisableactivate
inoremap <silent> <C-j> <C-^>

" 検索関係
set smartcase
set noincsearch
set nocp
set nohlsearch
" <Return> で最後の検索結果のハイライトを消去する．
nnoremap <CR> :nohlsearch<CR><CR>

let g:loaded_matchparen=1

" コマンドライン補完するときに補完候補を表示する
set wildmenu

" お気に入りのファイルをキーを2つ入力しただけで開く
" マーク: m[A-Z], ジャンプ: '[A-Z]
" set viminfo += f1

" 畳み込み
set foldmethod=marker

" □■
set ambiwidth=double

" キーバインディング
" map <C-S-N> :next<CR>
" map <C-S-P> :bprevious<CR>

" OMake 関連
map \om :w:!omake
map \or :w:!omake run

"map <silent> <F2> :bp<cr>
"map <silent> <F3> :bn<cr>
"nmap \b :ls<cr>:buf 

" for Bluetooth keyboard for iPad/iPhone
imap qq 

"Markdown settings"
autocmd BufNewFile,BufRead *.md set filetype=markdown
command MarkdownView !markdown preview "%:p"
"autocmd FileType map

" Manual

runtime ftplugin/man.vim

" プラグインの管理 (Pathogen)
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
filetype plugin indent on

syntax off
