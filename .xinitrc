#!/bin/bash

#         _       _ _
#   __  _(_)_ __ (_) |_ _ __ ___
#   \ \/ / | '_ \| | __| '__/ __|
#  _ >  <| | | | | | |_| | | (__
# (_)_/\_\_|_| |_|_|\__|_|  \___|
#
# kilroySoft
#
# X initialization file

sudo systemctl --user start sxhkd.service >> error.log 2>> error.log

# log errors
exec i3 -V -d all >~/log/i3log-$(date +'%F-%k-%M-%S') 2>&1

