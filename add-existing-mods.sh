#!/bin/bash

if [ -f ~/.vimrc ] && ! [ -L ~/.vimrc ]
then
	echo "moving .vimrc to .vimrc.bak"
	mv ~/.vimrc ~/.vimrc.bak
	echo "creating .vimrc symlink to .vim/vimrc"
	ln -s ~/.vim/vimrc ~/.vimrc
else
	echo "creating .vimrc symlink to .vim/vimrc"
	ln -s ~/.vim/vimrc ~/.vimrc
fi

echo "initialising and updating modules"
cd ~/.vim
git submodule update --init

echo "all done ;-)"

exit 0
