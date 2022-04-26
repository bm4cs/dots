#!/bin/sh

SOFTWARE="`sed -e 's/#.*$//' -e '/^$/d' software.txt | tr '\n' ' '`"
sudo apt -qy install $SOFTWARE
