set shell=bash		  " Pathogen plugin loader requires vanilla bash not zsh
execute pathogen#infect() 
syntax on		  " Enable basic syntax highlighting
filetype plugin indent on " Try to autodetect indentation
set nocompatible	  " Safely reset all configuration options
set number		  " Display line numbers on the left
set mouse=a	          " Allow cursor to be moved with the mouse
set visualbell	          " Use a visual bell instead of beeping for invalid actions
set confirm	          " Instead of failing a command because of unsaved changes, prompt to save before continuing
set ruler	          " Display the cursor position on the last line of window
set autoindent	          " Default indentation of current line
set ignorecase	          " Case insensitive search
set smartcase	          " Case sensitive search only when using uppercase letters
set hlsearch	          " Highlight searches
set showcmd	          " Show partial commands on the last line of window
set wildmenu	          " Better command-line auto-completion
set laststatus=2          " Always display status line on window
set cmdheight=2		  " Sets command window height to 2 lines
let g:syntastic_javascript_checkers=['jscs']
let g:syntastic_sql_checkers=["sqlint"]
