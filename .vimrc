"
"
" Use /etc/vimrc for system-wide and $HOME/.vimrc for personal configuration
" (for details see ':help initialization').
"
" Use :help '<option>' to see the documentation for the given option.
"
"
"https://www.shortcutfoo.com/blog/top-50-vim-configuration-options/
set number "Show line numbers on the sidebar
set relativenumber "Show line number on the current line and relative numbers on all other lines
set wildmenu "Display command line’s tab complete options as a menu
set wildmode=longest,list,full
set splitbelow splitright
set cursorline "show white line at cursor location
set autoindent "New lines inherit the indentation of previous lines
"set filetype indent on "Enable indentation rules that are file-type specific
set hlsearch "Enable search highlighting
set ignorecase "Ignore case when searching
set incsearch "Incremental search that shows partial matches
set smartcase "Automatically switch search to case-sensitive when search query contains an uppercase letter
set noerrorbells "Disable beep on errors
set visualbell "Flash the screen instead of beeping on errors
set mouse=a "Enable mouse for scrolling and resizing
set title "Set the window’s title, reflecting the file currently being edited
set titlelen=0
set background=dark "Use colors that suit a dark background

"Code Folding Options
set foldmethod=indent "Fold based on indention levels
set foldnestmax=3 "Only fold up to three nested levels
set nofoldenable "Disable folding by default

" create new tabs
"imap ,t <Esc>:tabnew<CR>
nnoremap <C-t> :tabnew<CR>
"inoremap <C-t> <Esc>:tabnew<CR>
nnoremap <C-right> :tabnext<CR>
nnoremap <C-left> :tabprev<CR>
nnoremap <C-c> :tabclose<CR>

" moving between windows, make shortcuts shorter
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" Installed Plugins
call plug#begin('~/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'bfredl/nvim-miniyank'
Plug 'moll/vim-bbye'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-abolish'
Plug 'amiorin/vim-project'
Plug 'mhinz/vim-startify'
"Plug 'StanAngeloff/php.vim'
"Plug 'stephpy/vim-php-cs-fixer'
" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
"Plug 'roxma/nvim-yarp'
"Plug 'ncm2/ncm2'
"Plug 'ncm2/ncm2-jedi'
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-path'
"Plug 'ncm2/ncm2-cssomni'
"Plug 'ncm2/ncm2-tern'
"Plug 'ncm2/ncm2-ultisnips'
"Plug 'mhartington/nvim-typescript'
"Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
"Plug 'phpactor/ncm2-phpactor'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'wincent/ferret'
Plug 'neomake/neomake'
"Plug 'adoy/vim-php-refactoring-toolbox'
Plug 'mhinz/vim-signify'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'joonty/vdebug'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
"Plug 'hecal3/vim-leader-guide'
Plug 'vimwiki/vimwiki'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
"Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
call plug#end()

set clipboard=unnamed,unnamedplus

"You can also set vim to automatically save files (if you like that sort of thing) in your .vimrc
"This will auto save any time the buffer loses focus
au FocusLost * silent! wa

" save file as sudo
" https://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
cnoremap w!! execute 'silent! write !SUDO_ASKPASS=`which ssh-askpass` sudo tee % >/dev/null' <bar> edit!

"""""""""""""""""""" Deoplete """"""""""""""""""
" https://www.reddit.com/r/neovim/comments/40jiq0/autocomplete_and_snippet_plugin_recommendation/
" https://github.com/Shougo/deoplete.nvim
"
" deoplete config
let g:deoplete#enable_at_startup = 1
" disable autocomplete
""let g:deoplete#disable_auto_complete = 1
"if has("gui_running")
"    inoremap <silent><expr><C-Space> deoplete#mappings#manual_complete()
"else
"    inoremap <silent><expr><C-@> deoplete#mappings#manual_complete()
"endif


" UltiSnips config
"inoremap <silent><expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


"""""""""""""""""""""""""" UltiSnips START""""""""""""""""""""""""""""""""""""""
" https://github.com/sirver/UltiSnips

