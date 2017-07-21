" Reset Vim configuration to sane defaults
set nocompatible

" Use ZSH shell
set shell=/usr/local/bin/zsh

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'
Plug 'jacoborus/tender.vim'
Plug 'lifepillar/pgsql.vim'
Plug 'leafgarland/typescript-vim'
Plug 'isruslan/vim-es6'
Plug 'eslint/eslint'
Plug 'tpope/vim-surround'
call plug#end()

" Setup 'tender' theme
if (has("termguicolors"))
   set termguicolors
endif
syntax enable
colorscheme tender
let g:airline_theme = 'tenderplus'

" Display line numbers
set number

" Display the last command in bottom bar
set showcmd

" Always display airline
set laststatus=2

" Prevent excess redraws for faster macros and plugins
set lazyredraw

" Highlight current line
set cursorline

" Use a visual bell instead of an auditory beep for errors
set visualbell

" Display cursor position on last line of window
set ruler

" Undo config
set undodir=~/.vim/undo
set undofile
set undolevels=1000
set undoreload=10000

" Allow mouse to set cursor position in any mode
set mouse=a

" Use shared system clipboard
set clipboard=unnamed

" Autocomplete for Vim commands
" First tab completes to longest string and will show the match list
" Second tab will complete to the first full match and open the wildmenu
set wildmenu
set wildmode=longest:list,full

" Search as you type and highlight matches
set incsearch
set hlsearch

" Move Vim file backups created while editing out of current directory
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Indentation config
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set shiftround

" GitGutter config
let g:gitgutter_sign_column_always=1
let g:gitgutter_eager=1
let g:gitgutter_realtime=1
let g:gitgutter_max_signs=512

" Attempt to automatically determine indentation for files
filetype indent plugin on

" Ignore specified folders and files for CtrlP
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\|node_modules$',
  \ 'file': '\.DS_Store$'
  \ }
