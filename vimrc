set autoindent          "Auto indenting
set cindent             "auto un-indent close brackets
set cinoptions=>4       "one tab only
set tabstop=4           "Tab width
set softtabstop=4       "Soft tabstop
set shiftwidth=4        "how much to shift text when formatting
set textwidth=90       "Text width
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

" Special characters
set list                "show some special characters
set listchars=tab:>-    "show tabs
set listchars+=trail:.  "show trailing spaces
set fileformats=unix    "show DOS line endings

" Color scheme
set t_Co=256
colorscheme railscasts
au BufNewFile,BufRead *.phtml set syntax=php
au BufNewFile,BufRead *.ctp set syntax=php
au BufNewFile,BufRead *.less set filetype=less
au BufRead,BufNewFile *.twig set filetype=htmljinja
set cul                 " highlight current line

" Remap jj/kk to escape in insert mode
inoremap kk <Esc>
nnoremap KKKK <Nop>
inoremap jj <Esc>
nnoremap JJJJ <Nop>

" Center screen on next search term
:nmap N Nzz
:nmap n nzz

" Save and run scripts
:map <F5> <Esc>:w<CR>:!python %:p<CR>
:map <F6> <Esc>:w<CR>:!php %:p<CR>

" README file help
:imap <leader><CR> <Esc>YpVr=o<CR>

" Because I can't type
:command WQ wq
:command Wq wq
:command W w
:command Q q

" Sudo write files with :w!!
cmap w!! %!sudo tee > /dev/null %

" Auto save when you lose focus
au FocusLost * :wa

" Move between splits with Ctrl+W, hjkl
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Start scrolling when within 5 lines near the top/bottom
set scrolloff=5

" Plugins
filetype plugin on " JSLint
source ~/.vim/plugin/matchit.vim
source ~/.vim/plugin/php-doc.vim
source ~/.vim/plugin/hexHighlight.vim
map <C-o> :set paste<CR>:exe PhpDoc()<CR>:set nopaste<CR>
map <F4> :TlistToggle<CR>

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
set directory=$HOME/.vim/tmp    "Keep swap files in tmp dir

" Right column bar
" set colorcolumn=90

"Delete trailing white space
func! DeleteTrailingWS()
  exe  "normal mz"
  retab
  %s/\s\+$//ge
  %s/\n\{3,\}/\r\r/ge
  exe  "normal `z"
endfunc
autocmd  BufWrite  *.php :call  DeleteTrailingWS()
autocmd  BufWrite  *.phtml :call  DeleteTrailingWS()
autocmd  BufWrite  *.ctp :call  DeleteTrailingWS()
autocmd  BufWrite  *.js :call  DeleteTrailingWS()
autocmd  BufWrite  *.css :call  DeleteTrailingWS()
autocmd  BufWrite  *.cc :call  DeleteTrailingWS()
autocmd  BufWrite  *.h :call  DeleteTrailingWS()
autocmd  BufWrite  *.tmx :call  DeleteTrailingWS()
autocmd  BufWrite  *.py :call  DeleteTrailingWS()
autocmd  BufWrite  *.twig :call  DeleteTrailingWS()
autocmd  BufWrite  *.sql :call  DeleteTrailingWS()
