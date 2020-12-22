#! /bin/bash
source ./utils.sh

print 'Install Ruby environment'
brew_install 'ruby'
brew_install 'rbenv ruby-build'
run_cmd 'rbenv install 2.7.1'
run_cmd 'rbenv global 2.7.1'

# Deploy libraries
run_cmd 'gem install ruby2d'

