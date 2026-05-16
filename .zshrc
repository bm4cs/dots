LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

export ZSH="$HOME/.oh-my-zsh"

# starship handles the prompt; no oh-my-zsh theme needed
ZSH_THEME=""
DEFAULT_USER=$(whoami)

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# fast-syntax-highlighting must be sourced LAST
plugins=(
  git
  sudo
  colored-man-pages
  zsh-autosuggestions
  fast-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# user configuration
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export SSH_KEY_PATH="~/.ssh/rsa_id"

# keep using bash configs
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'
[[ -e ~/.aliases ]] && emulate sh -c 'source ~/.aliases'

# prompt
eval "$(starship init zsh)"

# add Pulumi to the PATH
export PATH=$PATH:/home/bms/.pulumi/bin

# zoxide - better cd
eval "$(zoxide init zsh)"
