# dots

Configuration for the _daily driver_ programs I use.

These consist of programs that optimise my specific computer usage workflows as a software developer, security researcher and terminal nerd.

My setup is quite opionated:

* its minimalist and elistist
* use gentoo, arch and debian
* no desktop environment (DE)
* uses a tiler (tiling window manager) called `dwm`
* suckless programs where possible
* vim key bindings everywhere
* neovim is my editor
* esoteric key bindings (thx to ErgoDox EZ)

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

- `node` for coc
- `yarn` for prettier
- `pip3` and the `neovim` python module, for denite

