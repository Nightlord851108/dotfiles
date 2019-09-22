#! /bin/bash
source ./utils.sh

print 'Downloading Gtest source'
run_cmd 'cd ..; wget https://github.com/google/googletest/archive/release-1.8.0.zip'
run_cmd 'unzip release-1.8.0.zip'

print 'Building Gtest'
run_cmd 'cd googletest-release-1.8.0/googletest'
run_cmd 'mkdir -p build; cd build'
run_cmd 'cmake -Dgtest_build_samples=ON -Dgtest_build_tests=ON ~/Github/dotfiles/googletest-release-1.8.0/googletest'
run_cmd 'make'
run_cmd 'sudo mkdir -p /usr/local/Cellar/gtest'
run_cmd 'sudo cp ~/Github/dotfiles/googletest-release-1.8.0/googletest/build/libgtest.a /usr/local/Cellar/gtest/'
run_cmd 'sudo ln -snf /usr/local/Cellar/gtest/libgtest.a /usr/local/lib/libgtest.a'
run_cmd 'sudo cp -r ~/Github/dotfiles/googletest-release-1.8.0/googletest/include /usr/local/Cellar/gtest/'
run_cmd 'ln -snf ../Cellar/gtest/include/gtest /usr/local/include/gtest'


print 'Removing Gtest source'
run_cmd 'cd ~/Github/dotfiles'
run_cmd 'rm -rf release-1.8.0.zip googletest-release-1.8.0'
run_cmd 'cd scripts'
