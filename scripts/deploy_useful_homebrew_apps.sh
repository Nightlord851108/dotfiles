#! /bin/bash
source ./utils.sh

print 'Install Useful Homebrew Apps'
brew_install 'duti'
brew_install 'pyenv'
brew_install 'mas'
brew_install 'tldr'
brew_install 'tree'
brew_install 'watch'
brew_install 'wget'
brew_install 'macvim'
brew_install 'nginx'
brew_install 'yarn'

print 'Homebrew Tap Fonts'
run_cmd 'brew tap homebrew/cask-fonts'
cask_install 'font-hack-nerd-font'
