set nocompatible          " Safely reset all configuration options
set shell=/bin/bash       " Pathogen plugin loader requires vanilla bash not zsh
execute pathogen#infect()
syntax on                 " Enable basic syntax highlighting
filetype plugin indent on " Try to autodetect indentation
colorscheme peter         " Name of theme in .vim/colors
set background=dark       " Easier on the eyes
set number                " Display line numbers on the left
set mouse=a               " Allow cursor to be moved with the mouse
set visualbell	          " Use a visual bell instead of beeping for invalid actions
set confirm               " Instead of failing a command because of unsaved changes, prompt to save before continuing
set ruler                 " Display the cursor position on the last line of window
set autoindent	          " Default indentation of current line
set ignorecase	          " Case insensitive search
set smartcase             " Case sensitive search only when using uppercase letters
set hlsearch              " Highlight searches
set showcmd               " Show partial commands on the last line of window
set wildmenu              " Better command-line auto-completion
set laststatus=2          " Always display status line on window
set cmdheight=2           " Sets command window height to 2 lines
set undodir=~/.vim/undodir
set undolevels=1000 undoreload=10000
set undofile
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set shiftround
set hidden                " Allow multiple files within same window
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_javascript_checkers=["jshint","jscs"]
let g:syntastic_sql_checkers=["sqlint"]
let g:syntastic_check_on_open=1
let g:gitgutter_sign_column_always=1
map [l :lprev             " Jump to previous linter error
map ]l :lnext             " Jump to next linter error
map Y y$                  " Make Y act like D and C - yank until EOL
