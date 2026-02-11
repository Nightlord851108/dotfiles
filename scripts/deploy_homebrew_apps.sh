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
brew_install 'nginx'
brew_install 'yarn'
brew_install 'gradle'
brew_install 'mit-scheme'
brew_install 'rlwrap'
brew_install 'ocaml'
brew_install 'opam'
brew_install 'squirrel-app'
brew_install 'openjdk@21'
link_file '/opt/homebrew/opt/openjdk@21/libexec/openjdk.jdk' '/Library/Java/JavaVirtualMachines/jdk-21.jdk'

# run_cmd 'brew tap homebrew/cask-fonts'
# cask_install 'font-hack-nerd-font'
