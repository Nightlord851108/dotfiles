#! /bin/bash
source ./utils.sh

SOURCE=$HOME'/Github/dotfiles'

print 'Link Configs'

print 'Link Atom'
link_dir $SOURCE'/atom/atom.symlink' $HOME'/.atom'

