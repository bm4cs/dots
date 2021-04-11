# dots-home

Most of the configuration files for programs I like to us.

Mostly programs that optimise my computer usage workflows, as a software developer, security researcher and terminal nerd.

My setup is quite opionated:

* Its minimalist and elistist.
* I don't use a desktop environment (DE).
* I use a tiler (tiling window manager) called `dwm`.
* Suckless programs where possible.
* I use Gentoo and Arch Linux.
* Vim key bindings everywhere.
* neovim is my editor.
* Many esoteric key bindings (thx to ErgoDox EZ).

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


# Dags

## neovim

Before `:PlugInstall` some dependencies:

- `node` for coc
- `yarn` for prettier
- `pip3` and the `neovim` python module, for denite

