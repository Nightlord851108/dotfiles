#! /bin/bash
source ./utils.sh

SOURCE=$HOME'/Github/dotfiles'

print 'Config git user and email'

run_cmd 'git config --global user.name "Patrick"'
run_cmd 'git config --global user.email "nightlord851108@gmail.com"'
