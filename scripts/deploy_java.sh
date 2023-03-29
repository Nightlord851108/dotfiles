#! /bin/bash
source ./utils.sh

SOURCE=$HOME'/Github/dotfiles'

print 'Deploy Java'

print 'Install Openjdk 17'
# brew_install 'openjdk@17'

if [[ $(uname -m) == 'arm64' ]]; then
  echo M1
  run_cmd 'wget https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_macos-aarch64_bin.tar.gz'
  run_cmd 'tar –xvzf openjdk-17.0.2_macos-aarch64_bin.tar.gz'
else 
  run_cmd 'wget https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_macos-x64_bin.tar.gz'
  run_cmd 'tar -xvzf openjdk-17.0.2_macos-x64_bin.tar.gz'
fi

run_cmd 'sudo mv jdk-17.0.2.jdk /Library/Java/JavaVirtualMachines'
run_cmd 'export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.0.2.jdk/Contents/Home'

print 'Link Maven'
link_dir $SOURCE'/maven/apache-maven-3.6.3' '/usr/local/apache-maven-3.6.3'
