# !/bin/bash
cd scripts
source ./utils.sh

if [ $# -eq 0 ]; then
  print_error 'No Arguments'
  exit
fi;


export HOMEBREW_AUTO_UPDATE_SECS="86400"

if [ "$1" == "all" ]; then
  bash ./install_homebrew.sh
  bash ./deploy_zsh.sh
  bash ./deploy_useful_homebrew_apps.sh
  bash ./deploy_vim.sh
  bash ./link_ideavim.sh
  bash ./deploy_vifm.sh
  bash ./deploy_fonts.sh
  bash ./deploy_ruby.sh
  bash ./deploy_gtest.sh
  # bash ./deploy_drone_cli.sh
  bash ./deploy_pip_app.sh
  bash ./deploy_npm_app.sh
  bash ./link_all.sh
  bash ./deploy_app_store_apps.sh &
  bash ./deploy_homebrew_cask_apps.sh &
  run_cmd "sudo chmod -R 755 /usr/local/share/zsh" # Fix 'zsh compinit: insecure directories, run compaudit for list.' error
  zsh
elif [ "$1" == "cask" ]; then
  bash ./deploy_homebrew_cask_apps.sh
elif [ "$1" == "vim" ]; then
  bash ./deploy_vim.sh
elif [ "$1" == "zsh" ]; then
  bash ./deploy_zsh.sh
elif [ "$1" == "tmux" ]; then
  bash ./deploy_tmux.sh
elif [ "$1" == "vifm" ]; then
  bash ./deploy_vifm.sh
elif [ "$1" == "fonts" ]; then
  bash ./deploy_fonts.sh
elif [ "$1" == "gtest" ]; then
  bash ./deploy_gtest.sh
elif [ "$1" == "drone" ]; then
  bash ./deploy_drone_cli.sh
elif [ "$1" == "app_store" ]; then
  bash ./deploy_app_store_apps.sh
elif [ "$1" == "brew_cask" ]; then
  bash ./deploy_homebrew_cask_apps.sh
fi;

cd ..
