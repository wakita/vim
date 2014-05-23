""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Writing in Vim (http://www.drbunsen.org/writing-in-vim/) "



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

  let g:languagetool_jar="$DROPBOX/Applications/LanguageTool-2.1/languagetool-commandline.jar"
  let g:languagetool_lang='en-US'

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

func! ToggleSpellMode()
    "z=  正しい綴りを提示"
    "]s  次の綴りの間違い"
    "[s  前の綴りの間違い"
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
