# some more ls aliases
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'
alias gits='git status'
alias weather='weather -ikcmi --city "Kansas City" --st MO -f'
alias matrix='cmatrix -sabu2'

#export JRE_HOME=/usr/local/java/jre1.7.0_06
export JDK_HOME=/usr/local/java/jdk1.7.0_06
export JAVA_HOME=$JDK_HOME
export GROOVY_HOME=/usr/share/groovy
export PATH=$PATH:$GROOVY_HOME/bin
#export PATH=$PATH:$JAVA_HOME/bin:$GROOVY_HOME/bin

#function __google { lynx "google.com/search?q=$*"; }
function __google { elinks "google.com/search?q=$*"; }
alias google='__google'
alias news='newsbeuter'
