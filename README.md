# dots

Configuration for the _daily driver_ programs I use.

These consist of programs that optimise my specific computer usage workflows as a software engineer, security researcher and terminal nerd.

My setup is quite opionated:

-   Its minimalist
-   Terminal where possible such as [suckless](https://suckless.org/)
-   Prefer a BSD or a lean Linux distro
-   No bloated desktop environment (DE)
-   Use a tiling window manager (WM) over bloated desktop environments (DE)
-   `vi` keys everywhere
-   `neovim` is my editor

## Setup

Clone as a bare repo (i.e without a `.git` subdir):

```
git clone --bare git@github.com:bm4cs/dots-home.git $HOME/.dots
alias dots='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'
dots checkout
```

After clone, disable showing untracked files, else this will show everything in $HOME:

```
dots config --local status.showUntrackedFiles no
```

## Usage

`.bash_aliases` includes the following alias:

```
alias dots="git --git-dir=$HOME/.dots/ --work-tree=$HOME"
```

Use the `dots` alias, and not the default `git` command.

Carefully stage and commit individual files as needed.

# Gotchas

## neovim

Before `:PlugInstall` some dependencies:

-   `yarn` for prettier
