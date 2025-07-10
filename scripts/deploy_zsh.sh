#! /bin/bash
source ./utils.sh

SOURCE=$HOME'/Github/dotfiles'

print 'Deploy Zsh'

print 'Homebrew Tap universal-ctags/universal-ctags'
run_cmd 'brew tap universal-ctags/universal-ctags'
brew_install ' universal-ctags'

brew_install 'zsh'
brew_install 'diff-so-fancy'
brew_install 'neofetch'
link_dir $SOURCE'/neofetch' $HOME'/.config/neofetch'

run_cmd 'git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"'
print 'Remember to source ~/.zshrc'

print 'Link Zsh'
link_file $SOURCE'/zsh/zshrc' $HOME'/.zshrc'

source ~/.zshrc
