#!/bin/sh

SOFTWARE="`sed -e 's/#.*$//' -e '/^$/d' software.txt | tr '\n' ' '`"
apt -qy install $SOFTWARE
