#! /bin/bash
source ./utils.sh

SOURCE=$HOME'/Github/dotfiles'

print 'Link Configs'

print 'Link Zed'
link_dir $SOURCE'/zed' $HOME'/.config/zed'
