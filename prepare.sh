#! /bin/bash
sudo apt install zsh autojump -y

sudo chsh -s $(which zsh) $USER

zsh
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

sudo apt install tmux -y
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

curl -sLf https://spacevim.org/install.sh | bash

curl -sS https://starship.rs/install.sh | sh

rm ~/.zshrc
wget https://raw.githubusercontent.com/GinkgoCoder/machine-setup/main/.zshrc
