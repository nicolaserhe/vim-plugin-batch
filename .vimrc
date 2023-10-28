"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible         " 设置不兼容原始vi模式
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
set cmdheight=2          " 设置命令行的高度
set showcmd              " select模式下显示选中的行数
set ruler                " 总是显示光标位置
set laststatus=2         " 总是显示状态栏
set number               " 开启行号显示
set cursorline           " 高亮显示当前行
set ttimeoutlen=0        " 设置<ESC>键响应时间

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set smarttab             " 在行和段开始处使用制表符
set wrap                 " 设置折行
set backspace=2          " 使用回车键正常处理indent,eol,start等
set sidescroll=10        " 设置向右滚动字符数
set foldenable           " 设置折叠代码

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感
set smartcase           " 设置智能大小写

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030


" load vim default plugin
runtime macros/matchit.vim

" 复制当前选中到系统剪切板
vmap <leader><leader>y "+y

" 将系统剪切板内容粘贴到vim
nnoremap <leader><leader>p "+p

" 将F4绑定为:q
nnoremap <f4> :q<cr>

" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

" 主题设置
set background=dark
let g:onedark_termcolors=256
colorscheme dracula

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline
let g:airline_theme="dracula"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1                                " 设置开启buffer样式
let g:airline#extensions#tabline#left_sep = ''                             " 设置左边底部样式
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''                            " 设置右边底部样式
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'unique_tail'

" rainbow
let g:rainbow_active = 1                                                    " 启用彩虹括号

" vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1                                         " 启用类高亮
let g:cpp_member_variable_highlight = 1                                     " 启用成员变量高亮
let g:cpp_class_decl_highlight = 1                                          " 启用在声明中类高亮
let g:cpp_posix_standard = 1                                                " 启用posix的高亮
let g:cpp_experimental_template_highlight = 1                               " 启用模板的高亮，当文件很大时，会导致卡顿

" vim-alternate
let g:AlternatePaths = ['.', '..']                                          " 设置去那些目录下找寻头文件
nnoremap <leader>a :Alternate<cr>

" vim-trailing-whitespace
map <leader><space> :FixWhitespace<cr>                                      " 绑定leader+space为删除行尾空格

" vim-lsp
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>   pumvisible() ? asyncomplete#close_popup() : "\<cr>"

nnoremap <leader>d :LspkDefinition<cr>
nnoremap <leader>wd :LspPeekDefinition<cr>

nnoremap <leader>D :LspDeclaration<cr>
nnoremap <leader>wD :LspPeekDeclaration<cr>

" tagbar
nnoremap <silent> <leader>t :TagbarOpenAutoClose<cr>

" auto-pair
let g:AutoPairsShortcutJump = '<F1>'

" nerdtree
nnoremap <leader>n :NERDTreeToggle<cr>
" 为文件名增加颜色
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" 显示tab和空格
" set list
" set listchars:tab:\|-,space:•
" highlight specialkey guifg=darkgrey ctermfg=darkgrey

" 禁用vim-indent-guides插件
" let g:indentLine_enabled = 0


set tags=tags;
set autochdir

