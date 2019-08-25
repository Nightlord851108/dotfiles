#! /bin/bash
source ./utils.sh

SOURCE=$HOME'/Github/dotfiles'

print 'Link Dotfiles'

print 'Link Atom'
link_dir $SOURCE'/atom/atom.symlink' $HOME'/.atom'
