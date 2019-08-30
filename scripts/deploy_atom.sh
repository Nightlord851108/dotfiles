#! /bin/bash
source ./utils.sh

print 'Install Atom'
run_cmd 'ln -sn ~/Github/dotfiles/atom/atom.symlink ~/.atom'

cask_install 'atom'
