#! /bin/bash

# git is required

# install tmux & vim, if needed
# apt-get install tmux, vim
# brew install tmux, vim
# apt-cyg install tmux, vim
# pacman -S tmux, vim

cat ./zshrc >> ~/.zshrc
cat ./tmux.conf >> ~/.tmux.conf

./setup_vim.sh
