set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'gmarij/Vundle.vim'
Plugin 'rking/ag.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Yggdroot/indendtLine'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-markdown'
Plugin 'ShowMarks'
Plugin 'Lokaltog/vim-powerline'
Plugin 'othree/html5.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-syrround'
Plugin 'tpope/vim-haml'


call vundle#end()
filetype plugin indent on

syntax enable

"SOURCE
nmap <leader>s :source $MYVIMRC<CR>
"GENERAL
set backspace=2
set splitbelow
set splitright
"syntax
syntax on
filetype plugin on
filetype plugin indent on
au BufRead,BufNewFile *.scss set filetype=scss
"window
set number
set expandtab tabstop=2 shiftwidth=2 softtabstop=2
"swp and backup
set dir=~/.vimtmp
set backup
set backupdir=~/.vimbackup
"cursor
set cursorline
set cursorcolumn
"status bar
set laststatus=2

"KEYMAPPING
nmap <Tab> <leader>
"navigation
nmap j gj
nmap k gk
"buffers
nmap <leader>bd :Kwbd<CR>
nmap <leader>vs :vsplit<CR>
nmap <leader>hs :split<CR>
nmap <C-L> <C-W>l
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
"CtrlP!
nmap ; :CtrlPBuffer<CR>
nmap ' :CtrlP<CR>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

"registers
nmap <leader>" :reg<CR>
"search
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap <leader>q :nohlsearch<CR>
"nerdtree
nnoremap <leader>e :NERDTreeToggle<CR>
"tab spacing
nmap <leader>t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
nmap <leader>T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
nmap <leader>M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
nmap <leader>m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
nmap <leader>w :setlocal wrap!<CR>:setlocal wrap?<CR>
"markdown
nmap <leader>dm :%!/usr/local/bin/markdown --html4tags<CR>
"syntastic
nmap <leader>st :SyntasticToggleMode<CR>
nmap <leader>sc :SyntasticCheck<CR>
"Gundo
map <leader>gut :GundoToggle<CR>
"CloseTag.vim
let b:unaryTagsStack=""

if !exists("b:unaryTagsStack")
    let b:unaryTagsStack=""
endif

"NERDREE
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDChristmasTree=1
let NERDTreeWinSize=40

"COLORS
set t_Co=256
colorscheme zenburn
colors zenburn

"RESIZING
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif

"PASTE
set pastetoggle=<leader>p

"PyMode
let g:pymode_lint_ignore = "E501,W"
