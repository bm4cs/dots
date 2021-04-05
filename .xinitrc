dunst &                                           # notifications
(feh --bg-scale ~/dots/art/quiet-mind-by-alena-aenami.png) & # wallpaper
xrdb -merge ~/.Xresources &                       # apply configuration
xset +fp /home/ben/.local/share/fonts &           # user fonts
~/bin/dwmbar &                                    # set status bar
exec dwm                                          # spark up dwm

