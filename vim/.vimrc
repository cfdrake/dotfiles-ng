" Basic Options
let mapleader = ' '

set number
set hidden
set backspace=2
set ruler
set title

set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch

set tabstop=2
set shiftwidth=2
set expandtab

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'cfdrake/vim-carthage'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'cfdrake/vim-pbxproj'
Plug 'sheerun/vim-polyglot'

call plug#end()

" Colors
if has('gui_running')
  colorscheme macvim
else
  colorscheme default
endif

map <leader><leader> :CtrlP<CR>
