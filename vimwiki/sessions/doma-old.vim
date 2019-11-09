" ~/vimwiki/sessions/doma-old.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 26 oktober 2019 at 18:34:49.
" Open this file in Vim and run :source % to restore your session.

if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
call setqflist([])
let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +15 .profile
badd +3 .bashrc
badd +11 vimwiki/index.md
badd +4 vimwiki/Computers.md
badd +3647 vimwiki/terminal.md
badd +98 .vimrc~
badd +6 vimwiki/Zdravje.md
badd +520 vimwiki/Osebno.md
badd +156 .vimrc
badd +2 vimwiki/Coding.md
badd +2 vimwiki/Drupal.md
badd +16 vimwiki/Drupal\ All.md
badd +1 vimwiki/App\ Container\ for\ Drupal\ 8\ in\ Docker.md
badd +1 NERD_tree_2
badd +1 nvim/plugged/vimwiki/doc/vimwiki.txt
badd +3 vimwiki/Sluzba.md
badd +7 vimwiki/staro.md
badd +461 vimwiki/5-2019.md
badd +156 vimwiki/9-2019.md
badd +1 vimwiki/Coding\ Jobs.md
badd +1 vimwiki/Linux.md
badd +592 vimwiki/T440.md
badd +1 vimwiki/Coding\ Tips.md
badd +2 vimwiki/Biohacking.md
badd +1 vimwiki/Afinil.md
badd +2 ~/vimwiki/Stanovanje.md
badd +0 ~/vimwiki/Race\ lj16A.md
argglobal
%argdel
$argadd vimwiki/index.md
set stal=2
edit NERD_tree_2
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 53 + 28) / 57)
exe 'vert 1resize ' . ((&columns * 31 + 119) / 238)
exe '2resize ' . ((&lines * 53 + 28) / 57)
exe 'vert 2resize ' . ((&columns * 206 + 119) / 238)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=3
setlocal nofen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("nvim/plugged/vimwiki/doc/vimwiki.txt") | buffer nvim/plugged/vimwiki/doc/vimwiki.txt | else | edit nvim/plugged/vimwiki/doc/vimwiki.txt | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=3
setlocal nofen
silent! normal! zE
let s:l = 673 - ((1 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
673
normal! 0
wincmd w
exe '1resize ' . ((&lines * 53 + 28) / 57)
exe 'vert 1resize ' . ((&columns * 31 + 119) / 238)
exe '2resize ' . ((&lines * 53 + 28) / 57)
exe 'vert 2resize ' . ((&columns * 206 + 119) / 238)
tabedit .vimrc
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=3
setlocal nofen
let s:l = 202 - ((50 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
202
normal! 0
tabedit ~/vimwiki/Race\ lj16A.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=3
setlocal nofen
silent! normal! zE
let s:l = 18 - ((17 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 0
tabedit vimwiki/staro.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=3
setlocal nofen
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 012|
tabedit vimwiki/Coding\ Jobs.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=3
setlocal nofen
silent! normal! zE
let s:l = 397 - ((40 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
397
normal! 0
tabedit vimwiki/App\ Container\ for\ Drupal\ 8\ in\ Docker.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=3
setlocal nofen
silent! normal! zE
let s:l = 81 - ((53 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
81
normal! 03|
tabedit vimwiki/Coding\ Tips.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=3
setlocal nofen
silent! normal! zE
let s:l = 780 - ((33 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
780
normal! 084|
tabedit vimwiki/terminal.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=3
setlocal nofen
silent! normal! zE
let s:l = 3565 - ((18 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3565
normal! 0
tabedit vimwiki/Afinil.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=3
setlocal nofen
silent! normal! zE
let s:l = 360 - ((17 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
360
normal! 088|
tabnext 3
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOFcI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 3
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
