#! /bin/sh

sudo apt-get update
sudo apt-get install -y git tmux wgt curl vim zsh fail2ban

zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install --lts


# Set up the vim
DIR=$(pwd)

# vim must use the relative or absolute path to do load the config
ln -s "$DIR/.vimrc" ~/.vimrc

#install vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s "$DIR/.vundle.vim" ~/.vim/.vundle.vim
vim +PluginInstall +qall