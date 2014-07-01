if [ -f ~/.bashrc ]; then
    cp ~/.bashrc . 
fi

if [ -f ~/commands.txt]; then
    cp ~/commands.txt . 
fi

if [ -f ~/.inputrc]; then
    cp ~/.inputrc . 
fi

if [ -f ~/.octaverc]; then
    cp ~/.octaverc . 
fi

if [ -f ~/.vimrc ]; then
    cp ~/.vimrc . 
fi

#if command doesn't work with directory's
#sudo cp -r ~/.vim .
