#! /bin/bash
source ./utils.sh

print 'Homebrew Tap Fonts'
run_cmd 'brew tap homebrew/cask-fonts'
# cask_install 'font-hack-nerd-font'
cask_install 'font-sourcecodepro-nerd-font'
cask_install 'font-lxgw-wenkai-tc.rb'
cask_install 'font-lxgw-wenkai-mono-tc.rb'
cask_install 'font-lxgw-wenkai.rb'
cask_install 'font-lxgw-wenkai-light.rb'
cask_install 'font-lxgw-wenkai-gb.rb'
