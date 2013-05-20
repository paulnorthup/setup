" ~/dotfiles/vim/sessions/drupal.vim:
" Vim session script.
" Created by session.vim 2.3 on 20 May 2013 at 10:25:45.
" Open this file in Vim and run :source % to restore your session.

set guioptions=
silent! set guifont=
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'light'
	set background=light
endif
if !exists('g:colors_name') || g:colors_name != 'zenburn' | colorscheme zenburn | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/dotfiles
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/projects/drupal/startupinstitute/sites/all/themes/startup-institute/sass/_homepages.scss
badd +1 ~/projects/drupal/startupinstitute/sites/all/themes/startup-institute/sass/pages.scss
badd +2 ~/projects/drupal/startupinstitute/sites/all/themes/startup-institute/templates/page--front.tpl.php
silent! argdel *
edit ~/projects/drupal/startupinstitute/sites/all/themes/startup-institute/sass/_homepages.scss
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
" argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
30
silent! normal! zo
35
silent! normal! zo
41
silent! normal! zo
46
silent! normal! zo
48
silent! normal! zo
50
silent! normal! zo
53
silent! normal! zo
57
silent! normal! zo
61
silent! normal! zo
63
silent! normal! zo
65
silent! normal! zo
68
silent! normal! zo
72
silent! normal! zo
77
silent! normal! zo
79
silent! normal! zo
82
silent! normal! zo
85
silent! normal! zo
91
silent! normal! zo
91
silent! normal! zo
95
silent! normal! zo
97
silent! normal! zo
100
silent! normal! zo
104
silent! normal! zo
95
silent! normal! zo
97
silent! normal! zo
100
silent! normal! zo
104
silent! normal! zo
let s:l = 88 - ((27 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
88
normal! 031|
lcd ~/projects/drupal/startupinstitute/sites/all/themes/startup-institute
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
tabnext 1
1wincmd w
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
