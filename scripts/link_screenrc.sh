#! /bin/bash
source ./utils.sh

SOURCE=$HOME'/Github/dotfiles'


print 'Link Screenrc'
link_file $SOURCE'/screen/screenrc' $HOME'/.screenrc'
