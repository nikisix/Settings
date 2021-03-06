export PS1="\w☾♂☽ "

#allow python to run things downloaded by brew
alias usepython2='export PYTHONPATH=$PYPATH1:$PYPATH2:$PYPATH3'
alias usepython3='export PYTHONPATH=/usr/local/lib/python3.4/site-packages/'
export PYPATH1=/usr/local/lib/python2.7/site-packages
export PYPATH2=/Library/Python/2.7/site-packages
export PYPATH3=/lib/python2.7/site-packages/
export PYTHONPATH=$PYPATH1:$PYPATH2:$PYPATH3

export NOKOGIRI_USE_SYSTEM_LIBRARIES=1

#export PATH=$PATH:$GROOVY_HOME/bin
#export JRE_HOME=/usr/local/java/jre1.7.0_06
export GOPATH=/usr/local/bin
export JDK_HOME=/usr/local/java/jdk1.7.0_06
export JAVA_HOME=$JDK_HOME
#export GROOVY_HOME=/usr/share/groovy
#export PATH=$PATH:$GROOVY_HOME/bin
#export PATH=$PATH:$JAVA_HOME/bin:$GROOVY_HOME/bin
export HOMEBREW_GITHUB_API_TOKEN=850fbe3c22137c760122bccded5916c785b090c8
#export VMAIL_VIM=mvim
export VMAIL_VIM='/Applications/MacVim.App/Contents/MacOS/Vim'
#export VMAIL_VIM=gvim

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

export PGPASSWORD=DataSci@Production@Protection\!
