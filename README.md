vim-plugin-batch
===============================================

![Screenshot][1]

## Installation

    git clone https://github.com/nicolaserhe/vim-plugin-batch  ~/vim-plugin-batch
    cd ~/vim-plugin-batch
    ./install.sh


## 设置Nerd Font

为防止乱码，需设置终端字体为`Droid Sans Mono Nerd Font`。


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

以下是部分快捷键，可通过`:helpFile`命令查看[help.md][59]。

| 快捷键              | 说明                                      |
| -------             | -----                                     |
| `\`                 | Leader Key                                |
| `<leader>n`         | 打开/关闭代码资源管理器                   |
| `<leader>t`         | 打开/关闭函数列表                         |
| `<leader>a`         | .h .cpp 文件切换                          |
| `<leader>u`         | 转到函数声明                              |
| `<leader>U`         | 转到函数实现                              |
| `<leader>u`         | 转到变量声明                              |
| `<leader>o`         | 打开include文件                           |
| `<leader>y`         | 拷贝函数声明                              |
| `<leader>p`         | 生成函数实现                              |
| `<leader>w`         | 单词跳转                                  |
| `<leader>f`         | 搜索~目录下的文件                         |
| `<leader>F`         | 搜索当前目录下的文本                      |
| `<leader>g`         | 显示git仓库提交记录                       |
| `<leader>G`         | 显示当前文件提交记录                      |
| `<leader>gg`        | 显示当前文件在某个commit下的完整内容      |
| `<leader>ff`        | 语法错误自动修复(FixIt)                   |
| `<c-p>`             | 切换到上一个buffer                        |
| `<c-n>`             | 切换到下一个buffer                        |
| `<leader>d`         | 删除当前buffer                            |
| `<leader>D`         | 删除当前buffer外的所有buffer              |
| `vim`               | 运行vim编辑器时,默认启动开始页面          |
| `<F5>`              | 显示语法错误提示窗口                      |
| `<F9>`              | 显示上一主题                              |
| `<F10>`             | 显示下一主题                              |
| `<leader>l`         | 按竖线对齐                                |
| `<leader>=`         | 按等号对齐                                |
| `Ya`                | 复制行文本到字母a                         |
| `Da`                | 剪切行文本到字母a                         |
| `Ca`                | 改写行文本到字母a                         |
| `rr`                | 替换文本                                  |
| `<leader>r`         | 全局替换，目前只支持单个文件              |
| `rev`               | 翻转当前光标下的单词或使用V模式选择的文本 |
| `gcc`               | 注释代码                                  |
| `gcap`              | 注释段落                                  |
| `vif`               | 选中函数内容                              |
| `dif`               | 删除函数内容                              |
| `cif`               | 改写函数内容                              |
| `vaf`               | 选中函数内容（包括函数名 花括号）         |
| `daf`               | 删除函数内容（包括函数名 花括号）         |
| `caf`               | 改写函数内容（包括函数名 花括号）         |
| `fa`                | 查找字母a，然后再按f键查找下一个          |
| `<leader>e`         | 快速编辑~/.vimrc文件                      |
| `<leader>s`         | 重新加载~/.vimrc文件                      |
| `<leader>vp`        | 快速编辑~/.vimrc.custom.plugins文件       |
| `<leader>vc`        | 快速编辑~/.vimrc.custom.config文件        |
| `<leader>h`         | 打开vimplus帮助文档                       |
| `<leader>H`         | 打开当前光标所在单词的vim帮助文档         |
| `<leader><leader>t` | 生成try-catch代码块                       |
| `<leader><leader>y` | 复制当前选中到系统剪切板                  |
| `<leader><leader>i` | 安装插件                                  |
| `<leader><leader>u` | 更新插件                                  |
| `<leader><leader>c` | 删除插件                                  |


## FAQ

- **`vim-plugin-batch安装新插件`**

    编辑[~/.vimrc][83]，添加自定义插件。

- **`vim-plugin-batch安装后会安装的依赖`**

    todo

- **`Airline等插件乱码`**

    linux和mac系统需设置终端字体为`Droid Sans Mono Nerd Font`。

- **`其它问题`**

    提[Issues][39]，或者发送邮件,邮箱地址:`nicolaserhe@outlook.com`。


## License

This software is licensed under the [MIT license][75]. © 2024 Changyi Guo


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

