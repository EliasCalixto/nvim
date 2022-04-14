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
set numberwidth=1
set clipboard=unnamed
set sw=2


call plug#begin('~/.autoload/plug.vim')

Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'alvan/vim-closetag'
"Plug 'sirver/ultisnips'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'

" themes "

Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'one/lightline.vim'
Plug 'itchyny/lightline.vim'

" "

call plug#end()

let g:tokyonight_transparent = "true"
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

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

" maps "

map <silent> <C-n> :NERDTreeFocus<CR>
nmap <leader>s <Plug>(easymotion-s2)
tnoremap <Esc> <C-\><C-n>
nmap L $
nmap H 0
nmap J 10j
nmap K 10k
nmap <Tab> i<Tab><Esc>

