#!/bin/bash


#######################################################################
# 变量初始化
#######################################################################
HOME=/home/gcy/tmp
github="https://github.com"
vim_pack=""$HOME"/.vim/pack"

themes=(
    "dracula/vim"
)

completes=(
    "prabirshrestha/asyncomplete-lsp.vim"
    "prabirshrestha/asyncomplete.vim"
    "prabirshrestha/vim-lsp"
    "mattn/vim-lsp-settings"
)


nerdtrees=(
    "preservim/nerdtree"
    "tiagofumo/vim-nerdtree-syntax-highlight"
)

plugins=(
    "jiangmiao/auto-pairs"
    "chrisbra/changesPlugin"
    "yggdroot/indentline"
    "luochen1990/rainbow"
    "godlygeek/tabular"
    "preservim/tagbar"
    "vim-airline/vim-airline"
    "ton/vim-alternate"
    "tpope/vim-commentary"
    "octol/vim-cpp-enhanced-highlight"
    "ryanoasis/vim-devicons"
    "tpope/vim-endwise"
    "vim-utils/vim-man"
    "junegunn/vim-peekaboo"
    "junegunn/vim-slash"
    "tpope/vim-surround"
    "bronson/vim-trailing-whitespace"
)

# sudo apt update
# sudo apt vim
# sudo apt install gcc


#######################################################################
# 清理.vim和.vimrc
#######################################################################

if [ -d "$HOME"/.vim ]
then
    rm -rf "$HOME"/.vim
fi

if [ -f "$HOME"/.vimrc ]
then
    rm -rf "$HOME"/.vimrc
fi

cp .vimrc "$HOME"/
mkdir -p "$HOME"/.vim/pack

#######################################################################
# 插件下载
#######################################################################

# 创建保存插件的目录
mkdir -p "$vim_pack"/theme/start
mkdir -p "$vim_pack"/complete/start
mkdir -p "$vim_pack"/nerdtree/start
mkdir -p "$vim_pack"/plugin/start

# git clone 插件
cd "$vim_pack"/theme/start
for item in "${themes[@]}"
do
    git clone "$github"/"$item" ./dracula
done

cd "$vim_pack"/complete/start
for item in "${completes[@]}"
do
    git clone "$github"/"$item"
done

cd "$vim_pack"/nerdtree/start
for item in "${nerdtrees[@]}"
do
    git clone "$github"/"$item"
done

cd "$vim_pack"/plugin/start
for item in "${plugins[@]}"
do
    git clone "$github"/"$item"
done
