LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
#DISABLE_UNTRACKED_FILES_DIRTY="true"
DEFAULT_USER=$(whoami)

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  emoji
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  fast-syntax-highlighting
  zsh-autocomplete
  colored-man-pages
  colorize
  sudo
)

source $ZSH/oh-my-zsh.sh

# User configuration
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export SSH_KEY_PATH="~/.ssh/rsa_id"

[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'
[[ -e ~/.aliases ]] && emulate sh -c 'source ~/.aliases'

#curl -sS https://starship.rs/install.sh | sh
#eval "$(starship init zsh)"

#ctrl-r shell history drop-in
eval "$(mcfly init zsh)" 

#hackersascii | lolcat
unix # rip dennis ritchie

#if [ -x "$(command -v neofetch)" ]; then
#    neofetch
#fi


