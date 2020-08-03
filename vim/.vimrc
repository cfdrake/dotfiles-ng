" Basic Options
let mapleader = " "

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

Plug 'cfdrake/vim-carthage'
Plug 'airblade/vim-gitgutter'
Plug 'cfdrake/vim-pbxproj'
Plug 'sheerun/vim-polyglot'

call plug#end()

"Colors

if has("gui_running")
  colorscheme macvim
else
  colorscheme default
endif

" Bindings
nnoremap <leader>f :files<CR>
nnoremap <leader>b :buffers<CR>
