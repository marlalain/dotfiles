#!/bin/sh

# generate dotfiles installer
env VERBOSE=1 RCRC=$HOME/.dotfiles/rcrc rcup -B 0 -f > ~/.dotfiles/.rc.sh
# and run it
chmod +x ~/.dotfiles/.rc.sh
sh ~/.dotfiles/.rc.sh
rm ~/.dotfiles/.rc.sh

# now update programs
zsh
tmux source-file ~/.tmux.conf
