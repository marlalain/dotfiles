# sane configs

setopt autocd
setopt prompt_subst
setopt extended_history
setopt append_history
setopt longlistjobs
setopt nonomatch
setopt notify
setopt hash_list_all
setopt completeinword
setopt noshwordsplit
setopt interactivecomments

# history
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history

# autotab
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# ps1
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# load other files
source ~/.zsh/plugins.zsh
source ~/.zsh/aliases.zsh
# tmux
#ZSH_TMUX_AUTOSTART=true
#source ~/.zsh/tmux.plugin.zsh
