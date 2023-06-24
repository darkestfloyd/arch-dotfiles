set path+=**
set number
set relativenumber
set termguicolors
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
inoremap jk <Esc>

" PlugInstall after installing vim plugged
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-commentary'
Plug 'jpalardy/vim-slime'
" Plug 'scrooloose/nerdtree'
" Plug 'jalvesaq/Nvim-R'
" Plug 'Shougo/deoplete.nvim'
" Plug 'zchee/deoplete-clang'
call plug#end()

let g:gruvbox_italic = '(1)'
colorscheme gruvbox
set background=dark

" R and deoplete stuff
" let R_assign = 2
" let g:deoplete#enable_at_startup=1
" let g:deoplete#sources#clang#libclang_path="/usr/lib/libclang.so"
" let g:deoplete#sources#clang#clang_header="/usr/lib/clang"

set tabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set cindent

set colorcolumn=100

" Tab navigation
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-j> :tabnew<CR>
inoremap <C-j> <Esc> :tabnew<CR>

" _ also separates words
set iskeyword-=_

" vim-slime
" # set output to tmux
let g:slime_target = "tmux"
" fix for tmux>2.2
let g:slime_paste_file = expand("$HOME/.slime_paste")
" or maybe...
let g:slime_paste_file = tempname()
