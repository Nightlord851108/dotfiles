# Dark theme colors for zsh
# Sourced by zshrc when DOTFILES_THEME is "dark"

# prompt colors (gs-prompt) — restore defaults {{{
PROMPT_COLOR_PWD=228
PROMPT_COLOR_GIT=221
PROMPT_COLOR_GIT_DIRTY=250
PROMPT_COLOR_GIT_ARROW=250
PROMPT_COLOR_EXECTIME=214
PROMPT_COLOR_TIME=079
PROMPT_COLOR_VENV=87
# }}}

# dir colors {{{
export CLICOLOR='true'
export LSCOLORS='exfxcxdxGxegedabagacad'
alias ls='gls --color=auto'
export LS_COLORS='di=01;38;5;75:ln=01;35:ex=01;36'
# }}}

# completion format {{{
zstyle ':completion:*:descriptions' format '%F{226}Completing %F{214}%d%f'
# }}}

# LS_COLORS for completion {{{
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# }}}


# git colors (via env vars to avoid .gitconfig lock conflicts) {{{
export GIT_CONFIG_COUNT=5
export GIT_CONFIG_KEY_0="color.diff.meta"
export GIT_CONFIG_VALUE_0="yellow bold"
export GIT_CONFIG_KEY_1="color.diff.frag"
export GIT_CONFIG_VALUE_1="magenta bold"
export GIT_CONFIG_KEY_2="color.diff.commit"
export GIT_CONFIG_VALUE_2="yellow bold"
export GIT_CONFIG_KEY_3="color.decorate.HEAD"
export GIT_CONFIG_VALUE_3="cyan bold"
export GIT_CONFIG_KEY_4="color.decorate.branch"
export GIT_CONFIG_VALUE_4="green bold"
# }}}

# glog {{{
alias glog='git log --graph --abbrev-commit --decorate --format=format:"%C(dim white)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n""          %C(white)%s%C(reset) -%C(magenta) %an%C(reset)" --all'
# }}}

# override zsh syntax highlighting {{{
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor line)

ZSH_HIGHLIGHT_STYLES[path]=fg=030 # original [ ,underline ]
ZSH_HIGHLIGHT_STYLES[command]=fg=081,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=075,underline
ZSH_HIGHLIGHT_STYLES[alias]=fg=081,bold
ZSH_HIGHLIGHT_STYLES[builtin]=fg=081,bold
ZSH_HIGHLIGHT_STYLES[globbing]=fg=061,underline
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=025
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=025
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=031
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=031
# }}}
