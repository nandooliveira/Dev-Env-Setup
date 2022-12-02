#!/bin/bash

git clone git@github.com:nandooliveira/Dev-Env-Setup.git ~/Dev-Env-Setup

pushd ~/Dev-Env-Setup

# TMux
rm -rf ~/.tmux.conf
ln -s "$(pwd)/.tmux.conf" ~/.tmux.conf

# NVIM
rm -rf ~/.config/nvim/init.vim
ln -s "$(pwd)/init.vim" ~/.config/nvim/init.vim
## install plugins
nvim +silent  +PlugInstall +qall

# setup global gitignore
rm -rf ~/.gitignore
ln -s "$(pwd)/.gitignore" ~/.gitignore
git config --global core.excludesFile '~/.gitignore'

# setup global gitconfig
rm -rf ~/.gitconfig
ln -s "$(pwd)/.gitconfig" ~/.gitconfig

# install fonts
cp fonts/* ~/Library/Fonts/

git config --global core.excludesfile ~/.gitignore
