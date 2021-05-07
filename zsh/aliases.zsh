# (meta)
alias up="sh ~/.dotfiles/update.sh"

# pacman
alias i="doas pacman -S --noconfirm"
alias Ss="pacman -Ss"
alias pacman="doas pacman"

# navigation
alias cg="cd ~/git"
alias cc="cd ~/.dotfiles"

# ls
alias -g ls="ls --color=always"
alias la="ls -la --color=always"
alias lai="ls -lai --color=always"

# default editor
alias -s md=vim
alias -s py=vim

# git
alias ga="git add ."
alias gm="git commit ."
alias gcm="git commit ."

# :)
alias -g sudo=doas

# vim
alias vi=vim
alias nano=vim

# verbose options
alias cp="cp -v"
alias mv="mv -v"
alias mount="mount -v"
alias mkdir="mkdir -v"
alias rm="rm -v"

# functions

# add {} to start/end of file
# usage: $ add_at_start name added_string
add_at_start() {
	mv $1 $2$1
}
add_at_end() {
	mv $1 $1$2
}

# copy as sudo and fix ownership
# usage: # copy file file2
copy() {
  doas cp -r $1 $2
  doas chown -R $USER $2
  chgrp $GROUP $2
}
