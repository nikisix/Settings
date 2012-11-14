set ls=2 
set ts=4
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

"If nerdtree's the only open window when you close vi, then close the nerdtree window too
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"load nerdtree automatically when vi starts
"autocmd vimenter * NERDTree

"autoload nerdtree, even if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif
