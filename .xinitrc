dunst &                                  # notifications
xsetroot -solid "#323232"                # background color
xrdb -merge ~/.Xresources &              # apply configuration
xset +fp /home/ben/.local/share/fonts &  # user fonts
xautolock -time 20 -locker slock &       # screen locker
slstatus &                               # status bar
exec dwm                                 # spark up tiler

