#! /bin/bash
source ./utils.sh

print 'Homebrew Tap Cask'
run_cmd 'brew tap caskroom/cask'

print 'Install Homebrew-Cask Apps'
cask_install 'alfred'
cask_install 'bettertouchtool'
cask_install 'google-chrome'
cask_install 'iterm2'
cask_install 'java'
cask_install 'skype'
cask_install 'slack'
cask_install 'spectacle'
cask_install 'the-unarchiver'
cask_install 'docker'
cask_install 'atom'
cask_install 'visual-studio-code'
cask_install 'google-drive-file-stream'
cask_install 'virtualbox'
cask_install 'virtualbox-extension-pack'
cask_install 'iina'
cask_install 'karabiner-elements'
cask_install 'postman'

print 'mactex-no-gui too easy to fail due to connection, please retry if it fails'
cask_install 'mactex-no-gui' # Too easy to fail, please install manually
