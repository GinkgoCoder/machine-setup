#! /bin/sh

DIR=$(pwd)

# vim must use the relative or absolute path to do load the config
ln -s "$DIR/.vimrc" ~/.vimrc

#install vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s "$DIR/.vundle.vim" ~/.vim/.vundle.vim
vim +PluginInstall +qall
##Reminder for youCompleteMe
echo "Please install youCompleteMe here https://github.com/ycm-core/YouCompleteMe#linux-64-bit"