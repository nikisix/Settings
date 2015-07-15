# some more ls aliases
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'
alias ls='ls -GF'
alias gits='git status'
alias weather='weather -ikcmi --city "Kansas City" --st MO -f'
alias matrix='cmatrix -sabu2'
function __google { elinks "google.com/search?q=$*"; }
alias google='__google'
alias news='newsbeuter'
alias vi='/Applications/MacVim.App/Contents/MacOS/Vim'
function __csv { cat $1 | column -s, -t | vi -; }
alias csv='__csv'
alias clock='watch -n1 "date '+%D%n%T'|figlet -k"'
function __cols { head -n1 $1 | gsed 's/,/\n/g' | less; }
alias cols='__cols'
