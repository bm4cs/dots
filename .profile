# if not running interactively, gtfo
[[ $- != *i* ]] && return

export PATH="$PATH:$GOPATH/bin:$:$HOME/.cargo/bin:/snap/bin"

[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"

export EDITOR="nvim"
export VISUAL="$EDITOR"
export TERMINAL="st"
export BROWSER="firefox"
export READER="mupdf"
export FILE="nnn"
export _JAVA_AWT_WM_NONREPARENTING=1

# langs
export GOBIN=$HOME/go/bin
export GOPATH=$HOME/go
[ -d "$HOME/.cargo" ] && source "$HOME/.cargo/env"
[ -d "/usr/local/go/bin" ] && PATH="/usr/local/go/bin:$PATH"
export NODE_OPTIONS=--max-old-space-size=4096

# node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -d "$HOME/.nvim/versions/node/v16.19.1" ] && source '/home/ben/.nvm/versions/node/v16.19.1/lib/node_modules/@hyperupcall/autoenv/activate.sh'

if [ -d "$HOME/.local/share/JetBrains/Toolbox" ] && export PATH="$PATH:$HOME/.local/share/JetBrains/Toolbox/scripts"

# music player daemon
if [ -x "$(command -v mpd)" ]; then
	[ ! -s ~/.config/mpd/pid ] && mpd
fi

n ()
{
    # block nesting of nnn in subshells
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    # the default behaviour is to cd on quit (nnn checks if nnn_tmpfile is set)
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}

# extract archive
function extract {
    if [ -z "$1" ]; then
        echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
    else
        if [ -f $1 ] ; then
            case $1 in
                *.tar.bz2)   tar xvjf ./$1    ;;
                .tar.gz)    tar xvzf ./$1    ;;
                *.tar.xz)    tar xvJf ./$1    ;;
                *.lzma)      unlzma ./$1      ;;
                *.bz2)       bunzip2 ./$1     ;;
                *.rar)       unrar x -ad ./$1 ;;
                *.gz)        gunzip ./$1      ;;
                *.tar)       tar xvf ./$1     ;;
                *.tbz2)      tar xvjf ./$1    ;;
                *.tgz)       tar xvzf ./$1    ;;
                *.zip)       unzip ./$1       ;;
                *.Z)         uncompress ./$1  ;;
                *.7z)        7z x ./$1        ;;
                *.xz)        unxz ./$1        ;;
                *.exe)       cabextract ./$1  ;;
                *)           echo "extract: '$1' - unknown archive method" ;;
            esac
        else
            echo "$1 - file does not exist"
        fi
    fi
}

# start dwm if not already running
if [ -x "$(command -v dwm)" ]; then
    [ "$(tty)" = "/dev/tty1" ] && ! pgrep -x dwm >/dev/null && exec startx
fi