" Snips not expanding after installing with vim-plug
" https://github.com/SirVer/ultisnips/issues/711
"
"https://jdhao.github.io/2019/04/17/neovim_snippet_s1/
"First, open nvim and use the command 
"     :echo &runtimepath
"This command will print all the runtime paths that Neovim will search.
"According to the documentaion, your custom snippets directory should be put under one of these runtime paths.
"On my Linux machine, the output is like (the full output is omitted):
"  /home/damir/.vim,/home/damir/nvim/plugged/vim-fugitive/,/home/damir/nvim/plugged/nerdtree/,/home/damir/nvim/plugged/nvim-miniyank/,/home/damir/nvim/plugged/vim-bbye/......,/home/damir/.config/nvim
"One of the runtime paths on Linux is /home/damir/.config/nvim. We choose this directory and create a folder named my_snippets under it. Then move the markdown.snippets file you have just created into this folder.
"In the third step, we add the following setting to init.vim:
"  "`my_snippets` is the directory we created before
"  "let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]
"But now nvim finds Ultisnips directory in "/home/damir/nvim/plugged/vim-snippets/ AND "/home/damir/.config/nvim/UltiSnips/  !!
"So you must delete /home/damir/.config/nvim/UltiSnips/ directory and leave only /home/damir/.config/nvim/my_snippets directory there 
" OR move /home/damir/.config/nvim/my_snippets and UltiSnips folder to  /home/damir/nvim/plugged/vim-snippets/  <<<<<-----THIS 
"
"let g:UltiSnipsSnippetDirectories=[$HOME . "./vimwiki", "UltiSnips"]
"let g:UltiSnipsSnippetDirectories=["./vimwiki", "UltiSnips"]
"let g:UltiSnipsSnippetDirectories=['UltiSnips', 'my-snippets']
"let g:UltiSnipsSnippetDirectories=['UltiSnips', '/home/damir/vimwiki/UltiSnips/']
"let g:UltiSnipsSnippetDirectories=[ '/home/damir/vimwiki/UltiSnips/']
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsExpandTrigger="<D>"
"let g:UltiSnipsListSnippets="<c-tab>"
"let g:UltiSnipsListSnippets="<D-Tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

" https://github.com/honza/vim-snippets
"change/add new snippets in templates at /home/damir/vimwiki/UltiSnips
"add autocmd FileType js UltiSnipsAddFiletypes javascript-jasmine in your .vimrc
"autocmd FileType css UltiSnipsAddFiletypes css
autocmd FileType css,html UltiSnipsAddFiletypes css
autocmd FileType php,html UltiSnipsAddFiletypes html_minimal
autocmd FileType php,html UltiSnipsAddFiletypes html
"autocmd FileType js UltiSnipsAddFiletypes javascript
autocmd FileType js,html,php UltiSnipsAddFiletypes javascript
autocmd FileType json UltiSnipsAddFiletypes json
autocmd FileType md UltiSnipsAddFiletypes markdown
autocmd FileType php UltiSnipsAddFiletypes php-phpspec
"autocmd FileType php UltiSnipsAddFiletypes php
autocmd FileType php,html UltiSnipsAddFiletypes php
autocmd FileType py UltiSnipsAddFiletypes python
autocmd FileType sh UltiSnipsAddFiletypes sh
autocmd FileType txt UltiSnipsAddFiletypes vim
autocmd FileType css,html,php UltiSnipsAddFiletypes xhtml
"autocmd FileType html UltiSnipsAddFiletypes xhtml
autocmd FileType xml UltiSnipsAddFiletypes xml



"""""""""""""""""""""""""""""  Leader Key """"""""""""""""""""""""""""""""""""""""""""""""

"If you add set showcmd to your vimrc then you will see your <leader> key appear in the bottom right hand corner of vim (to the left of the cursor location) 
"and perhaps more importantly you will see it disappear when the time out happens.
"https://stackoverflow.com/questions/1764263/what-is-the-leader-in-a-vimrc-file#1764336
"If you want to check what your <leader> is, use :echo mapleader or :let mapleader. If undefined, then it will use the default, which is a backslash "\"
set showcmd

"https://harings.be/vim-as-an-alternative-to-phpstorm-r8z7l
"" Leader key <SPACE>
let mapleader=" "
nnoremap <Space> <Nop>
""""""""""""""""""""""""""""""""""""""""""""""""





""""""""""""""""""""""""""""""""""""  Highlight all search pattern matches """""""""""""""""""""""""""""""""""""""""""""""""""""
" https://vim.fandom.com/wiki/Highlight_all_search_pattern_matches

" Highlighting search matches
" To highlight all search matches, set the following option:
" :set hlsearch
" With the defaults, setting this option causes all text matching the current search to be highlighted using the Search highlight group, which adds a yellow background to the current highlighting.
" See :help hl-Search, or type :hi Search to see what color you have it set to. You can easily change the default highlighting with, for example, :hi Search guibg=LightBlue.
"
" To disable the highlighting temporarily, enter (this is a command, not an option):
"
" :nohlsearch
"
" This command (which can be abbreviated to :noh) removes the highlighting for the current search. The highlighting returns for the next search.
"
" If you do this often, put a mapping in your vimrc, like this:
"
" Press Space to turn off highlighting and clear any message already displayed.
" :nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
"
" To disable highlighting completely, even after a subsequent search, use:
"
" :set nohlsearch
"
" If you want to be able to enable/disable highlighting quickly, you can map a key to toggle the hlsearch option:
"
" Press F4 to toggle highlighting on/off, and show current value.
 :noremap <F4> :set hlsearch! hlsearch?<CR>
"
" Or, press return to temporarily get out of the highlighted search.
 :nnoremap <CR> :nohlsearch<CR><CR>


