export ZSH_FZF_HISTORY_SEARCH_BIND="^r"

# export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
export LANG=en_US.UTF-8

autoload -U colors && colors

PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

ZSH_THEME=${ZSH_THEME:-"robbyrussell"}

HISTSIZE=10000000
SAVEHIST=10000000

HISTFILE="$XDG_CACHE_HOME/zsh/history"

setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS

plugins=(
    fzf-tab
    zsh-autosuggestions
    fast-syntax-highlighting
    python
    poetry
    z
    httpie
    poetry
    postgres
    zsh-fzf-history-search
    gpg-agent
    kubectl
    minikube
    helm
    sudo
    ssh-agent
)

zstyle ':fzf-tab:*' fzf-flags --color=bg+:#313244,bg:#181825,spinner:#f5e0dc,hl:#f38ba8 --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc --color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

[[ -s "$XDG_CONFIG_HOME/grc/grc.zsh" ]] && source "$XDG_CONFIG_HOME/grc/grc.zsh"

source $ZSH/oh-my-zsh.sh
source $XDG_CONFIG_HOME/shell/functions

alias ls="exa -lagr"


# bun completions
[ -s "/home/miracle/.bun/_bun" ] && source "/home/miracle/.bun/_bun"
