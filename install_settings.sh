if ! [ -f ~/.bashrc ]; then
    cp -i .bashrc ~/.bashrc
else
    echo '~/.bashrc already exists [SKIP]'
fi

if ! [ -f ~/.bash_aliases ]; then
    cp -i .bash_aliases ~/.bash_aliases 
else
    echo '~/.bash_aliases already exists [SKIP]'
fi

if ! [ -f ~/commands.txt]; then
    cp -i commands.txt ~/commands.txt 
else
    echo '~/commands.txt already exists [SKIP]'
fi

# -i is interactive, will ask before overwriting
if ! [ -f .vimrc ]; then
    cp -i .vimrc ~/.vimrc 
else
    echo '~/.vimrc already exists [SKIP]'
fi

#if command doesn't work with directory's
#sudo cp -r ~/.vim .

#if [ -f ~/.inputrc]; then
#    cp ~/.inputrc . 
#fi

#if [ -f ~/.octaverc]; then
#    cp ~/.octaverc . 
#fi


