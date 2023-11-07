#===========zsh===============#
ZSH=$HOME/.oh-my-zsh
ZSH_THEME=''

plugins=(git zsh-autosuggestions zsh-syntax-highlighting) 
source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
