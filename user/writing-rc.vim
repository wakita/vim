""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Seth Brown, Wrinting in Vim, Dec. 4, 2011.
" Writing in Vim (http://www.drbunsen.org/writing-in-vim/) "
"     このスクリプトの大部分はこの記事を参考にして作りました．
"
" Joe Brockmeier, Using Spell Checking in Vim, Linux.com, Sep. 1, 2010.
" http://www.linux.com/learn/tutorials/357267:using-spell-checking-in-vim
"     とてもよくまとまった解説記事
"
" ジロカ, MacVimで辞書を呼び出す話, Apr 24, 2013.
" http://jiroukaja-memo.hatenablog.com/entry/2013/04/24/221542
" https://gist.github.com/jiroukaja/5451829
"     :Dictコマンドで辞書を呼び出す機能



"""""""""""""""""""""""""""""""""""""
" A few key Vim commands that are vital to efficient word processing"

" 3diw    Delete inside the current word and the next two words"
" dwwP    Swap the current word with the next word"
" d?foo   Delete from the cursor to the previous string “foo”"
" ct.     Change from the cursor until the next period"
" d^      Delete from the cursor to the beginning of the line"
" d>D     Delete from the cursor to the end of the line"
" 2J      Join the current line with the line below"
" das     Delete around the current sentence"
" c(      Change from the cursor to the begining of a sentence"
" >}      Go to the end of the current paragraph"
" dapP    Swap current paragraph with the next paragraph"



"""""""""""""""""
" Writer's Mode "
" 主にSeth Brownさんの記事より

func! WritersMode() 
" set formatprg=par
  setlocal formatoptions+=1 
  setlocal wrap 
  setlocal linebreak 
  setlocal textwidth=0
  setlocal wrapmargin=0

  "行が長くなり，複数行にわたって表示される場合に，上下方向のカーソルの移動を楽にする．"
  map j gj
  map k gk

  "組込みの綴り辞書を利用した単語補完"
  setlocal complete+=k/usr/share/dict/web2

  "米語辞書を用いた綴り検査"
  set spelllang=en_us
  "時前の辞書"
  set spellfile=$DROPBOX/lib/dict/ken.en.add
  "類義語辞書: 類義語辞書の参照は C-x C-t"
  set thesaurus+=$DROPBOX/lib/dict/mthes10/mthesaur.txt

  let g:languagetool_jar="$HOME/Dropbox/Applications/LanguageTool-2.5/languagetool-commandline.jar"
  let g:languagetool_lang='en-US'
  let g:languagetool_disable_rules='WHITESPACE_RULE,EN_QUOTES,MORFOLOGIK_RULE_EN_US'

  "文法検査 (help languagetool)"
    "メニュー> Plugin> LanguageTool> {Check|Clear}"
    ":GC   バッファ内の文法検査"
    ":GCX  文法検査を停止"

  com! GC LanguageToolCheck
  com! GCX LanguageToolClear
endfu 

com! Write call WritersMode()



"""""""""""""""""""""""""""""""
" Spell checking (help spell) "
" Vim 7の組込みの機能

func! ToggleSpellMode()
    "z=  正しい綴りを提示"
    "]s  次の綴りの間違いに移動"
    "[s  前の綴りの間違いに移動"
    "zg  カーソルの下の単語の綴りを辞書(spellfile)に登録"
    "zw  カーソルの下の単語を間違った綴りとして辞書に登録"
    "zug, zuw  zgやzwのundo"

  if &spell
    setlocal nospell
  else
    setlocal spell
  endif
endfu

com! Spell call ToggleSpellMode()



"""""""""""""""""""""""""""""""
" Dictionary lookup (:Dict)
" ジロカさんありがとうございます

function! s:dict(...)
  let is_macunix = has('mac') || has('macunix') || has('gui_macvim') || (!executable('xdg-open') && system('uname') =~? '^darwin')
  if(!is_macunix)
    echohl WarningMsg
    echomsg 'Your platform is not supported!'
    echohl None
    finish
  endif
  let word = len(a:000) == 0 ? input('Dictionary search: ', expand('<cword>')) : join(a:000, ' ')
  call system(printf("open dict://'%s'", word))
endfunction

command! -nargs=* Dict call <SID>dict(<f-args>)

command Paper1 cd $MYPAPER/$PAPER1
