#!/bin/bash
# Profile file. Runs on login.

# Start graphical server if i3 not already running.
# [ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx

# Switch escape and caps if tty:
sudo -n loadkeys ~/.scripts/ttymaps.kmap 2>/dev/null

[ -s "/home/ivan/.jabba/jabba.sh" ] && source "/home/ivan/.jabba/jabba.sh"

# Arrange screens
bash ~/.screenlayout/double.sh

# test if sxhkd is runnig
pgrep sxhkd

# if no start the process(es)
# [ $? = 1 ] && sudo -A systemd start sxhkd

export PATH="$HOME/.cargo/bin:$PATH"
export DENO_INSTALL="/home/ivan/.local"
export PATH="$DENO_INSTALL/bin:$PATH"

[ -f ~/.bashrc ] && source ~/.bashrc

