#! /bin/sh
cat ~/.config/sxhkd/wm/"$DESKTOP_SESSION"/sxhkdrc ~/.config/sxhkd/sxhkdrc.exe > ~/.config/sxhkd/"$XDG_SEAT.$DESKTOP_SESSION.sxhkdrc"
