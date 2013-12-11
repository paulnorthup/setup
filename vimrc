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
"Unite!
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>ft :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>ff :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>fr :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>fo :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>fy :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap ; :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction
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
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif
colors solarized

"RESIZING
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif

"PASTE
set pastetoggle=<leader>p
