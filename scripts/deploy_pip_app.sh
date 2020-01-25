#! /bin/bash
source ./utils.sh

print 'Deploy pip app'
run_cmd 'python -m pip install "python-language-server [all]"'
