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
# }}}

# completion format {{{
zstyle ':completion:*:descriptions' format '%F{226}Completing %F{214}%d%f'
# }}}

# LS_COLORS {{{
export LS_COLORS='di=00;99:ln=01;35:ex=01;36'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# }}}

# git diff colors — restore defaults {{{
git config --global color.diff.meta "yellow bold"
git config --global color.diff.frag "magenta bold"
git config --global color.diff.commit "yellow bold"
git config --global color.decorate.HEAD "cyan bold"
git config --global color.decorate.branch "green bold"
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
