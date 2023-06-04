#! /bin/bash

# git is required

# install tmux & vim, if needed
# apt-get install tmux, vim
# brew install tmux, vim
# apt-cyg install tmux, vim
# pacman -S tmux, vim

cat ./bash_profile >> ~/.bashrc
cat ./tmux.conf >> ~/.tmux.conf
cat ./vimrc >> ~/.vimrc

mkdir ~/.bash
cp git-* ~/.bash

# move docker program aliases
mkdir -p ~/bin
cp ./bin/* ~/bin
