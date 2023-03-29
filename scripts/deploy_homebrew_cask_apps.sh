#! /bin/bash
source ./utils.sh

# print 'Homebrew Tap Cask'
# run_cmd 'brew tap caskroom/cask'

# To add new cask app, please check if it exists in https://formulae.brew.sh/cask/

print 'Install Homebrew-Cask Apps'
cask_install 'alfred'
cask_install 'bettertouchtool'
cask_install 'google-chrome'
cask_install 'iterm2'
# cask_install 'java'
# run_cmd 'brew tap adoptopenjdk/openjdk'
# cask_install 'adoptopenjdk'
cask_install 'skype'
cask_install 'slack'
# cask_install 'spectacle'    ## Deprecated, not supporint Apple Silicon. Alternate with Rectangle
cask_install 'rectangle'
cask_install 'the-unarchiver'
cask_install 'docker'
cask_install 'atom'
cask_install 'visual-studio-code'
cask_install 'google-drive'
cask_install 'iina'
cask_install 'karabiner-elements'
cask_install 'postman'
cask_install 'android-studio'
cask_install 'brooklyn'
cask_install 'miro'
cask_install 'intellij-idea'
cask_install 'datagrip'
cask_install 'goland'
cask_install 'rubymine'
cask_install 'pycharm'
cask_install 'clion'
cask_install 'webstorm'
cask_install 'gather'
cask_install 'thunder'
cask_install 'microsoft-teams'
cask_install 'messenger'
cask_install 'notion'
cask_install 'mkvtoolnix'
cask_install 'firefox'
cask_install 'brooklyn --no-quarantine'

print 'mactex-no-gui too easy to fail due to connection, please retry if it fails'
cask_install 'mactex-no-gui' # Too easy to fail, please install manually
