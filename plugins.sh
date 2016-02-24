#!/bin/bash

sudo apt-get update && sudo apt-get upgrade 

sudo apt-get install vim tmux zsh

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh

sh ./install.sh

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
