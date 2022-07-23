" #####################
" # Basis Vim Configs #
" #####################

" Set compatibility
set nocompatible

" Automatically wrap text
set wrap

" Encoding
set encoding=utf-8

" Status bar
set laststatus=2

" Show line numbers
set number

" Highlight matching brace
set showmatch

" Highlight all search results
set hlsearch

" Enable smart-ident
set smartindent

" Enable smart-tabs
set smarttab

" Enable type file detection
filetype on

" Syntax highlighting
syntax on

" Ignore capital letters during search
set ignorecase

" ##############
" # Some Plugs #
" ##############

call plug#begin('~/.vim/plugged')
"{{ Configuring NerdTree
Plug 'scrooloose/nerdtree'
" ---> to hide unwanted files <---
let NERDTreeIgnore = [ '__pycache__', '\.pyc$', '\.o$', '\.swp',  '*\.swp',  'node_modules/' ]
" ---> show hidden files <---
let NERDTreeShowHidden=1
" ---> autostart nerd-tree when you start vim <---
"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:stdn_in") | NERDTree | endif
" ---> toggling nerd-tree using Ctrl-N <---
map <C-n> :NERDTreeToggle<CR>
"}}
"{{ TMux - Vim integration
Plug 'christoomey/vim-tmux-navigator'
"}}
"{{ Markdown-Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"}}
call plug#end()
