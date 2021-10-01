dunst &                                 # notifications
xsetroot -solid "#657b83"               # background color
xrdb -merge ~/.Xresources &             # apply configuration
xset +fp /home/ben/.local/share/fonts & # user fonts
xautolock -time 10 -locker slock &      # screen locker
slstatus &                              # status bar
exec dwm                                # spark up dwm

