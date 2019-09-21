#! /bin/bash
source ./utils.sh

print 'Install Drone CLI'

brew_tap 'drone/drone'
brew_install 'drone'
