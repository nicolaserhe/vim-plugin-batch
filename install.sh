#!/bin/bash

sudo apt update
sudo apt vim
sudo apt install gcc

if [ -d ~/.vim ]
then
    rm -rf ~/.vim
else
fi

if [ -f ~/.vimrc ]
then
    rm -rf ~/.vimrc
fi

cp -r .vim ~/
cp .vimrc ~/
vim -E -c ":LspInstallServer | :qall" main.c

