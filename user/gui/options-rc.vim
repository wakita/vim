set lines=70 columns=100

set guioptions-=T " remove toolbar
set guioptions-=L " remove left-hand scroll bar
set guioptions-=R " remove right-hand scroll bar

if has('mac')
  set guifont=Consolas:h14
  cd /Users/wakita/Dropbox
endif

if has('win32')
" set guifont=Inconsolata:h10
" set guifont=Ricty_Diminished:h12:cSHIFTJIS
" set guifont=Migu_1M:h12:b
" set guifont=Migu_1M:h12
  set guifont=Consolas:h12
  set guifontwide=MS_Gothic:h12
  set renderoptions=type:directx
endif

set fileformats=unix,dos,mac
