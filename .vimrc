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
"  general
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }
" shortcuts
let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf function %s", "")<CR><CR>
noremap <leader>fr :LspReferences<CR>
noremap <leader>fq :Leaderf quickfix<CR>
" ripgrep
noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

" --- vim-startify ---
"  会话管理设置
let g:startify_enable_special = 0               " 不显示 <empty buffer> 和 <quit>
let g:startify_session_dir = '~/.vim/session'   " 会话保存目录
let g:startify_session_autoload = 1             " 自动加载会话
let g:startify_session_persistence = 1          " 会话持久化：Vim退出时自动更新
let g:startify_session_delete_buffers = 1       " 加载/关闭会话时删除所有 buffers（避免残留）
let g:startify_session_number = 20              " 显示的最大会话数
let g:startify_session_sort = 1                 " 按修改时间排序（最新的在前）
" MRU 文件设置
let g:startify_files_number = 5                 " 最多显示 5 个最近文件
" 版本控制设置
let g:startify_change_to_vcs_root = 1           " 切换到版本控制根目录
" 自定义列表顺序：先 Sessions，再 MRU 文件
let g:startify_lists = [
      \ { 'type': 'sessions', 'header': ['   Sessions'] },
      \ { 'type': 'files',    'header': ['   MRU'] },
      \ ]
" 会话保存前的清理操作
let g:startify_session_before_save = [
      \ 'silent! tabdo NERDTreeClose',
      \ 'call DeleteOutsideBuffers()',
      \ ]
" 函数：删除不在当前目录及子目录的 buffer
function! DeleteOutsideBuffers()
    let l:cwd = getcwd()
    for buf in getbufinfo({'buflisted':1})
        if empty(buf.name)
            continue
        endif
        " 不在当前目录或子目录
        if stridx(buf.name, l:cwd) != 0
            execute 'silent! bdelete ' . buf.bufnr
        endif
    endfor
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件命令映射
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>a :Alternate<cr>
nnoremap <leader><space> :FixWhitespace<cr>
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr>   pumvisible() ? asyncomplete#close_popup() : "\<cr>"
nnoremap gd :LspDefinition<cr>
nnoremap gD :LspDeclaration<cr>
nnoremap gr :LspReferences<cr>
nnoremap <leader>lr :LspRename<cr>
nnoremap <leader>lh :LspHover<cr>
nnoremap gt :LspTypeDefinition<cr>
nnoremap gi :LspImplementation<cr>
nnoremap ]r :LspNextReference<cr>
nnoremap [r :LspPreviousReference<cr>
nnoremap ]e :LspNextError<cr>
nnoremap [e :LspPreviousError<cr>
nnoremap ]w :LspNextWarning<cr>
nnoremap [w :LspPreviousWarning<cr>
nnoremap <leader>n :NERDTreeToggle<cr>


nnoremap <leader>m :Man <C-R><C-W><cr>
command! HelpFile :edit ~/.vim/help.md

let g:go_gopls_enabled = 1


" 保存上一次插入模式输入法
let g:last_input_method = 'xkb:us::eng'

" 进入插入模式时切回之前的输入法
autocmd InsertEnter * call system('ibus engine ' . g:last_input_method)

" 离开插入模式时切英文，并保存当前输入法
autocmd InsertLeave * let g:last_input_method = system('ibus engine')
autocmd InsertLeave * call system('ibus engine xkb:us::eng')


" 函数：预览当前目录下所有 OpenAPI 文件
" 函数：预览当前 OpenAPI 文件
function! PreviewOpenAPIFile()
  " 保存当前文件
  if &modified
    write
  endif

  " 当前文件路径
  let file = expand('%')

  " 输出 HTML 文件路径
  let out = '/tmp/openapi.html'

  " 调用 Redocly CLI 生成 HTML
  exec '!npx @redocly/cli build-docs ' . file . ' -o ' . out

  " 打开浏览器 (Linux/Chrome)
  exec '!google-chrome ' . out . ' &'
endfunction

" 绑定快捷键 <leader>o
nnoremap <leader>o :call PreviewOpenAPIFile()<CR>

