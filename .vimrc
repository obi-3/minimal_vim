""" Options
" Unload 
let g:did_install_default_menus=1
let g:did_install_syntax_menu  =1
let g:did_indent_on            =1
let g:loaded_2html_plugin      =1
let g:loaded_getscript         =1
let g:loaded_getscriptPlugin   =1
let g:loaded_gzip              =1
let g:loaded_logiPat           =1
let g:loaded_logipat           =1
let g:loaded_man               =1
let g:loaded_matchit           =1
let g:loaded_matchparen        =1
"let g:loaded_netrw             =1
"let g:loaded_netrwFileHandlers =1
"let g:loaded_netrwPlugin       =1
"let g:loaded_netrwSettings     =1
let g:loaded_remote_plugins    =1
let g:loaded_rrhelper          =1
let g:loaded_shada_plugin      =1
let g:loaded_spellfile_plugin  =1
let g:loaded_sql_completion    =1
let g:loaded_tar               =1
let g:loaded_tarPlugin         =1
let g:loaded_tutor_mode_plugin =1
let g:loaded_vimball           =1
let g:loaded_vimballPlugin     =1
let g:loaded_zip               =1
let g:loaded_zipPlugin         =1
let g:skip_loading_mswin       =1
let g:vimsyn_embed             =1
" Base
syntax enable
colorscheme default
set ttimeoutlen=10
set belloff=all
set mouse=a
set encoding=utf-8
set history=1000
set clipboard+=unnamed
set backspace=indent,eol,start
set virtualedit+=block
set nocompatible
" File
set noswapfile
set nobackup
set hidden
set autoread
" vim.o.undofile
" vim.opt.undodir=os.getenv("HOME") .. '/.local/share/nvim/undo'
" Display
set title
set termguicolors
set nonumber
set cmdheight=1
set laststatus=1
set showmode
set showmatch
set matchtime=1
set showcmd
set wildmenu
set wildmode=list:longest,full
" Tab & Indent 
set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab "expand tab to spaces
set smarttab
set autoindent
set smartindent
set wrap
set linebreak
set showbreak=+\ 
set breakindent
" Search
set wrapscan 
set ignorecase
set smartcase 
set incsearch 
set hlsearch 

""" Commands
command -count=4 Tab call Tab(<count>)
function Tab(count)
    execute 'set shiftwidth=' . a:count
    execute 'set tabstop=' . a:count
endfunction

""" Mappings 
let g:mapleader=" "
" Normal mode 
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap H ^
nnoremap L $
nnoremap s <Nop>
nnoremap s/ :%s/
nnoremap <Esc><Esc> :noh<CR>
nnoremap <Leader>e :E<CR>
nnoremap <Leader>j :bp<CR>
nnoremap <Leader>k :bn<CR>
nnoremap <Leader>d :bwipe<CR>
nnoremap <Leader>r :source $MYVIMRC<CR>
nnoremap <Leader>c :e $MYVIMRC<CR>
nnoremap <Leader>n :set number<CR>
nnoremap <Leader>N :set nonumber<CR>
nnoremap <Leader>2 :Tab 2<CR>
nnoremap <Leader>4 :Tab 4<CR>

inoremap <C-f> <right>
inoremap <C-b> <left>
inoremap <C-j> <C-o>o
inoremap <C-y> <C-o>p
inoremap <C-k> <C-o>D
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>

vnoremap j gj
vnoremap k gk
vnoremap gj j
vnoremap gk k

cnoremap <C-f> <right>
cnoremap <C-b> <left>

if has('vim_starting')
    "挿入モード時に非点滅の縦棒タイプのカーソル
    let &t_SI .= "\e[6 q"
    "ノーマルモード時に非点滅のブロックタイプのカーソル
    let &t_EI .="\e[2 q"
    "置換モード時に非点滅の下線タイプのカーソル
    let &t_SR .="\e[4 q"
endif
