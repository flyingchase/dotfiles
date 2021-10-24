" 基础设置 base
" 设置行号
set exrc                                                  " exec command in init.vim
set secure                                                " safely do command above
set autochdir                                             " auto change directory
set noexpandtab                                           " use only '\t' as tab
set autoindent
set list                                                  " show hiding char
set listchars=tab:\|\ ,trail:·                            " define tab and space show
set viewoptions=cursor,folds,slash,unix                   " remember where to recover cursor
set tw=0                                                  " text width for automatically wrapping

" set folding paragraph
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc

" keep undo or temp file
set hidden
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif
" set number
" set mouse=a
imap jk <Esc>
 
" 清除搜索后的高亮 clear the highlighted search result
nnoremap <Leader>sc :nohlsearch<CR>
 set cursorline 
" 剪切板共享
" Enable to copy to clipboard for operations like yank, delete, change and put
" http://stackoverflow.com/questions/20186975/vim-mac-how-to-copy-to-clipboard-without-pbcopy
if has('unnamedplus')
  set clipboard^=unnamed
  set clipboard^=unnamedplus
endif

" This enables us to undo files even if you exit Vim.
if has('persistent_undo')
  set undofile
  set undodir=~/.config/vim/tmp/undo//
endif

let mapleader = ';'


"==========================================

" 文件格式设置
set nocompatible
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

" 文件类型设置
filetype on
filetype plugin on
filetype indent on



set ttimeoutlen=0
set updatetime=300
set splitbelow splitright
set conceallevel=0

set autoindent
set smartindent
set cindent
set cinoptions=g0,:0,N-s,(0

set noexpandtab
set foldmethod=indent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab

set wrap linebreak nolist
set shortmess+=c
set whichwrap+=<,>,h,l
set virtualedit=block
set backspace=2
set sidescroll=10

set hlsearch
set incsearch
set ignorecase
set smartcase

set autoread
set autowrite
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.nvim/undodir
set undofile
nnoremap c "_c



" vim-interface
set t_Co=256
set termguicolors
set noeb
set mouse=a
set hidden
set showcmd
set ruler
set cursorline
set cursorcolumn
set number relativenumber
set cmdheight=2
set laststatus=2
set showtabline=2
set noshowmode
set nofoldenable
set signcolumn=yes

" Command Completion
set wildmenu
set wildmode=longest:full,full
set completeopt=menuone,noselect

" ==========================================
" ==========================================
" 定义快捷键到行首和行尾
" 在 normal 和 visual 模式下移动到行首行尾
map H ^
map L $
"==========================================

nmap <Leader>i <C-]>
" 定义快速跳转回退
nmap <Leader>o <C-t>




"==============================================================================
call plug#begin('~/.vim/plugged')
" 项目文件管理
Plug 'scrooloose/nerdtree'
" 使得 nerdtree 的 tab 更加友好
Plug 'jistr/vim-nerdtree-tabs'

" 可以在导航目录中看到 git 版本信息
Plug 'Xuyuanp/nerdtree-git-plugin'

" 可以在文档中显示 git 信息
Plug 'airblade/vim-gitgutter'
" 显示git分支
Plug 'tpope/vim-fugitive'

"状态栏美化
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" tagbar 类似 goland function tree tagbar 使用 Ctags 对文件进行解析
" 依赖 ctags 使用 brew 安装
" brew tap universal-ctags/universal-ctags
" brew install --HEAD universal-ctags
Plug 'majutsushi/tagbar'

" 开盘美化插件  记录最近编辑的文件 通过数字编号即可快速打开
Plug 'mhinz/vim-startify'


" theme 
" colorscheme neodark
Plug 'KeitaNakamura/neodark.vim'
Plug 'yeddaif/neovim-purple'
" go 插件 要求 gopls 安装 
Plug 'fatih/vim-go'


" 代码补全插件
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 错误处理插件 coc.vim具有这个功能 但是 ale 更加强大
" 注意处理 ale 与 coc 的冲突
Plug 'dense-analysis/ale'


" 注释插件
" gcc 快速注释当前行
" gc 注释所选代码块
Plug 'tpope/vim-commentary'

" 页面可视化区块的快速移动光标 
Plug 'easymotion/vim-easymotion'

