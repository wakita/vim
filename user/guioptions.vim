set lines=50 columns=90

if has('mac')
  set guifont=Consolas:h14
endif

if has('win')
  set guifont=Consolas:h12
  set guifontwide=MS_Gothic:h12
endif

colorscheme solarized
let g:solarized_visibility="high"

set fileformats=unix,dos,mac
