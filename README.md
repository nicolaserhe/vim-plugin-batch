vim-plugin-batch
===============================================

![Screenshot][1]

## Installation

    git clone https://github.com/nicolaserhe/vim-plugin-batch  ~/vim-plugin-batch
    cd ~/vim-plugin-batch
    ./install.sh


## 设置Nerd Font

为防止乱码，需设置终端字体为`Droid Sans Mono Nerd Font`。


## 下载所需依赖

leaderF插件中查找函数需要用到`ctags`,查找单词引用需要`global`。


## 下载语言服务器协议(lsp)

不同语言的Lsp不会自动下载,需要手动下载,下载Lsp的方法是使用vi打开文件,在命令行模式下执行`LspInstallServer`

    :lspInstallServer


## Update

    cd ~/vim-plugin-batch && ./update.sh


## Uninstall

    cd ~/vim-plugin-batch && ./uninstall.sh


## 自定义

> * [~/.vimrc][28]是vim的配置文件,可根据需求进行修改


## 插件列表

#### 常规插件

| 插件 | 说明 |
|--|--|
| [dracula/vim][2] | dracula 主题 |
| [preservim/nerdtree][3] | 代码资源管理器 |
| [tiagofumo/vim-nerdtree-syntax-highlight][4] | NerdTree文件类型高亮 |
| [Xuyuanp/nerdtree-git-plugin][5] | NerdTree显示git状态 |
| [jiangmiao/auto-pairs][6] | 自动补全引号、圆括号、花括号等 |
| [yggdroot/indentline][7] | 显示缩进 |
| [luochen1990/rainbow][8] | 彩虹括号插件 |
| [godlygeek/tabular][9] | 代码、注释、表格对齐 |
| [ryanoasis/vim-devicons][10] | 显示文件类型图标 |
| [vim-airline/vim-airline][11] | 状态栏美化 |
| [Yggdroot/LeaderF][12] | 模糊搜索 |
| [tpope/vim-surround][13] | 自动增加、替换配对符的插件 |
| [tpope/vim-commentary][14] | 注释代码 |
| [tpope/vim-endwise][15] | if/end/endif/endfunction补全 |
| [junegunn/vim-slash][16] | 移动光标后清除高亮 |
| [ton/vim-alternate][17] | 在.c和.h文件之间切换 |
| [octol/vim-cpp-enhanced-highlight][18] | cpp代码高亮 |
| [vim-utils/vim-man][19] | 增强man手册 |
| [junegunn/vim-peekaboo][20] | 输入双引号的时候显示所有宏内容 |
| [bronson/vim-trailing-whitespace][21] | 将行尾空白字符标记为红色 |
| [airblade/vim-gitgutter][22] | 集成Git |
| [tpope/vim-fugitive][23] | | Git |
| [prabirshrestha/asyncomplete-lsp.vim][24] | Lsp补全  |
| [prabirshrestha/asyncomplete.vim][25] | 代码补全 |
| [prabirshrestha/vim-lsp][26] | Lsp客户端 |
| [mattn/vim-lsp-settings][27] | Lsp下载 |


## 快捷键

以下是插件的部分快捷键，可通过`:HelpFile`命令查看[help.md][29]。

| 快捷键 | 说明 |
|--|--|
| `\` | Leader Key |
| `<leader>n` | 打开/关闭代码资源管理器 |
| `<leader>f` | 查看当前文件函数列表 |
| `<leader>t` | 查看当前文件函数和类列表 |
| `<leader>a` | .h .c 文件切换 |
| `<leader>F` | 查找当前目录下的文件 |
| `<leader>b` | 查找当前buffer中的文件 |
| `<leader>d` | 转到函数或变量定义 |
| `<leader>D` | 转到函数或变量声明 |
| `<leader>r` | 转到函数或变量的下一次引用 |
| `<leader>R` | 转到函数或变量的上一次引用 |
| `<leader>e` | 转到下一处错误点 |
| `<leader>E` | 转到上一次错误点 |
| `<leader>Wa` | 转到下一次警告点 |
| `<leader>wa` | 转到上一次警告点 |
| `<leader>s` | 在整个项目中显示光标下单词被引用的地方 |
| `<leader><space>` | 删除当前文件末尾处的空白字符 |
| `<leader>m` | 打开当前光标下单词的man手册 |

如果执行`<leader>s`出现错误,或者查找不准确,可以在命令行模式下执行`Leaderf gtags --update`

    :Leaderf gtags --update


## FAQ

- **`vim-plugin-batch安装新插件`**

    编辑[~/.vimrc][28]，添加自定义插件。

- **`vim-plugin-batch安装后会安装的依赖`**

    todo

- **`Airline等插件乱码`**

    linux和mac系统需设置终端字体为`Droid Sans Mono Nerd Font`。

- **`其它问题`**

    提[Issues][39]，或者发送邮件,邮箱地址:`nicolaserhe@outlook.com`。


## License

This software is licensed under the [MIT license][30]. © 2024 Changyi Guo


  [1]: https://github.com/nicolaserhe/vim-plugin-batch/blob/master/Screenshot.png
  [2]: https://github.com/dracula/vim
  [3]: https://github.com/preservim/nerdtree
  [4]: https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
  [5]: https://github.com/Xuyuanp/nerdtree-git-plugin
  [6]: https://github.com/jiangmiao/auto-pairs
  [7]: https://github.com/yggdroot/indentline
  [8]: https://github.com/luochen1990/rainbow
  [9]: https://github.com/godlygeek/tabular
  [10]: https://github.com/ryanoasis/vim-devicons
  [11]: https://github.com/vim-airline/vim-airline
  [12]: https://github.com/Yggdroot/LeaderF
  [13]: https://github.com/tpope/vim-surround
  [14]: https://github.com/tpope/vim-commentary
  [15]: https://github.com/tpope/vim-endwise
  [16]: https://github.com/junegunn/vim-slash
  [17]: https://github.com/ton/vim-alternate
  [18]: https://github.com/octol/vim-cpp-enhanced-highlight
  [19]: https://github.com/vim-utils/vim-man
  [20]: https://github.com/junegunn/vim-peekaboo
  [21]: https://github.com/bronson/vim-trailing-whitespace
  [22]: https://github.com/airblade/vim-gitgutter
  [23]: https://github.com/tpope/vim-fugitive
  [24]: https://github.com/prabirshrestha/asyncomplete-lsp.vim
  [25]: https://github.com/prabirshrestha/asyncomplete.vim
  [26]: https://github.com/prabirshrestha/vim-lsp
  [27]: https://github.com/mattn/vim-lsp-settings
  [28]: https://github.com/nicolaserhe/vim-plugin-batch/.vimrc
  [29]: https://github.com/nicolaserhe/vim-plugin-batch/help.md
  [30]: https://github.com/nicolaserhe/vim-plugin-batch/LICENSE

