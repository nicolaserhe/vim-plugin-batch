#!/bin/bash


#######################################################################
# 变量初始化
#######################################################################
github="https://github.com"
vim_pack=""$HOME"/.vim/pack"
work_dir="$PWD"

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
    "Xuyuanp/nerdtree-git-plugin"
)

plugins=(
    "jiangmiao/auto-pairs"                                  # 关于括号对的插件
    "yggdroot/indentline"                                   # 显示缩进
    "luochen1990/rainbow"                                   # 彩虹括号插件
    "godlygeek/tabular"                                     # 处理表格的插件
    "vim-airline/vim-airline"                               # 底部和顶部buffer状态栏的插件
    "ton/vim-alternate"                                     # 在.c和.h文件之间切换的插件
    "tpope/vim-commentary"                                  # 注释插件
    "octol/vim-cpp-enhanced-highlight"                      # cpp高亮插件
    "ryanoasis/vim-devicons"                                # 为文件添加图标
    "tpope/vim-endwise"                                     # 自动添加特殊结构的结束符号，比如shell中if的fi
    "vim-utils/vim-man"                                     # 增强man手册插件
    "junegunn/vim-peekaboo"                                 # 输入双引号的时候显示当前的宏
    "junegunn/vim-slash"                                    # 增强缓冲区搜索体验插件
    "tpope/vim-surround"                                    # 给选中的字符串加外部括号对的插件
    "bronson/vim-trailing-whitespace"                       # 将行尾空白字符标记为红色
    "Yggdroot/LeaderF"
    "mhinz/vim-startify"
)

gits=(
    "airblade/vim-gitgutter"
)

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
mkdir -p "$vim_pack"/git/start

# git clone 插件
cd "$vim_pack"/theme/start
for item in "${themes[@]}"
do
    git clone "$github"/"$item"
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

cd "$vim_pack"/gits/start
for item in "${gits[@]}"
do
    git clone "$github"/"$item"
done

# 生成帮助文档
cp $work_dir/help.md ~/.vim
