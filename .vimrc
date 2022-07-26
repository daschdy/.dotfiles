"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug-Ins
"""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

" {{ Basic }} 
    Plug 'scrooloose/nerdtree'
    Plug 'itchyny/lightline.vim'

" {{ Editing }}
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off

set number relativenumber       " Show line numbers
set showmatch                   " Highlight matching brace
set hlsearch                    " Highlight all search results
set ignorecase                  " Ignore capital letters during search
syntax enable                   " Syntax highlighting
set t_Co=256

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab Size
"""""""""""""""""""""""""""""""""""""""""""""""""""""

set tabstop=4
set shiftwidth=4
set expandtab
set smartindent                 " Enable smart-ident
set smarttab                    " Enable smart-tabs

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status Line
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
     \ 'colorscheme': 'darcula',
     \ }

set laststatus=2                " Always show statusline

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap Keys
""""""""""""""""""""""""""""""""""""""""""""""""""""
"":imap ii <Esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDtree
""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Split View
""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" adjusting size
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

