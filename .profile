#
# ~/.profile
#
#

[[ "$XDG_CURRENT_DESKTOP" == "KDE" ]] || export QT_QPA_PLATFORMTHEME="qt5ct"

[[ -f ~/.extend.profile ]] && . ~/.extend.profile

BROWSER=/usr/bin/firefox
RTV_BROWSER=/usr/bin/firefox
RTV_EDITOR=/usr/bin/kate
RTV_URLVIEWER=/usr/bin/xsel

alias wiki = 'nvim ~/vimwiki/index.md'


