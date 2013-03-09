vimshy
======

vim-configs and bashrc

git clone git@github.com:zero-universe/vimshy.git ~/.vim

ln -s ~/.vim/vimrc ~/.vimrc; 
ln -s ~/.vim/gvimrc ~/.gvimrc; 
ln -s ~/.vim/bashrc ~/.bashrc;

cd ~/.vim; 
git submodule init; 
git submodule update;

#update a bundle
cd ~/.vim/bundle/BUNDLE_NAME;
git pull origin master