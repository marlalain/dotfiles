# TODO: migrate to zinit
source ~/.zsh/antigen.zsh

# fzf-tab
source ~/.zsh/fzf-tab/fzf-tab.plugin.zsh
antigen bundle Aloxaf/fzf-tab
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# preview directory's content with exa when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'

# usual
antigen bundle git
antigen bundle pip

# highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# auto suggestions
antigen bundle zsh-users/zsh-autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion history)
ZSH_AUTOSUGGEST_USE_ASYNC=1

# end
antigen apply
