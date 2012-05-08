set ls=2 
set nocompatible
set backspace=2
set ignorecase
set statusline +=\ %P 
set statusline +=%4*\ %<%F%*            "full path
syntax on

map  <Esc>[7~ <Home>
map  <Esc>[8~ <End>

imap <Esc>[7~ <Home>
imap <Esc>[8~ <End>
