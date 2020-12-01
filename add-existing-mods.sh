#!/bin/bash

if [ -f ~/.vimrc ] && ! [ -L ~/.vimrc ]
then
	echo "moving .vimrc to .vimrc.bak"
	mv ~/.vimrc ~/.vimrc.bak
	echo "creating .vimrc symlink to .vim/vimrc"
	ln -s ~/.vim/vimrc ~/.vimrc
else
	echo "creating .vimrc symlink to .vim/vimrc"
	ln -fs ~/.vim/vimrc ~/.vimrc
fi

# clone gits
cd ~/.vim/
git clone https://github.com/tpope/vim-fugitive.git bundle/fugitive
git clone https://github.com/tpope/vim-unimpaired.git bundle/vim-unimpaired
#git clone https://github.com/vim-scripts/Pydiction.git bundle/pydiction
git clone https://github.com/godlygeek/tabular.git bundle/tabular
git clone https://github.com/altercation/vim-colors-solarized.git bundle/vim-colors-solarized
git clone https://github.com/tpope/vim-surround.git bundle/vim-surround
git clone https://github.com/pedrohdz/vim-yaml-folds bundle/vim-yaml-folds
git clone https://github.com/pearofducks/ansible-vim bundle/ansible-vim
git clone https://github.com/glench/vim-jinja2-syntax bundle/vim-jinja2-syntax
echo "initialising and updating modules"
git submodule update --init

echo "all done ;-)"

exit 0
