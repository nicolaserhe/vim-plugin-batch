"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible               " 不兼容原始vi模式
filetype on                   " 开启文件类型侦测
filetype plugin on            " 加载对应文件类型插件
syntax enable                 " 语法高亮
syntax on                    " 自动语法高亮
set t_Co=256                 " 支持256色
set cmdheight=2              " 命令行高度
set showcmd                  " 显示部分命令
set number                   " 显示行号
set cursorline               " 高亮当前行
set ttimeoutlen=0            " <ESC>响应时间


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype indent on           " 智能缩进
set tabstop=4                " 制表符宽度
set shiftwidth=4             " 缩进宽度
set softtabstop=4            " Tab键宽度
set expandtab                " 用空格代替制表符


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu                 " 命令行补全菜单
set completeopt-=preview     " 补全时不显示预览窗口


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch                 " 高亮搜索结果
set incsearch                " 实时搜索
set ignorecase               " 搜索忽略大小写
set smartcase                " 智能大小写识别


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup                 " 不备份
set hidden                   " 允许切换未保存buffer
set autoread                 " 外部修改文件自动加载
set confirm                  " 未保存或只读时确认提示


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件跳转快捷键映射
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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 其他设置和命令
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
runtime macros/matchit.vim   " 加载默认插件，增强%匹配功能

" 打开文件自动定位到上次编辑位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

" 清除缓冲区命令
command! ClearBuffer bufdo if index(argv(), bufname()) < 0 | bd | endif

" 设置gvim字体
set guifont=ComicShannsMono\ Nerd\ Font\ 12


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" --- 颜色主题 ---
set background=dark
let g:onedark_termcolors=256
colorscheme dracula
set t_RV=

" --- airline ---
let g:airline_theme="dracula"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'unique_tail'

" --- rainbow ---
let g:rainbow_active = 1

" --- vim-cpp-enhanced-highlight ---
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1

" --- vim-alternate ---
let g:AlternatePaths = ['.', '..']

" --- vim-lsp ---
let g:lsp_diagnostics_enabled = 0

" --- nerdtree ---
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" --- vim-gitgutter ---
set updatetime=100
set foldtext=gitgutter#fold#foldtext()

function! GitStatus()
    let [a,m,r] = GitGutterGetHunkSummary()
    return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

" --- LeaderF ---
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'

" --- vim-startify ---
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
let g:startify_commands = []
let g:startify_custom_indices = ['f', 'g', 'h']
let g:startify_files_number = 5
let g:startify_fortune_use_unicode = 1
let g:startify_padding_left = 3
let g:startify_skiplist_server = [ 'GVIM' ]
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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件命令映射
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

