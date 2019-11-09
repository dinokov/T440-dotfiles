" ~/vimwiki/sessions/learn.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 05 november 2019 at 14:59:18.
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
badd +15 index.md
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
badd +3755 terminal.md
badd +36 T440.md
badd +133 Zdravje\ splosno.md
badd +12 /etc/intel-undervolt.conf
badd +26 /run/media/damir/3TB/Torrent/Download/Flash\ Of\ Genius/NFO.nfo
badd +96 ~/.i3/config
badd +2 Drupal.md
badd +67 Drupal\ All.md
badd +46 App\ Container\ for\ Drupal\ 8\ in\ Docker.md
badd +26 ~/Containers/php-nginx/7.4/www/ch6-lesson-1-form.php
badd +1 ~/nvim/plugged/vim-snippets/UltiSnips/html.snippets
badd +38 vim\ cheatsheeet.md
badd +282 Osebno.md
badd +1 GSM.md
badd +804 Coding\ Tips.md
badd +60 ~/Containers/php-nginx/7.4/www/ch6-lesson-2-form-response.php
badd +1 sessions/learn.vim
badd +1 ~/Containers/php-nginx/7.4/www/ch7-lesson-1-conditionals.php
badd +1 ~/Containers/php-nginx/7.4/www/ch7-lesson-1-conditionals-form.php
badd +867 ~/Containers/php-nginx/7.4/www/php.ini
badd +1 UltiSnips/xml.snippets
badd +1 UltiSnips/xhtml.snippets
badd +14 /run/media/damir/Data/Knjige/Tech-Prirocniki/advice/StefanM/iwd/php/htdocs/ch9-lesson-1-loops.php
badd +35 ~/Containers/php-nginx/7.4/www/ch9-lesson-1-loops.php
badd +40 ~/Containers/php-nginx/7.4/www/ch10-lesson-1-custom-functions.php
badd +22 ~/Containers/php-nginx/7.4/www/Ch11-php-sessions-1.php
badd +1 ~/Containers/php-nginx/7.4/www/Ch11-php-sessions-2.php
badd +1 ~/Containers/php-nginx/7.4/www/ch12-login.php
badd +1 ~/Containers/php-nginx/7.4/www/ch12-login-response.php
badd +1 ~/Containers/php-nginx/7.4/www/ch12-logout.php
badd +1 ~/Containers/php-nginx/7.4/www/ch12-protected-page.php
badd +1 ~/Containers/php-nginx/7.4/www/ch12-styles.css
badd +1 ~/Containers/php-nginx/7.4/docker-compose.yml
badd +1 ~/Containers/php-nginx/7.4/www/phplogin/phplogin-parts1-7-projectfiles/login.php
badd +1 ~/Containers/php-nginx/7.4/www/phplogin/phplogin-parts1-7-projectfiles/logout.php
badd +1 ~/Containers/php-nginx/7.4/www/phplogin/phplogin-parts1-7-projectfiles/members.php
badd +1 ~/Containers/php-nginx/7.4/www/phplogin/phplogin-parts1-7-projectfiles/register.php
badd +1 ~/Containers/php-nginx/7.4/www/phplogin/phplogin-parts1-7-projectfiles/temp.php
badd +1 ~/Containers/php-nginx/7.4/Dockerfile
badd +31 ~/Containers/wordpress-1/docker-compose.yaml
badd +1 ~/Containers/webdevops-Dockerfile-master/README.md
badd +46 ~/Containers/php-nginx/README.md
badd +1 ~/Containers/webdevops-Dockerfile-master/docker/php-nginx/ubuntu-18.04/Dockerfile
badd +1 ~/Containers/webdevops-Dockerfile-master/docker/php-nginx/debian-9/Dockerfile
badd +1 ~/Containers/webdevops-Dockerfile-master/docker/piwik/latest/Dockerfile
badd +1 ~/Containers/webdevops-Dockerfile-master/docker/php-official/5.6/Dockerfile
badd +19 ~/Containers/webdevops-Dockerfile-master/docker/bootstrap/ubuntu-18.04/Dockerfile
badd +1 ~/Containers/webdevops-Dockerfile-master/docker/apache-dev/centos-7/Dockerfile
badd +1 ~/Containers/webdevops-Dockerfile-master/docker/storage/latest/Dockerfile
badd +1 ~/Containers/webdevops-Dockerfile-master/docker/toolbox/latest/Dockerfile
badd +2 Wordpress.md
badd +29 Wordpress\ All.md
badd +1 ~/Containers/webdevops-1604/docker-compose.yml
badd +1 ~/Containers/webdevops-1604/docker/mysql/MySQL-5.6.Dockerfile
badd +1 docker-
badd +1 ~/Containers/webdevops-1604/docker-compose.yml-backup
badd +1 ~/Containers/php7-dockerized/docker-compose.yml
badd +1 ~/Containers/php-nginx/7.4/Dockerfile-original
badd +1 ~/Containers/webdevops-1604/Dockerfile.development
badd +1 ~/Containers/webdevops-1604/docker-manual-build.txt
badd +7 ~/Containers/bradtraversy/wp1/bradtraversy.txt
badd +1 ~/Containers/bradtraversy/wp1/bradtraversy.md
badd +41 ~/Containers/bradtraversy/wp1/docker-compose.yaml
badd +2 ~/Containers/bradtraversy/wp1/bradtraversy.md_
badd +14 ~/Containers/bradtraversy/wp1/docker-compose.yaml_
badd +33 ~/Containers/bradtraversy/wp2/docker-compose.yml
badd +50 ~/Containers/bradtraversy/wp3/Dockerfile
badd +6 ~/Containers/bradtraversy/wp3/docker-compose.yml
badd +225 ~/Containers/bradtraversy/wp4/Dockerfile
badd +8 ~/Containers/bradtraversy/wp4/docker-compose.yml
badd +53 ~/Containers/bradtraversy/wp4/Dockerfile_
badd +49 ~/Containers/bradtraversy/wp4/log.txt
badd +39 ~/Containers/bradtraversy/wp1-docker/docker-compose.yaml
badd +10 ~/Containers/bradtraversy/wp1-docker/www/spl/parts1-7/temp.php
badd +1 ~/Containers/bradtraversy/wp1-docker/www/spl/parts1-7/includes/config.php
badd +16 ~/Containers/bradtraversy/wp1-docker/www/spl/parts1-7/includes/db.php
badd +1 ~/Containers/bradtraversy/wp1-docker/www/spl/parts1-7/views/style.css
badd +1 ~/Containers/bradtraversy/wp1-docker/www/spl/parts1-7/views/v_login.php
badd +11 ~/Downloads/temp/stefan-projects/BeginnersjQuery/beginners_jquery_projectfiles/template/test.html
badd +40 ~/Downloads/temp/stefan-projects/BeginnersjQuery/beginners_jquery_projectfiles/template/style.css
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
lcd ~/vimwiki
tabedit ~/vimwiki/Wordpress\ All.md
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
let s:l = 719 - ((52 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
719
normal! 03|
lcd ~/vimwiki
tabedit ~/vimwiki/Coding\ Tips.md
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
let s:l = 1320 - ((33 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1320
normal! 0
lcd ~/vimwiki
tabedit ~/Containers/bradtraversy/wp1/bradtraversy.md
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
let s:l = 53 - ((52 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
53
normal! 0
lcd ~/vimwiki
tabedit ~/vimwiki/Drupal\ All.md
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
let s:l = 69 - ((46 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
69
normal! 0
lcd ~/vimwiki
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
