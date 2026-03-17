# Light theme colors for zsh
# Sourced by zshrc when DOTFILES_THEME is "light"

# prompt colors (gs-prompt) {{{
PROMPT_COLOR_PWD=024        # dark blue for path
PROMPT_COLOR_GIT=130        # dark orange for branch name
PROMPT_COLOR_GIT_DIRTY=160  # red for dirty marker
PROMPT_COLOR_GIT_ARROW=088  # dark red for arrows
PROMPT_COLOR_EXECTIME=166   # orange for exec time
PROMPT_COLOR_TIME=030       # dark teal for time
PROMPT_COLOR_VENV=028       # dark green for virtualenv
# }}}

# dir colors {{{
export CLICOLOR='true'
export LSCOLORS='ExGxcxdxCxegedabagacad'
# }}}

# completion format {{{
zstyle ':completion:*:descriptions' format '%F{130}Completing %F{94}%d%f'
# }}}

# LS_COLORS {{{
export LS_COLORS='di=01;34:ln=01;35:ex=01;32'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# }}}

# git diff colors {{{
git config --global color.diff.meta "172 bold"
git config --global color.diff.frag "magenta bold"
git config --global color.diff.commit "172 bold"
git config --global color.decorate.HEAD "blue bold"
git config --global color.decorate.branch "28 bold"
# }}}

# glog {{{
alias glog='git log --graph --abbrev-commit --decorate --format=format:"%C(dim black)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n""          %C(black)%s%C(reset) -%C(magenta) %an%C(reset)" --all'
# }}}

# override zsh syntax highlighting {{{
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor line)

ZSH_HIGHLIGHT_STYLES[path]=fg=028,bold,underline
ZSH_HIGHLIGHT_STYLES[path_prefix]=fg=028,bold
ZSH_HIGHLIGHT_STYLES[autodirectory]=fg=028,bold,underline
ZSH_HIGHLIGHT_STYLES[command]=fg=025,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=061,underline
ZSH_HIGHLIGHT_STYLES[alias]=fg=025,bold
ZSH_HIGHLIGHT_STYLES[builtin]=fg=025,bold
ZSH_HIGHLIGHT_STYLES[globbing]=fg=094,underline
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=242
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=242
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=130
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=130
# }}}
