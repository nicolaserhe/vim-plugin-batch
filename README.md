vim-plugin-batch
===============================================

![Screenshot][1]

## Installation
## Linux / MacOS

    git clone https://github.com/nicolaserhe/vim-plugin-batch
    cd vim-plugin-batch
    python3 install.py


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
| [airblade/vim-gitgutter][22] | Git显示 |
| [airblade/vim-fugitive][32] | Git命令 |
| [prabirshrestha/asyncomplete-lsp.vim][24] | Lsp补全  |
| [prabirshrestha/asyncomplete.vim][25] | 代码补全 |
| [prabirshrestha/vim-lsp][26] | Lsp客户端 |
| [mattn/vim-lsp-settings][27] | Lsp下载 |
| [vim-startify][33] | vim启动页面 |


## 快捷键

以下是插件的部分快捷键，可通过`:HelpFile`命令查看[help.md][29]。

| 快捷键 | 说明 |
| -- | -- |
| `\`                       | Leader Key                                |
| `<leader>a`               | .h .c 文件切换                            |
| `<leader><space>`         | 删除当前文件末尾处的空白字符              |
| `<leader>d`               | 转到函数或变量定义                        |
| `<leader>D`               | 转到函数或变量声明                        |
| `]r`                      | 转到函数或变量的下一次引用                |
| `[r`                      | 转到函数或变量的上一次引用                |
| `]e`                      | 转到下一处错误点                          |
| `[e`                      | 转到上一次错误点                          |
| `]w`                      | 转到下一次警告点                          |
| `[w`                      | 转到上一次警告点                          |
| `<leader>n`               | 打开/关闭代码资源管理器                   |
| `:File`                   | 查找当前目录下的文件                      |
| `:Buffer`                 | 查找当前buffer中的文件                    |
| `:Function`               | 查看当前文件函数列表                      |
| `:BufTag`                 | 查看当前文件函数和类列表                  |
| `<leader>s`               | 在整个项目中显示光标下单词被引用的地方    |
| `<leader>m`               | 打开当前光标下单词的man手册               |
| `S{括号对}`               | 用输入的括号对包围可视模式下选中的内容    |
| `gcc`                     | 行注释                                    |
| `gcap`                    | 块注释                                    |
| `:Startify`               | 打开引导页面                              |
| `:SLoad`                  | 加载会话                                  |
| `:SSave`                  | 保存会话                                  |
| `:SDelete`                | 删除会话                                  |
| `:SClose`                 | 关闭会话                                  |

## Git快捷键
| 快捷键 | 说明 |
| -- | -- |
| `]c`                      | 跳转到下一个 hunk                         |
| `[c`                      | 跳转到上一个 hunk                         |
| `<Leader>hs`              | 暂存 hunk                                 |
| `<Leader>hu`              | 撤销暂存 hunk                             |
| `<Leader>hp`              | 预览 hunk                                 |
| `:GitGutterQuickFix`      | 将所有的hunk放入 Quickfix 中              |
| `:GitGutterFold`          | 折叠所有未更改文本段                      |
| `zr`                      | 在 hunk 上方和下方展开 3 行上下文         |
| `:Git difftool -y [args]` | 打开有差异的文件,在新的tab页中            |
| `:Git mergetool -y [args]`| 打开有冲突的文件,在新的tab页中            |
| `:Gclog`                  | 将git的log加载到 quickfix 中              |
| `:Gllog`                  | 将git的log加载到 location 中              |
| `:Gcd [directory]`        | 对于 Git 仓库的根目录切换到指定的 directory |
| `:Glcd [directory]`       | 同上,但是相对于当前窗口切换               |
| `:Gvdiffsplit [object]`   | 比较当前文件的差异                        |
| `:GitGutterDiffOrig`      | 比较当前文件的差异                        |


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

    提[Issues][31]，或者发送邮件,邮箱地址:`nicolaserhe@outlook.com`。


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
  [24]: https://github.com/prabirshrestha/asyncomplete-lsp.vim
  [25]: https://github.com/prabirshrestha/asyncomplete.vim
  [26]: https://github.com/prabirshrestha/vim-lsp
  [27]: https://github.com/mattn/vim-lsp-settings
  [28]: https://github.com/nicolaserhe/vim-plugin-batch/blob/main/.vimrc
  [29]: https://github.com/nicolaserhe/vim-plugin-batch/blob/main/help.md
  [30]: https://github.com/nicolaserhe/vim-plugin-batch/blob/main/LICENSE
  [31]: https://github.com/nicolaserhe/vim-plugin-batch/blob/main/issues
  [32]: https://github.com/tpope/vim-fugitive
  [33]: https://github.com/mhinz/vim-startify

