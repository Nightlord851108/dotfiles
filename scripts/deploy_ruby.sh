#! /bin/bash
source ./utils.sh

print 'Install Ruby environment'
brew_install 'ruby'
run_cmd 'rbenv install 2.7.1'
run_cmd 'rbenv global 2.7.1'

# Deploy libraries
run_cmd 'gem install ruby2d'

