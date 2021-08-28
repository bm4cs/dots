dunst &                                                     # notifications
(feh --bg-scale ~/art/quiet-mind-by-alena-aenami.png) &     # wallpaper
xrdb -merge ~/.Xresources &                                 # apply configuration
xset +fp /home/ben/.local/share/fonts &                     # user fonts
~/bin/dwmbar &                                              # set status bar
xautolock -time 10 -locker slock &                          # screen locker
exec dwm                                                    # spark up dwm

