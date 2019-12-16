#! /bin/bash
source ./utils.sh

print 'Install Atom environment packages'
run_cmd 'apm install atom-clock'
run_cmd 'apm install hydrogen'
run_cmd 'apm install platformio-ide-terminal'
run_cmd 'apm install intentions'
run_cmd 'apm install busy-signal'
run_cmd 'apm install linter-ui-default'
run_cmd 'apm install linter'
run_cmd 'apm install atom-beautify'
run_cmd 'apm install pigments'
run_cmd 'apm install split-diff'
run_cmd 'apm install teletype'
run_cmd 'apm install activate-power-mode'
run_cmd 'apm install vim-mode-plus'
run_cmd 'apm install relative-numbers'

print 'Install Atom language packages'
# Java
run_cmd 'apm install ide-java'
run_cmd 'apm install autocomplete-java'
run_cmd 'apm install language-gradle'
# Javascript
run_cmd 'apm install language-vue'
run_cmd 'apm install language-groovy'
run_cmd 'apm install language-pug'
# Go
run_cmd 'apm install go-plus'
# Python
run_cmd 'apm install ide-python'
run_cmd 'apm install autocomplete-python'
# Docker
run_cmd 'apm install language-docker'
# Nginx
run_cmd 'apm install language-nginx'
# Robot Framework
run_cmd 'apm install language-robot-framework'

# Theme
print 'Install Atom theme'
run_cmd 'apm install atom-material-ui'
run_cmd 'apm install atom-material-syntax'
