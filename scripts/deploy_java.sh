#! /bin/bash
source ./utils.sh

SOURCE=$HOME'/Github/dotfiles'

print 'Deploy Java'

print 'Install Openjdk 17'
brew_install 'openjdk@17'

print 'Link Maven'
link_dir $SOURCE'/maven/apache-maven-3.6.3' '/usr/local/apache-maven-3.6.3'
