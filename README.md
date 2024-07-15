# dots

Configuration for the _daily driver_ programs I use.

These consist of programs that optimise my specific computer usage workflows as a software engineer, security researcher and terminal nerd.

My setup is quite opionated:

-   Its minimalist
-   Terminal tools where possible like [suckless](https://suckless.org/)
-   Prefer a BSD or a lean arch-like Linux distro
-   No bloated desktop environment (DE)
-   Use a tiling window manager aka a tiler
-   `vi` key binds everywhere
-   `neovim` as editor
-   `zsh` as shell

## Setup

Clone as a bare repo (i.e without a `.git` subdir):

```sh
git clone --bare git@github.com:bm4cs/dots.git $HOME/.dots
alias dots='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'
dots checkout
```

After clone, disable showing untracked files, else this will show everything in $HOME:

```sh
dots config --local status.showUntrackedFiles no
```

## Usage

`~/.aliases` includes the following:

```sh
alias dots="git --git-dir=$HOME/.dots/ --work-tree=$HOME"
```

Use the `dots` alias instead of the default `git` command.

Carefully stage and commit individual files as needed.

## Post install

If setting up a new box:

```sh
sudo apt install git tmux zsh curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)
bash -c "$(wget -qO- https://git.io/vQgMr)"
./scripts/zsh/install-plugins.sh
```

