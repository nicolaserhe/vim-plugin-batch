#!/bin/bash

sudo apt update
sudo apt vim
sudo apt install gcc

if [ -d ~/.vim ]
then
    mv ~/.vim ~/.vim.bk
    mv ./.vim ~/
else
    mv ./.vim ~/.vim
fi

if [ -f ~/.vimrc ]
then
    mv ./.vimrc ~/vimrc.bk
    mv ./.vimrc ~/
else
    mv ./.vimrc ~/.vimrc
fi

vim -E -c ":LspInstallServer | :qall"

