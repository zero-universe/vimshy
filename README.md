vimshy
======

nice guide for this repo: http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

vim-configs and bashrc

git clone git@github.com:zero-universe/vimshy.git ~/.vim


::clone and update on an other machine::
cd ~
git clone git@github.com:zero-universe/vimshy.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
#ln -s ~/.vim/gvimrc ~/.gvimrc
#ln -s ~/.vim/bashrc ~/.bashrc;
cd ~/.vim
git submodule init
git submodule update


::update all modules::
git submodule foreach git pull origin master
