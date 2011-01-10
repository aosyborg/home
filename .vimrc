" Indenting
set autoindent          "Auto indenting
set cindent             "auto un-indent close brackets
set cinoptions=>4       "one tab only
set tabstop=4           "Tab width
set softtabstop=4       "Soft tabstop
set shiftwidth=4        "how much to shift text when formatting
set textwidth=120       "Text width
set expandtab           "use spaces instead of tabs

" Search settings
set nohlsearch      "Don't highlight searches
set ignorecase      "for pattern matching
set smartcase       "if I use uppercase, match case sensitive
set incsearch       "show us matches immediately

" Code recognition
syntax on           "use syntax highlighting
set number          "show line numbers
set tags=tags;/     "search for 'tags' file all the way up the directory tree

" mouse support
set mouse=a             "Use the mouse in all modes
set mousemodel=popup    "Use a GUI-style context menu

" Special characters
set list                "show some special characters
set listchars=tab:>-    "show tabs
set listchars+=trail:.  "show trailing spaces
set fileformats=unix    "show DOS line endings

" Color scheme
set t_Co=256
colorscheme railscasts
set cul                                       " highlight current line

" Remap jj to escape in insert mode
inoremap jj <Esc>
nnoremap JJJJ <Nop>

" Center screen on next search term
map N Nzz
map n nzz

" Because I can't type
:command WQ wq
:command Wq wq
:command W w
:command Q q

" Plugins
source ~/.vim/plugin/matchit.vim
source ~/.vim/plugin/php-doc.vim
map <C-o> :set paste<CR>:exe PhpDoc()<CR>:set nopaste<CR>

" Misc stuff
set background=dark             "We have a dark background
set exrc                        "Make sure we run the vimrc
set secure                      "don't allow command line executing in vimrc
set nocompatible                "all vim features!
set showcmd                     "show commands in status line
set confirm                     "Prompt on errors
set visualbell t_vb=            "Don't ring any bells
set title                       "Let VIM manage the term title
set titlestring=%t\ %y\ %r\ %m  "Set a useful term title
set hidden                      "Better buffer management
set encoding=utf-8              "Use UTF-8 as standard encoding
set backspace=indent,eol,start  "Make backspace more flexible
set ruler                       "Always show current positions along the bottom
set formatoptions=torc          "Do some neat comment stuff for us
set directory=/tmp              "Keep swap files in /tmp

" Templates
autocmd BufNewFile *.php      source /home/david/.vim/templates/php_header
autocmd bufnewfile *.php exe "1," . 10 . "g/File Name:.*/s//File Name: " .expand("%")
autocmd bufnewfile *.php exe "1," . 10 . "g/Creation Date:.*/s//Creation Date: " .strftime("%c")
autocmd Bufwritepre,filewritepre *.php execute "normal ma"
