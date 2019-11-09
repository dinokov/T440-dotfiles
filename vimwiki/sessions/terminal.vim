" ~/vimwiki/sessions/terminal.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 09 november 2019 at 13:10:40.
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
cd ~/vimwiki
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +16 index.md
badd +662 todo.md
badd +82 ~/.vimrc
badd +2 Zdravje.md
badd +129 ~/Dropbox/startpage/index.html
badd +260 ~/.config/ranger/rc.conf
badd +3 Sluzba.md
badd +7 staro.md
badd +62 9-2019.md
badd +1 ~/userdef.reg
badd +53 ~/.config/ranger/commands.py
badd +1743 ~/.config/ranger/commands_full.py
badd +219 ~/.config/ranger/scope.sh
badd +5 Coding.md
badd +311 Coding\ Jobs.md
badd +17 Computers.md
badd +3752 terminal.md
badd +135 T440.md
badd +133 Zdravje\ splosno.md
badd +12 /etc/intel-undervolt.conf
badd +26 /run/media/damir/3TB/Torrent/Download/Flash\ Of\ Genius/NFO.nfo
badd +96 ~/.i3/config
badd +2 Drupal.md
badd +55 Drupal\ All.md
badd +58 App\ Container\ for\ Drupal\ 8\ in\ Docker.md
badd +32 ~/Containers/php-nginx/7.4/www/ch6-lesson-1-form.php
badd +1 ~/nvim/plugged/vim-snippets/UltiSnips/html.snippets
badd +38 vim\ cheatsheeet.md
badd +282 Osebno.md
badd +377 SL500.md
badd +1 X230.md
argglobal
%argdel
set stal=2
edit index.md
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
setlocal fdl=99
setlocal fml=1
setlocal fdn=3
setlocal nofen
silent! normal! zE
let s:l = 23 - ((22 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 0
lcd ~/vimwiki
tabedit ~/vimwiki/Computers.md
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
let s:l = 6 - ((5 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 011|
lcd ~/vimwiki
tabedit ~/vimwiki/SL500.md
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
let s:l = 357 - ((29 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
357
normal! 030|
lcd ~/vimwiki
tabedit ~/vimwiki/X230.md
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 28 + 28) / 56)
exe '2resize ' . ((&lines * 24 + 28) / 56)
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
let s:l = 31 - ((23 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 0
lcd ~/vimwiki
wincmd w
argglobal
if bufexists("~/vimwiki/Computers.md") | buffer ~/vimwiki/Computers.md | else | edit ~/vimwiki/Computers.md | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=3
setlocal nofen
silent! normal! zE
let s:l = 5 - ((0 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 011|
lcd ~/vimwiki
wincmd w
exe '1resize ' . ((&lines * 28 + 28) / 56)
exe '2resize ' . ((&lines * 24 + 28) / 56)
tabedit ~/vimwiki/terminal.md
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
let s:l = 634 - ((27 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
634
normal! 0
lcd ~/vimwiki
tabedit ~/vimwiki/T440.md
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
let s:l = 2215 - ((26 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2215
normal! 0
lcd ~/vimwiki
tabnext 6
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
tabnext 6
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
