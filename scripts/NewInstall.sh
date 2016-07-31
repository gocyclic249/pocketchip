#!/bin/bash

sudo apt-get update && sudo apt-get upgrade 

sudo apt-get install vim stow acpitool acpid tmux

chsh -s /bin/zsh


curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > neo.sh

sh ./neo.sh

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm -rf ~/.zshrc



cd ~/dotfiles

stow vim
stow zsh
stow tmux

mkdir ~/.ssh
chmod 700 ~/.ssh
ssh-keygen -t rsa -b 4096

cd ~/

git clone https://github.com/powerline/fonts.git

sh ~/fonts/install.sh
