# Setup Ubuntu Server

## Install Ubuntu Packages

```sh
sudo apt-get update
sudo apt-get install -y git tmux wget curl vim zsh
```

## Setup the zsh

1. Install `zsh`
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
2. change default shell by using chsh
3. logout and start a new terminal
4. Install `autosuggestion` and `highlight` plugins
```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
5. Install pure theme 
```sh
git clone https://github.com/sindresorhus/pure.git "$HOME/.oh-my-zsh/pure"
```

## Setup Vim
```sh
DIR=$(pwd)
ln -s "$DIR/.vimrc" ~/.vimrc
#install vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s "$DIR/.vundle.vim" ~/.vim/.vundle.vim
vim +PluginInstall +qall
```

## Install the development tool
1. Java
```sh
sudo apt-get install openjdk-11-jdk
```
2. [nvm and node](https://github.com/nvm-sh/nvm)
```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install --lts
```
3. [miniconda](https://docs.conda.io/projects/conda/en/latest/user-guide/install/linux.html#install-linux-silent)
```sh
wget https://repo.anaconda.com/miniconda/Miniconda3-py38_4.12.0-Linux-x86_64.sh
bash Miniconda3-py38_4.12.0-Linux-x86_64.s
conda config --set auto_activate_base false
```
4. [Optional] [Docker](https://docs.docker.com/engine/install/ubuntu/)

## Update the config
```
ln -s ./.zshrc ~/.zshrc
```

## Ubuntu server security
1. Change the ssh port
2. Disable the password auth
```sh
mv /etc/ssh/sshd_config /etc/ssh/sshd_config_backup
ln ~/security_config/sshd_config /etc/ssh/sshd_config
```
3. Update the firewall
```sh
sudo apt install ufw
sudo systemctl enable ufw
sudo systemctl restart ufw
ufw default allow port/tcp
```
4. Install and update the fail2ban
```sh
sudo systemctl enable fail2ban
sudo systemctl restart fail2ban
mv /etc/fail2ban/jail.conf /etc/fail2ban/jail.conf.backup
ln -s ~/security_config/jail.conf /etc/fail2ban/jail.conf
```