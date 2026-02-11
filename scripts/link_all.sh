#! /bin/bash
source ./utils.sh

SOURCE=$HOME'/Github/dotfiles'

print 'Link Configs'

print 'Link Zed'
link_dir $SOURCE'/zed' $HOME'/.config/zed'
link_dir $HOME'/Documents/Zed_LLM/threads' $HOME'/Library/Application Support/Zed/threads'

./link_ideavim.sh
./link_claude.md.sh
./link_rime.sh