" 对{[("''")]}进行 CRUD
Plug 'tpope/vim-surround'
" 成对括号和缩进处理
Plug 'jiangmiao/auto-pairs'

" 快速生成代码块 forr 生成循环
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" 模糊匹配插件 系统也需要 先 brew fzf 使用:Ag 需要 brew the_sliver_searcher

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" 复制高亮插件
Plug 'machakann/vim-highlightedyank'

call plug#end()

"==============================================================================



"==============================================================================
" 项目管理 nerdtree 设置

nnoremap <leader>v :NERDTreeFind<cr>
highlight NERDTreeFile ctermfg=14
nnoremap <leader>g :NERDTreeToggle<cr>

"==============================================================================



"==============================================================================
" 右侧 tagbar 插件 设置 
nnoremap <leader>t :TagbarToggle<cr>
let g:tagbar_type_go = {
            \ 'ctagstype' : 'go',
            \ 'kinds'     : [
            \ 'p:package',
            \ 'i:imports:1',
            \ 'c:constants',
            \ 'v:variables',
            \ 't:types',
            \ 'n:interfaces',
            \ 'w:fields',
            \ 'e:embedded',
            \ 'm:methods',
            \ 'r:constructor',
            \ 'f:functions'
            \ ],
            \ 'sro' : '.',
            \ 'kind2scope' : {
            \ 't' : 'ctype',
            \ 'n' : 'ntype'
            \ },
            \ 'scope2kind' : {
            \ 'ctype' : 't',
            \ 'ntype' : 'n'
            \ },
            \ 'ctagsbin'  : 'gotags',
            \ 'ctagsargs' : '-sort -silent'
            \ }
"==============================================================================



"==============================================================================
" 主题配色 
syntax enable
syntax on
" 主题
colorscheme neovim_purple 
"题背景 dark-深色; light-浅色
set background=light
" Set the vertical split character to  a space (there is a single space after '\ ')
set fillchars+=vert:\ 
" highlight VertSplit ctermbg=236 ctermfg=236
"==============================================================================
" vim-go seerting

" vim-go
let g:go_fmt_command = 'goimports'
" new add
let g:go_info_mode='gopls'
let g:go_def_mode='gopls'
let g:go_rename_command='gopls'  " 重命名变量
let g:go_referrers_mode='gopls'
let g:go_list_type="quickfix"
let g:go_version_warning=1
let g:go_highlight_build_constraints = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_operators=1
let g:go_highlight_methods=1
let g:godef_split=2
" 预览悬浮窗
let g:go_doc_popup_window = 1

" push quickfix window always to the bottom
" autocmd FileType qf wincmd J


" end new end
let g:go_autodetect_gopath = 1
" let g:go_bin_path = '$GOBIN'

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1

" Open :GoDeclsDir with ctrl-g
nmap <C-g> :GoDeclsDir<cr>
imap <C-g> <esc>:<C-u>GoDeclsDir<cr>

augroup go
  autocmd!
  autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
augroup END

autocmd Filetype go nmap <buffer> <f4> <Plug>(go-test)
autocmd Filetype go nmap <buffer> <f5> <Plug>(go-build)
autocmd Filetype go nmap <buffer> <f6> <Plug>(go-run)

"==============================================================================


"==============================================================================
" coc.nvim 配置
" Remap keys for gotos
" nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gm <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
"==============================================================================



"==============================================================================
" ale 错误处理配置
let g:ale_set_highlights = 1
let g:ale_set_quickfix = 1
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"打开文件时不进行检查
let g:ale_lint_on_enter = 1

"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
"<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
let g:ale_linters = {
    \ 'go': ['golint', 'go vet', 'go fmt'],
    \ }
"==============================================================================



"==============================================================================
" 页面可视化移动插件 easymotion
nmap ss <Plug>(easymotion-s2)

"==============================================================================
" fzf 全局搜索
map <leader>f :Files<CR>
map <leader>b :Buffers<CR>
let g:fzf_action = { 'ctrl-e': 'edit' }
" 用 leader+ag 搜索当前 cursor 下单词 see: https://github.com/junegunn/fzf.vim/issues/50
nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>
" 其他设置

" Remap keys for gotos
" nmap <silent> gd <Plug>(coc-definition)
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>


" add hightline the y block
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=800}

