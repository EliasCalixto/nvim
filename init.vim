" this is my init.vim "

syntax on

set number
set relativenumber
set showcmd
set ruler
set showmatch
set laststatus=2
set sw=2
let mapleader = " "
set backspace=2


call plug#begin('~/.config/nvim/plugged')



" themes "

Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'one/lightline.vim'
Plug 'itchyny/lightline.vim'

" "

call plug#end()

colorscheme tokyonight

let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'helloworld' ] ]
      \ },
      \ 'component': {
      \   'helloworld': 'darkesthj'
      \ },
      \ }

