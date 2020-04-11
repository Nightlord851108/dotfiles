#! /bin/bash
source ./utils.sh

SOURCE=$HOME'/Github/dotfiles'

print 'Link Dotfiles'

print 'Link Atom'
link_dir $SOURCE'/atom/atom.symlink' $HOME'/.atom'

print 'Link Maven'
link_dir $SOURCE'/maven/apache-maven-3.6.3' '/usr/local/apache-maven-3.6.3'
