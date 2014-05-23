"Writing in Vim (http://www.drbunsen.org/writing-in-vim/)"
"
func! Comment1()
"A few key Vim commands that are vital to efficient word processing"
"  3diw  delete inside the current word and the next two words"
"  dwwP  swap the current word with the next word"
"  d?foo delete from the cursor to the previous string “foo”"
"  ct.   change from the cursor until the next period"
"  d^    delete from the cursor to the beginning of the line"
"  d>D   delete from the cursor to the end of the line"
"  2J    join the current line with the line below"
"  das   delete around the current sentence"
"  c(    change from the cursor to the begining of a sentence"
"  >}    go to the end of the current paragraph"
"  dapP  swap current paragraph with the next paragraph"
endfu

func! WordProcessorMode() 
  setlocal formatoptions=1 
  setlocal noexpandtab 
  map j gj 
  map k gk
  set spelllang=en_us
  set spellfile=$DROPBOX/lib/dict/ken.en.add
  set thesaurus+=$DROPBOX/lib/dict/mthes10/mthesaur.txt
  setlocal complete+=k/usr/share/dict/web2
" set formatprg=par
" setlocal wrap 
" setlocal linebreak 
endfu 

com! WP call WordProcessorMode()

func! ToggleSpellMode()
  if &spell
    setlocal nospell
  else
    setlocal spell
  endif
endfu

com! SP call ToggleSpellMode()

"]s  次の綴りの間違い"
"[s  前の綴りの間違い"
"zg  カーソルの下の単語の綴りを辞書(spellfile)に登録"
"zw  カーソルの下の単語を間違った綴りとして辞書に登録"
"zug, zuw  zgやzwのundo"
