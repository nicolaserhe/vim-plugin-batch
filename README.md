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

> * [~/.vimrc][82]是vim的配置文件,可根据需求进行修改


## 插件列表

| 插件                                | 说明                                                                           |
| -------                             | -----                                                                          |
| [NerdTree][6]                       | 代码资源管理器                                                                 |
| [vim-nerdtree-syntax-highlight][52] | NerdTree文件类型高亮                                                           |
| [nerdtree-git-plugin][53]           | NerdTree显示git状态                                                            |
| [vim-devicons][15]                  | 显示文件类型图标                                                               |
| [Airline][8]                        | 可以取代[powerline][9]的状态栏美化插件                                         |
| [auto-pairs][10]                    | 自动补全引号、圆括号、花括号等                                                 |
| [LeaderF][56]                       | 更强大的文件的模糊搜索工具                                                     |
| [ack][62]                           | 强大的文本搜索工具                                                             |
| [vim-surround][16]                  | 自动增加、替换配对符的插件                                                     |
| [vim-commentary][17]                | 快速注释代码插件                                                               |
| [vim-repeat][18]                    | 重复上一次操作                                                                 |
| [vim-endwise][19]                   | if/end/endif/endfunction补全                                                   |
| [tabular][20]                       | 代码、注释、表格对齐                                                           |
| [vim-easymotion][23]                | 强大的光标快速移动工具，强大到颠覆你的插件观                                   |
| [incsearch.vim][24]                 | 模糊字符搜索插件                                                               |
| [vim-fugitive][36]                  | 集成Git                                                                        |
| [vim-slash][50]                     | 优化搜索，移动光标后清除高亮                                                   |
| [vim-smooth-scroll][60]             | 让翻页更顺畅                                                                   |


| [dracula/vim][1]|dracula 主题 |
| [prabirshrestha/asyncomplete-lsp.vim"
| [prabirshrestha/asyncomplete.vim"
| [prabirshrestha/vim-lsp"
| [mattn/vim-lsp-settings"
| [preservim/nerdtree"
| [tiagofumo/vim-nerdtree-syntax-highlight"
| [Xuyuanp/nerdtree-git-plugin"
| [jiangmiao/auto-pairs"                                  # 关于括号对的插件
| [yggdroot/indentline"                                   # 显示缩进
| [luochen1990/rainbow"                                   # 彩虹括号插件
| [godlygeek/tabular"                                     # 处理表格的插件
| [vim-airline/vim-airline"                               # 底部和顶部buffer状态栏的插件
| [ton/vim-alternate"                                     # 在.c和.h文件之间切换的插件
| [tpope/vim-commentary"                                  # 注释插件
| [octol/vim-cpp-enhanced-highlight"                      # cpp高亮插件
| [ryanoasis/vim-devicons"                                # 为文件添加图标
| [tpope/vim-endwise"                                     # 自动添加特殊结构的结束符号，比如shell中if的fi
| [vim-utils/vim-man"                                     # 增强man手册插件
| [junegunn/vim-peekaboo"                                 # 输入双引号的时候显示当前的宏
| [junegunn/vim-slash"                                    # 增强缓冲区搜索体验插件
| [tpope/vim-surround"                                    # 给选中的字符串加外部括号对的插件
| [bronson/vim-trailing-whitespace"                       # 将行尾空白字符标记为红色
| [Yggdroot/LeaderF"
| [airblade/vim-gitgutter"
| [tpope/vim-fugitive"


## 快捷键

以下是部分快捷键，可通过vimplus的`<leader>h`命令查看[vimplus帮助文档][59]。

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

- **`vimplus怎么安装新插件？`**

    编辑[~/.vimrc.custom.plugins][83]，添加自定义插件。

- **`vimplus怎么添加自定义配置？`**

    编辑[~/.vimrc.custom.config][84]，添加自定义配置。

- **`vimplus安装脚本会在自己电脑上安装哪些软件？`**

    网络良好情况下，vimplus只需30分钟左右即可将vim cpp环境配置好，vimplus真正的做到了一键配置，不让用户操心。vimplus会安装一些必备软件，比如说python、cmake、gcc、fontconfig等，vimplus也考虑到了有些系统的vim不支持python，它会自动去下载vim源码将python支持编译进去，vimplus也会安装nerd-font不让vim显示出现乱码，最最重要的是vimplus实现了ycm自动编译安装，给折腾了几天ycm都没有安装好的用户带来了新的希望，而且vimplus也支持macos和linux众多发行版，让linux发烧友频繁切换发行版而不用操心vim环境配置。最后说了这么多，不如看[vimplus安装脚本][78]来的直接:smile:。

- **`启动vim报错：RequestsDependencyWarning: Old version of cryptography ([1, 2, 3]) may cause slowdown.`**

    可以尝试将cryptography删掉，具体见[issues #208][81]。

- **`vimplus不支持目前用户正在使用的系统怎么办？`**

    可以给作者提[Issues][39]，或者自己fork vimplus来修改，并提交pr，贡献自己的一份力量。

- **`安装vimplus后Airline等插件有乱码，怎么解决？`**

    linux和mac系统需设置终端字体为`Droid Sans Mono Nerd Font`。

- **`以上没有我遇到的问题怎么办？`**

    您可以通过上网找解决方法，或提[Issues][39]，也可以通过加QQ`787280310`、发邮件方式`787280310@qq.com`一起讨论解决方法。


## License

This software is licensed under the [MIT license][75]. © 2024 Changyi Guo


  [1]: https://github.com/nicolaserhe/vim-plugin-batch/blob/master/Screenshot.png
  [3]: https://brew.sh/
  [4]: https://github.com/junegunn/vim-plug
  [5]: https://github.com/Valloric/YouCompleteMe
  [6]: https://github.com/preservim/nerdtree
  [8]: https://github.com/vim-airline/vim-airline
  [9]: https://github.com/powerline/powerline
  [10]: https://github.com/jiangmiao/auto-pairs
  [12]: https://github.com/ctrlpvim/ctrlp.vim
  [13]: https://github.com/preservim/tagbar
  [14]: https://github.com/vim-scripts/taglist.vim
  [15]: https://github.com/ryanoasis/vim-devicons
  [16]: https://github.com/tpope/vim-surround
  [17]: https://github.com/tpope/vim-commentary
  [18]: https://github.com/tpope/vim-repeat
  [75]: https://github.com/nicolaserhe/vim-plugin-batch/LICENSE
  [76]: https://blog.csdn.net/wang73ying/article/details/82491993
  [77]: https://blog.csdn.net/liuyangbo121/article/details/82971736
  [78]: https://github.com/chxuan/vimplus/blob/master/install.sh
  [79]: https://hub.docker.com/r/chxuan/ubuntu-vimplus
  [80]: https://github.com/zhoumengkang
  [81]: https://github.com/chxuan/vimplus/issues/208
  [82]: https://github.com/chxuan/vimplus/blob/master/.vimrc
  [83]: https://github.com/chxuan/vimplus/blob/master/.vimrc.custom.plugins
  [84]: https://github.com/chxuan/vimplus/blob/master/.vimrc.custom.config
  [85]: https://github.com/zibraque
  [86]: https://github.com/gfreewind
  [87]: https://termux.com/
  [88]: https://github.com/wh656325437
  [89]: https://github.com/luguifang
  [90]: https://github.com/liyewen521
  [91]: https://github.com/xht19980305

