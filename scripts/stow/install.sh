#!/bin/bash

# thx to hexdsl for sharing his config and ideas
# https://hexdsl.co.uk/hextool

me="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
u="$USER"
stow=/usr/bin/stow

menu()
{
	echo "usage:   " $me "[OPTION]"
	echo " "
	echo "init:    Install the basics (git/yay)"
	echo "dots:    Get dots from github (into '~/dots' folder)"
	echo "stow:    Restore home stow from dots repo"
	echo "unstow:  Cleanup home stow from dots repo"
	echo "apps:    Use 'yay' to install all programs"
	echo "dwm:     Clones dwm repo and applies patches"
	echo " "
}

init()
{
	cd /tmp/
	curl -LO https://aur.archlinux.org/cgit/aur.git/snapshot/yay.tar.gz
	tar xvzf yay.tar.gz
	cd yay
	makepkg -sci
	sudo pacman -S --needed git
}

dwm()
{
	cd ~
	rm -r dwm
	git clone git://git.suckless.org/dwm
	cd dwm
	curl -LO https://dwm.suckless.org/patches/center/dwm-center-6.1.diff:
}

apps()
{
	test -f ~/dots/restore/applist && yay -S --needed - < ~/dots/restore/applist || echo "Do dots & stow first dude!"
}

dots()
{
	cd ~
	git clone git@github.com:bm4cs/dots.git
}

stow()
{
	cd ~/dots/stow-home
	for d in *; do $stow -t ~ $d; done
	
	#Setup ROOT stow files
	#cd ~/dots/stow_root; for d in *; do sudo stow -t / $d; done
}

unstow()
{
	cd ~/dots/stow-home
	for d in *; do
		$stow -D -t ~ $d || true
	done
}

restow()
{
    if [ -n "$1" ]; then
	    cd ~/dots/stow-home/
        $stow -D -t ~ $1 || true
	    $stow -t ~ $1
    fi
}



if [ -n "$1" ]; then
	$1 ${@:2}
else
	menu
fi

