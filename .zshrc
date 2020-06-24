export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="dracula"
ENABLE_CORRECTION="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh
alias mirror_sync="doas reflector --latest 100 --protocol http --protocol https --sort rate --save /etc/pacman.d/mirrorlist"
alias :q='exit'
alias i3c="nvim ~/.config/i3/config"
alias nvc="nvim ~/.config/nvim/init.vim"
alias tc="nvim ~/.config/alacritty/alacritty.yml"
alias doas="doas --"
alias clip="xclip -sel clipboard"
alias spt="~/.local/share/scripts/spotify.sh"
pfetch
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
startx
fi
