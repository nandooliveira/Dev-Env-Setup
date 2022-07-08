#!/bin/bash

rm -rf ~/.config/nvim/init.vim
rm -rf ~/.tmux.conf
rm -rf ~/.gitignore

git clone git@github.com:nandooliveira/Dev-Env-Setup.git ~/Dev-Env-Setup

pushd ~/Dev-Env-Setup

ln -s .tmux.conf ~/.tmux.conf
ln -s init.vim ~/.config/nvim/init.vim
ln -s .gitignore ~/.gitignore
