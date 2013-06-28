" Following lines added by drush vimrc-install on Thu, 09 May 2013 19:47:54 +0000.
set nocompatible
call pathogen#infect('/Users/paul/.drush/vimrc/bundle')
call pathogen#infect('/Users/paul/.vim/bundle')
" End of vimrc-install additions.
"PATHOGEN
call pathogen#infect()

"SOURCE
nmap <leader>]e :e $MYVIMRC<CR>
nmap <leader>]s :source $MYVIMRC<CR>
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
set colorcolumn=80
"status bar
set laststatus=2

"KEYMAPPING
nmap <Tab> <leader>
"navigation
nmap j gj
nmap k gk
"buffers
nmap ; :CtrlPBuffer<CR>
nmap <leader>bd :Kwbd<CR>
nmap <leader>vs :vsplit<CR>
nmap <C-L> <C-W>l
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
"ctrlp
nmap <leader>p :CtrlP .<CR>
nmap <leader>fp :CtrlPClearCache<CR>
"registers
nmap <leader>" :reg<CR>
"search
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap <leader>q :nohlsearch<CR>
"nerdtree
nmap <leader>e :NERDTreeToggle<CR>
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
if !exists("b:unaryTagsStack") || exists("b:closetag_html_style")
    if &filetype == "html" || exists("b:closetag_html_style")
        let b:unaryTagsStacktack="area base br dd dt hr img input link meta param"
    else " for xml and xsl
        let b:unaryTagsStack=""
    endif
endif

if !exists("b:unaryTagsStack")
    let b:unaryTagsStack=""
endif

"CTRL-P
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|css|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'

"NERDREE
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDChristmasTree=1
let NERDTreeWinSize=40

"COLORS
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif
colors zenburn

"SESSIONS
let g:session_directory = "~/.vimsessions"
let g:session_autosave = 'yes'
let g:session_autosave_periodic = 1
let g:session_default_to_last = 'yes'
let g:session_autoload = 'yes'
nmap <leader>so :OpenSession<CR>
nmap <leader>ss :SaveSession 
nmap <leader>sv :ViewSession<CR>
