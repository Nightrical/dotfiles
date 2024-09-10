export ZSH="$HOME/.config/zsh/oh-my-zsh"
export ZSH_CUSTOM="$XDG_CONFIG_HOME/zsh/oh-my-zsh/custom"
export ZSHZ_DATA=$XDG_CACHE_HOME/zsh/zfile
export ZSH_FZF_HISTORY_SEARCH_BIND="^r"

export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
export LANG=en_US.UTF-8

autoload -U colors && colors

PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

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
)

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

[[ -s "$XDG_CONFIG_HOME/grc/grc.zsh" ]] && source "$XDG_CONFIG_HOME/grc/grc.zsh"

source $ZSH/oh-my-zsh.sh
source $XDG_CONFIG_HOME/shell/functions
