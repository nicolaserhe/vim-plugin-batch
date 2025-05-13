"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible         " 设置不兼容原始vi模式
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
set cmdheight=2          " 设置命令行的高度
set showcmd              " 待决模式下显示输入的命令
set number               " 开启行号显示
set cursorline           " 高亮显示当前行
set ttimeoutlen=0        " 设置<ESC>键响应时间


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype indent on       " 自适应不同语言的智能缩进
set tabstop=4            " 设置制表符占用空白字符数
set shiftwidth=4         " 设置缩进占用空白字符数
set softtabstop=4        " 设置tab键占用空白字符数
set expandtab            " 将制表符扩展为空格


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " 命令行下自动补全显示菜单
set completeopt-=preview " 补全时不显示窗口，只显示补全列表


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 设置忽略大小写
set smartcase           " 设置智能大小写


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set hidden              " 可以在不保存当前buffer的情况下，切换buffer
set autoread            " 文件在vim之外修改过，自动重新读入
set confirm             " 在处理未保存或只读文件的时候，弹出确认


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件跳转设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap ]t :tabnext<cr>
nnoremap [t :tabprevious<cr>
nnoremap ]b :bnext<cr>
nnoremap [b :bprevious<cr>
nnoremap ]q :cnext<cr>
nnoremap [q :cprevious<cr>
nnoremap ]a :next<cr>
nnoremap [a :previous<cr>


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

" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

" 清除缓冲区
command! ClearBuffer bufdo if index(argv(), bufname()) < 0 | bd | endif

" 设置gvim字体
set guifont=ComicShannsMono\ Nerd\ Font\ 12


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" dracula.vim
set background=dark
let g:onedark_termcolors=256
colorscheme dracula
set t_RV=


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


" vim-lsp
let g:lsp_diagnostics_enabled = 1                                           " disable diagnostics support


" nerdtree
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1


" vim-gitgutter
set updatetime=100
set foldtext=gitgutter#fold#foldtext()

" 将改变行数的其结果嵌入到状态行中
function! GitStatus()
    let [a,m,r] = GitGutterGetHunkSummary()
    return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}


" LeaderF
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'


"vim-startify
" Most used options:~
let g:startify_bookmarks = [{'c': '~/.vimrc'}, '~/.zshrc']
let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 0
let g:startify_custom_header = [
        \ '                                 ________  __ __',
        \ '            __                  /\_____  \/\ \\ \',
        \ '    __  __ /\_\    ___ ___      \/___//''/''\ \ \\ \',
        \ '   /\ \/\ \\/\ \ /'' __` __`\        /'' /''  \ \ \\ \_',
        \ '   \ \ \_/ |\ \ \/\ \/\ \/\ \      /'' /''__  \ \__ ,__\',
        \ '    \ \___/  \ \_\ \_\ \_\ \_\    /\_/ /\_\  \/_/\_\_/',
        \ '     \/__/    \/_/\/_/\/_/\/_/    \//  \/_/     \/_/',
        \ ]
let g:startify_enable_special = 0
let g:startify_lists = [
            \ { 'type': 'sessions',  'header': ['   Sessions']       },
            \ { 'type': 'files',     'header': ['   MRU']            },
            \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
            \ { 'type': 'commands',  'header': ['   Commands']       },
            \ ]
let g:startify_skiplist = []
let g:startify_update_oldfiles = 1

" Misc options:~
let g:startify_commands = []
let g:startify_custom_indices = ['f', 'g', 'h']
let g:startify_files_number = 5
let g:startify_fortune_use_unicode = 1
let g:startify_padding_left = 3
let g:startify_skiplist_server = [ 'GVIM' ]

" Sessions:~
let g:startify_session_autoload = 1
let g:startify_session_before_save = []
let g:startify_session_delete_buffers = 1
let g:startify_session_dir = '~/.vim/session'
let g:startify_session_number = 9
let g:startify_session_persistence = 1
let g:startify_session_remove_lines = []
let g:startify_session_savecmds = []
let g:startify_session_savevars = [
       \ 'g:startify_session_savevars',
       \ 'g:startify_session_savecmds',
       \ 'g:random_plugin_use_feature'
       \ ]
let g:startify_session_sort = 0


" 插件命令的映射
nnoremap <leader>a :Alternate<cr>
nnoremap <leader><space> :FixWhitespace<cr>
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr>   pumvisible() ? asyncomplete#close_popup() : "\<cr>"
nnoremap <leader>d :LspDefinition<cr>
nnoremap <leader>D :LspDeclaration<cr>
nnoremap ]r :LspNextReference<cr>
nnoremap [r :LspPreviousReference<cr>
nnoremap ]e :LspNextError<cr>
nnoremap [e :LspPreviousError<cr>
nnoremap ]w :LspNextWarning<cr>
nnoremap [w :LspPreviousWarning<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
command! File :Leaderf! file<cr>
command! FileWin :Leaderf! file --popup<cr>
command! Buffer :Leaderf! buffer<cr>
command! BufferWin :Leaderf! buffer --popup<cr>
command! Function :Leaderf! function <cr>
command! FunctionWin :Leaderf! function --popup<cr>
command! BufTag :Leaderf! bufTag <cr>
command! BufTagWin :Leaderf! bufTag --popup<cr>
noremap <leader>s :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
nnoremap <leader>m :Man <C-R><C-W><cr>
command! HelpFile :edit ~/.vim/help.md