""""""""""""""""""""""""""""""  Sessions """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Suppose you are editing along, and it is the end of the day.  You want to quit work and pick up where you left off the next day.  You can do this by saving your editing session and restoring it the next day.
" The following command creates a session file:
"	:mksession ~/vimwiki/sessions/doma-session.vim
" Later if you want to restore this session, you can use this command:
"	:source ~/vimwiki/sessions/doma-session.vim
" If you want to start Vim and restore a specific session, you can use the following command:
"	vim -S ~/vimwiki/sessions/doma-session.vim
" The obvious way to use sessions is when working on different projects. 
" Suppose you store your session files in the directory "~/.config/nvim".  You are currently working on the "secret" project and have to switch to the "boring" project:
"	:wall
"	:mksession! ~/.config/nvim/secret.vim
"	:source ~/.config/nvim/boring.vim
"
" https://stackoverflow.com/questions/1642611/how-to-save-and-restore-multiple-different-sessions-in-vim#1642641
" If you do not specify a session file name, it will default to writing to and reading from Session.vim.
" So if you only want to have only one session saved in your current directory, you can use :mksession or :mks from vim to save your current session, and just vim -S to open it back up.
"
""""""""""""""""""""""""""""" xolox/vim-session """""""""""""""""""""""""""""""""""
"Extended session management for Vim (:mksession on steroids) http://peterodding.com/code/vim/session/
"https://stackoverflow.com/questions/1642611/how-to-save-and-restore-multiple-different-sessions-in-vim#1642641
"https://www.youtube.com/watch?v=9vSER0O0asc

let g:session_directory = "~/vimwiki/sessions"
let g:session_autoload = "no"
let g:session_autosave = "yes"
let g:session_autosave_periodic = 5
let g:session_command_aliases = 1

nnoremap <leader>so :OpenSession 
nnoremap <leader>ss :SaveSession 
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>
nnoremap <leader>sv :ViewSession<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://vim.fandom.com/wiki/Working_with_multiple_sessions
" before quitting Vim, save everything:
" :SetSession "PROJ1"
" functions bellow will offer you sessions to restore when opening Vim

"au VimLeave * call VimLeave()
"au VimEnter * call VimEnter()
"let g:PathToSessions = $HOME . "/vimwiki/sessions/"
"
"function! VimEnter()
"  if argc() == 0
"    let LoadLastSession = confirm("Restore last session?", "&Yes\n&No")
"    if LoadLastSession == 1
"      exe "source " . g:PathToSessions . "/LastSession.vim"
"    else
"      call LoadSessions()
"    endif
"  endif
"endfunction
"
"function! LoadSessions()
"  let result = "List of sessions:"
"  let sessionfiles = glob(g:PathToSessions . "/*.vim")
"  while stridx(sessionfiles, "\n") >= 0
"    let index = stridx(sessionfiles, "\n")
"    let sessionfile = strpart(sessionfiles, 0, index)
"    let result = result . "\n " . fnamemodify(sessionfile, ":t:r")
"    let sessionfiles = strpart(sessionfiles, index + 1)
"  endwhile
"  let result = result . "\n " . fnamemodify(sessionfiles, ":t:r")
"  let result = result . "\n" . "Please enter a session name to load (or empty to start normally):"
"  let sessionname = input(result)
"  if sessionname != ""
"    exe "source " . g:PathToSessions . "/" . sessionname . ".vim"
"  endif
"endfunction
"
" A command for setting the session name
"com! -nargs=1 SetSession :let g:SessionFileName = g:PathToSessions . "/" . <args> . ".vim"
" .. and a command to unset it
"com! -nargs=0 UnsetSession :let g:SessionFileName = ""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""" NerdTree START """""""""""""""""""""""""""""""""""""""""""
"
"https://github.com/scrooloose/nerdtree
"
"How can I map a specific key or shortcut to open NERDTree?
map <C-n> :NERDTreeToggle<CR>
"How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"""""""""""""""""" NerdTree END """""""""""""""""""""""""""""""""""""""""""





"""""""""""""""""""""""""" VimWiki START """"""""""""""""""""""""""""""


let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

set nocompatible
filetype plugin on
syntax on

let g:vimwiki_ext2syntax = {'.md':'markdown','.markdown':'markdown','.mdown':'markdown'}

nmap <Leader>we <Plug>VimwikiSplitLink
nmap <Leader>wq <Plug>VimwikiVSplitLink
"nmap <Leader>wt <Plug>VimwikiTabnewLink

"""""""""""""""""""""""""" VimWiki END """"""""""""""""""""""""""""""

"""""""""""""""""""""""""" InstantMarkdown START """"""""""""""""""""""""""""""

"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
let g:instant_markdown_logfile = '/home/damir/vimwiki/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
let g:instant_markdown_browser = "firefox --new-window"
let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1

map <Leader>md :InstantMarkdownPreview<CR>

""""""""""""""""""""""""""  InstantMarkdown END """"""""""""""""""""""""""""""













