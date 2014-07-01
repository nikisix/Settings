if [ -f ~/.bashrc ]; then
    cp ~/.bashrc . 
fi

#only for ubuntu 
#like bashrc, but with just the aliases I define
#bashrc reads this file in if it exists
if [ -f ~/.bash_aliases ]; then
    cp ~/.bash_aliases . 
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
